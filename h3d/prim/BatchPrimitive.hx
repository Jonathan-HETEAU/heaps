package h3d.prim;

/**
	A growable list of byte chunks, used to accumulate geometry data before uploading it.
**/
class BytesArray {
	/**
		The chunks.
	**/
	public var bytes(default, null) : Array<haxe.io.Bytes>;
	/**
		The number of bytes used in each chunk.
	**/
	public var pos(default, null) : Array<Int>;
	/**
		The total number of bytes allocated.
	**/
	public var totalSize(default, null) : Int;
	var maxSize : Int;

	/**
		Creates the array with a first chunk of `bSize` bytes.
		@param maxSize The maximum size of a chunk, or a negative value for no limit.
	**/
	public function new(bSize: Int, maxSize : Int) {
		if ( bSize > maxSize && maxSize > 0 )
			throw "assert";
		this.maxSize = maxSize;
		bytes = [haxe.io.Bytes.alloc(bSize)];
		pos = [0];
	}

	/**
		Reserves `bSize` bytes and returns the chunk and position to write them at.
	**/
	public function alloc(bSize : Int) : { b : haxe.io.Bytes, pos : Int } {
		if ( bSize > maxSize && maxSize > 0 )
			throw "assert";
		totalSize += bSize;
		var bIdx = bytes.length - 1;
		var b = bytes[bIdx];
		var bStart = pos[bIdx];
		var bNeeded = bStart + bSize;
		if ( bNeeded > b.length ) {
			var size = b.length * 2;
			if ( maxSize > 0 && size > maxSize )
				size = maxSize;
			if ( size < bSize )
				size = bSize;
			b = bytes[++bIdx] = haxe.io.Bytes.alloc(size);
			bNeeded = bSize;
			bStart = 0;
		}
		pos[bIdx] = bNeeded;
		return { b : b, pos : bStart };
	}

	/**
		Uploads all the chunks to `buffer`, starting at the element `vStart`.
	**/
	public function upload( buffer : h3d.Buffer, vStart : Int = 0 ) {
		for ( i => b in bytes ) {
			var vCount = Std.int(pos[i] / buffer.format.strideBytes);
			buffer.uploadBytes(b, 0, vCount, vStart);
			vStart += vCount;
		}
	}
}

/**
	A model packed in a `BatchPrimitive`.
**/
class SubMesh {
	/**
		The index ranges of the model, one per material.
	**/
	public var subParts : Array<SubPart>;
	/**
		The index of the first sub part of the model in the GPU sub part infos.
	**/
	public var subPartStart : Int;
	/**
		The local bounds of the model.
	**/
	public var bounds : h3d.col.Bounds;
	/**
		The number of levels of detail.
	**/
	public var lodCount : Int;
	/**
		The screen ratios at which each level of detail is selected.
	**/
	public var lodConfig : Array<Float>;
	/**
		The screen ratio under which the model is not drawn.
	**/
	public var cullingScreenRatio : Float;
	/**
		Creates an empty sub mesh.
	**/
	public function new() {
	}
}

/**
	The index ranges of a material of a `SubMesh`, one per level of detail.
**/
class SubPart {
	/**
		The first index of each level of detail.
	**/
	public var indexStarts : Array<Int>;
	/**
		The number of indexes of each level of detail.
	**/
	public var indexCounts : Array<Int>;
	/**
		Creates an empty sub part.
	**/
	public function new() {
	}
}

/**
	A primitive packing many models of the same vertex format in a single vertex and index buffer, with the information
	needed by GPU culling and level of detail selection (see `h3d.scene.Batcher` and `h3d.scene.Batcher.BatchLibrary`).
**/
@:access(h3d.prim.HMDModel)
class BatchPrimitive extends MeshPrimitive {
	static var SUBMESH_INFOS_FMT = hxd.BufferFormat.make([{ name : "boundingSphere", type : DVec4 }, { name : "lodInfos", type : DVec4 }]);
	static var SUBPART_INFOS_FMT = hxd.BufferFormat.make([{ name : "indexCount", type : DFloat }, { name : "indexStart", type : DFloat }]);
	static var LOD_INFOS_FMT = hxd.BufferFormat.make([{ name : "screenRatio", type : DFloat }]);

	/**
		The vertex format of the packed models.
	**/
	public var vertexFormat(default, null) : hxd.BufferFormat;
	/**
		The packed models.
	**/
	public var subMeshes(default, null) : Array<SubMesh> = [];
	var models(default, null) : Array<MeshPrimitive> = [];
	var bounds = new h3d.col.Bounds();
	var isDynamic : Bool = true;

	var vBytes : BytesArray;
	var iBytes : BytesArray;
	var maxByteSize = -1;

	var subMeshCount : Int = 0;
	/**
		The bounding sphere and level of detail info of each model, on the CPU.
	**/
	public var cpuSubMeshInfos : haxe.io.Bytes;
	/**
		The bounding sphere and level of detail info of each model, read by the culling compute shader.
	**/
	public var gpuSubMeshInfos : h3d.Buffer;
	var subPartCount : Int = 0;
	/**
		The index ranges of each model material and level of detail, on the CPU.
	**/
	public var cpuSubPartInfos : haxe.io.Bytes;
	/**
		The index ranges of each model material and level of detail, read by the culling compute shader.
	**/
	public var gpuSubPartInfos : h3d.Buffer;
	var totalLodCount : Int = 0;
	/**
		The level of detail screen ratios, on the CPU.
	**/
	public var cpuLodInfos : hxd.FloatBuffer;
	/**
		The level of detail screen ratios, read by the culling compute shader.
	**/
	public var gpuLodInfos : h3d.Buffer;

	/**
		`true` if a `logicNormal` vertex input was added (see `addLogicNormal`).
	**/
	public var hasLogicNormal : Bool = false;
	var logicNormals : hxd.FloatBuffer;

	/**
		Creates an empty batch primitive.
		@param isDynamic If `true`, models can be added after the first upload (their data is kept on the CPU).
		@param maxByteSize The maximum number of bytes uploaded per chunk, or `-1` for no limit.
	**/
	public function new(format, isDynamic = true, maxByteSize = -1) {
		vertexFormat = format;
		this.maxByteSize = maxByteSize;
		this.isDynamic = isDynamic;
	}

	/**
		Adds a model (if not already added) and returns its sub mesh index.
	**/
	public function addModel( model : MeshPrimitive ) : Int {
		var subMeshID = models.indexOf(model);
		if ( subMeshID >= 0 )
			return subMeshID;
		if ( buffer != null ) {
			dispose();
			if ( !isDynamic )
				rebuildModels();
		}
		subMeshID = models.length;
		models.push(model);
		fillModel(model);
		return subMeshID;
	}

	/**
		Adds a `logicNormal` vertex input holding the original normals of the models.
	**/
	public function addLogicNormal() {
		if ( hasLogicNormal )
			return;
		hasLogicNormal = true;
		if ( buffer != null ) {
			logicNormals = new hxd.FloatBuffer();
			for ( m in models )
				fillLogicNormal(m);
			addBuffer(h3d.Buffer.ofFloats(logicNormals, hxd.BufferFormat.make([{ name : "logicNormal", type : DVec3 }])));
			if ( !isDynamic )
				logicNormals = null;
		}
	}

	/**
		Returns the sub mesh index of `model`, or `-1`.
	**/
	public function getSubMeshID( model : MeshPrimitive ) {
		return models.indexOf(model);
	}

	function rebuildModels() {
		subMeshes = [];
		bounds.empty();
		subMeshCount = subPartCount = totalLodCount = 0;
		for ( m in models )
			fillModel(m);
	}

	function fillPolygon( model : Polygon ) {
		var levels = [model];
		var lodConfig = [];  // ratio of the next level
		var lods = model.lods;
		if( lods != null ) {
			for ( l in lods ) {
				levels.push(l.prim);
				lodConfig.push(l.screenRatio);
			}
		}
		lodConfig.push(0.0);
		var subMesh = new SubMesh();
		subMesh.bounds = model.getBounds();
		bounds.add(subMesh.bounds);
		subMesh.lodCount = levels.length;
		subMesh.lodConfig = lodConfig;
		subMesh.subPartStart = subPartCount;

		var subPart = new SubPart();
		subPart.indexStarts = [];
		subPart.indexCounts = [];
		for ( model in levels ) {
			var cpuBuf = model.getCPUBuffer();
			#if hl
			var vertices = @:privateAccess new haxe.io.Bytes(hl.Bytes.getArray(cpuBuf.getNative()), cpuBuf.length * 4);
			#else
			var vertices = haxe.io.Bytes.alloc(cpuBuf.length * 4);
			for ( i in 0...cpuBuf.length )
				vertices.setFloat(i<<2, cpuBuf[i]);
			#end

			var vByteSize = model.vertexCount() * vertexFormat.strideBytes;
			if ( vBytes == null )
				vBytes = new BytesArray(vByteSize, maxByteSize);
			var vStart = Std.int(vBytes.totalSize / vertexFormat.strideBytes);
			var vAlloc = vBytes.alloc(vByteSize);
			var vbuf = vAlloc.b;
			var vByteStart = vAlloc.pos;
			vbuf.blit(vByteStart, vertices, 0, vByteSize);

			var triIndices = model.idx == null;
			var iCount = triIndices ? model.triCount() * 3 : model.idx.length;
			var iByteSize = iCount * 4;
			if ( iBytes == null )
				iBytes = new BytesArray(iByteSize, maxByteSize);
			var iStart = iBytes.totalSize >> 2;
			var iAlloc = iBytes.alloc(iByteSize);
			var ibuf = iAlloc.b;
			var iByteStart = iAlloc.pos;

			if ( triIndices ) {
				for ( i in 0...iCount )
					ibuf.setInt32(iByteStart + (i << 2), i + vStart);
			} else {
				for ( i in 0...iCount )
					ibuf.setInt32(iByteStart + (i << 2), model.idx[i] + vStart);
			}
			subPart.indexStarts.push(iStart);
			subPart.indexCounts.push(iCount);
		}

		subMesh.subParts = [subPart];
		subMeshes.push( subMesh );
		fillSubMeshInfos( subMesh );
	}

	function fillHMD( model : HMDModel) {
		var subMesh = new SubMesh();
		subMesh.bounds = model.getBounds();
		bounds.add(subMesh.bounds);
		subMesh.lodCount = model.lods.length;
		subMesh.lodConfig = model.lodConfig;
		subMesh.cullingScreenRatio = model.cullingScreenRatio;
		subMesh.subParts = [];
		subMesh.subPartStart = subPartCount;
		var dataPosition = model.dataPosition;
		var entry = model.lib.resource.entry;

		var indexStarts = [];
		var matCount = model.data.indexCounts.length;

		for ( lod in model.lods ) {
			var vByteSize = lod.vertexCount * vertexFormat.strideBytes;
			if ( vBytes == null )
				vBytes = new BytesArray(vByteSize, maxByteSize);
			var vStart = Std.int(vBytes.totalSize / vertexFormat.strideBytes);
			var vAlloc = vBytes.alloc(vByteSize);
			var vbuf = vAlloc.b;
			var vByteStart = vAlloc.pos;
			var vertices = entry.fetchBytes(dataPosition + lod.vertexPosition, vByteSize);
			vbuf.blit(vByteStart, vertices, 0, vByteSize);

			var iCount = lod.indexCount;
			var iByteSize = iCount * 4;
			if ( iBytes == null )
				iBytes = new BytesArray(iByteSize, maxByteSize);

			var iStart = iBytes.totalSize >> 2;
			for ( count in lod.indexCounts ) {
				indexStarts.push(iStart);
				iStart += count;
			}

			var iAlloc = iBytes.alloc(iByteSize);
			var ibuf = iAlloc.b;
			var iByteStart = iAlloc.pos;

			var lodIs32 = lod.vertexCount > 0x10000;
			var iLodByteSize = (lodIs32 ? 4 : 2) * iCount;
			var indices = entry.fetchBytes(dataPosition + lod.indexPosition, iLodByteSize);
			for ( i in 0...iCount )
				if ( lodIs32 )
					ibuf.setInt32(iByteStart + (i << 2), indices.getInt32(i << 2) + vStart);
				else
					ibuf.setInt32(iByteStart + (i << 2), indices.getUInt16(i << 1) + vStart);
		}

		for ( matIdx in 0...matCount ) {
			var subPart = new SubPart();
			subPart.indexStarts = [];
			subPart.indexCounts = [];
			for ( lodIdx => lod in model.lods ) {
				subPart.indexStarts.push( indexStarts[lodIdx * matCount + matIdx] );
				subPart.indexCounts.push( lod.indexCounts[matIdx] );
			}
			subMesh.subParts.push( subPart );
		};

		subMeshes.push( subMesh );
		fillSubMeshInfos( subMesh );
	}

	function fillModel( model : MeshPrimitive ) {
		var hmd = Std.downcast(model, HMDModel);
		if (hmd != null )
			fillHMD(hmd);
		else
			fillPolygon(cast model);
	}

	function fillSubMeshInfos( subMesh : SubMesh ) {
		var subMeshID = subMeshCount++;
		var subMeshNeeded = subMeshCount * SUBMESH_INFOS_FMT.strideBytes;
		if ( cpuSubMeshInfos == null )
			cpuSubMeshInfos = haxe.io.Bytes.alloc(subMeshNeeded);
		if ( cpuSubMeshInfos.length < subMeshNeeded ) {
			var old = cpuSubMeshInfos;
			cpuSubMeshInfos = haxe.io.Bytes.alloc(hxd.Math.imax((old.length >> 1) * 3, subMeshNeeded));
			cpuSubMeshInfos.blit(0, old, 0, old.length);
		}

		var lodCount = subMesh.lodCount;
		var lodConfig = subMesh.lodConfig ?? [0.0];

		var subMeshStart = subMeshID * SUBMESH_INFOS_FMT.strideBytes;
		var lodStart = totalLodCount * LOD_INFOS_FMT.stride;
		var bounds = subMesh.bounds;
		cpuSubMeshInfos.setFloat(subMeshStart + 0, (bounds.xMin + bounds.xMax) * 0.5);
		cpuSubMeshInfos.setFloat(subMeshStart + 4, (bounds.yMin + bounds.yMax) * 0.5);
		cpuSubMeshInfos.setFloat(subMeshStart + 8, (bounds.zMin + bounds.zMax) * 0.5);
		cpuSubMeshInfos.setFloat(subMeshStart + 12, bounds.getBoundingSphereRadius());
		cpuSubMeshInfos.setInt32(subMeshStart + 16, lodStart);
		cpuSubMeshInfos.setInt32(subMeshStart + 20, lodCount);
		cpuSubMeshInfos.setInt32(subMeshStart + 24, 0);
		cpuSubMeshInfos.setInt32(subMeshStart + 28, 0);

		totalLodCount += lodCount;
		var lodNeeded = totalLodCount * LOD_INFOS_FMT.stride;
		if ( cpuLodInfos == null )
			cpuLodInfos = new hxd.FloatBuffer(lodNeeded);
		if( cpuLodInfos.length < lodNeeded )
			cpuLodInfos.grow( hxd.Math.imax((cpuLodInfos.length >> 1) * 3, lodNeeded) );

		for ( lodIndex in 0...lodCount )
			cpuLodInfos[lodStart + lodIndex] = lodIndex < lodConfig.length ? lodConfig[lodIndex] : 0.0;
		cpuLodInfos[totalLodCount - 1] = subMesh.cullingScreenRatio;

		var subParts = subMesh.subParts;
		var subPartNeeded = (subPartCount + subParts.length * lodCount) * SUBPART_INFOS_FMT.strideBytes;
		if ( cpuSubPartInfos == null )
			cpuSubPartInfos = haxe.io.Bytes.alloc(subPartNeeded);
		if ( cpuSubPartInfos.length < subPartNeeded ) {
			var old = cpuSubPartInfos;
			cpuSubPartInfos = haxe.io.Bytes.alloc(hxd.Math.imax((cpuSubPartInfos.length >> 1) * 3, subPartNeeded));
			cpuSubPartInfos.blit(0, old, 0, old.length);
		}

		var subPartStart = subPartCount * SUBPART_INFOS_FMT.strideBytes;
		for ( subPart in subParts ) {
			for ( lodIndex in 0...lodCount ) {
				cpuSubPartInfos.setInt32(subPartStart + 0, subPart.indexCounts[lodIndex]);
				cpuSubPartInfos.setInt32(subPartStart + 4, subPart.indexStarts[lodIndex]);
				subPartStart += SUBPART_INFOS_FMT.strideBytes;
			}
		}
		subPartCount += subParts.length * lodCount;
	}

	function fillLogicNormal( model : MeshPrimitive ) @:privateAccess {
		var poly = Std.downcast(model, Polygon);
		if ( poly != null ) {
			var levels = [poly];
			var lods = poly.lods;
			if( lods != null )
				for ( l in lods ) levels.push(l.prim);
			for ( poly in levels ) {
				var startOffset : Int = logicNormals.length;
				var vCount = poly.vertexCount();
				logicNormals.grow(vCount*3);
				var k = 0;
				var hasNormal = poly.normals == null;
				if ( !hasNormal )
					poly.addNormals();
				for( n in poly.normals ) {
					logicNormals[startOffset + k++] = n.x;
					logicNormals[startOffset + k++] = n.y;
					logicNormals[startOffset + k++] = n.z;
				}
				if ( !hasNormal )
					poly.normals = null;
			}
			return;
		}

		var model : HMDModel = cast model;
		var lods = model.lods;
		for ( lod in lods ) {
			var pos = model.lib.getBuffers(lod, hxd.BufferFormat.POS3D);
			var ids = new Array();
			var pts : Array<h3d.col.Point> = [];
			var mpts = new Map();

			for( i in 0...lod.vertexCount ) {
				var added = false;
				var px = pos.vertexes[i * 3];
				var py = pos.vertexes[i * 3 + 1];
				var pz = pos.vertexes[i * 3 + 2];
				var pid = Std.int((px + py + pz) * 10.01);
				var arr = mpts.get(pid);
				if( arr == null ) {
					arr = [];
					mpts.set(pid, arr);
				} else {
					for( idx in arr ) {
						var p = pts[idx];
						if( p.x == px && p.y == py && p.z == pz ) {
							ids.push(idx);
							added = true;
							break;
						}
					}
				}
				if( !added ) {
					ids.push(pts.length);
					arr.push(pts.length);
					pts.push(new h3d.col.Point(px,py,pz));
				}
			}

			var idx = new hxd.IndexBuffer();
			for( i in pos.indexes )
				idx.push(ids[i]);

			var pol = new Polygon(pts, idx);
			pol.addNormals();

			var startOffset : Int = logicNormals.length;
			logicNormals.grow(lod.vertexCount*3);
			var k = 0;
			for( i in 0...lod.vertexCount ) {
				var n = pol.normals[ids[i]];
				logicNormals[startOffset + k++] = n.x;
				logicNormals[startOffset + k++] = n.y;
				logicNormals[startOffset + k++] = n.z;
			}
		}
	}

	override function dispose() {
		super.dispose();
		gpuSubMeshInfos?.dispose();
		gpuSubPartInfos?.dispose();
		gpuLodInfos?.dispose();
	}

	override public function alloc( engine : h3d.Engine ) {
		dispose();

		var vCount = Std.int(vBytes.totalSize / vertexFormat.strideBytes);
		buffer = new h3d.Buffer(vCount, vertexFormat);
		vBytes.upload(buffer);

		var iCount = iBytes.totalSize >> 2;
		indexes = new h3d.Indexes(iCount, true);
		iBytes.upload(indexes);

		if ( hasLogicNormal )
			addBuffer(h3d.Buffer.ofFloats(logicNormals, hxd.BufferFormat.make([{ name : "logicNormal", type : DVec3 }])));

		gpuSubMeshInfos = new h3d.Buffer(subMeshCount, SUBMESH_INFOS_FMT, [UniformBuffer]);
		gpuSubMeshInfos.uploadBytes(cpuSubMeshInfos, 0, subMeshCount, 0);
		gpuSubPartInfos = new h3d.Buffer(subPartCount, SUBPART_INFOS_FMT, [UniformBuffer]);
		gpuSubPartInfos.uploadBytes(cpuSubPartInfos, 0, subPartCount, 0);
		gpuLodInfos = new h3d.Buffer(totalLodCount, LOD_INFOS_FMT, [UniformBuffer]);
		gpuLodInfos.uploadFloats(cpuLodInfos, 0, totalLodCount, 0);

		if ( !isDynamic ) {
			vBytes = null;
			logicNormals = null;
			cpuSubMeshInfos = null;
			cpuSubPartInfos = null;
			cpuLodInfos = null;
			iBytes = null;
		}
	}

	override public function getBounds() : h3d.col.Bounds {
		return bounds;
	}
}