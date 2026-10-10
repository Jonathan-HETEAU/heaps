package h3d.scene;

/**
	A model instance placed in a `World` chunk.
**/
class WorldElement {
	/**
		The model drawn.
	**/
	public var model : WorldModel;
	/**
		The world transform of the instance.
	**/
	public var transform : h3d.Matrix;
	/**
		`true` for instances added with `World.add` (only position, uniform scale and Z rotation), which are merged faster.
	**/
	public var optimized : Bool;
	/**
		Creates an instance of `model` with transform `mat`.
	**/
	public function new( model, mat, optimized ) {
		this.model = model;
		this.transform = mat;
		this.optimized = optimized;
	}
}

/**
	A square area of a `World`, of `World.chunkSize` units. The meshes of a chunk are built when it becomes visible
	and released by the garbage collection of the `World`.
**/
class WorldChunk {

	/**
		The X index of the chunk.
	**/
	public var cx : Int;
	/**
		The Y index of the chunk.
	**/
	public var cy : Int;
	/**
		The X world position of the chunk.
	**/
	public var x : Float;
	/**
		The Y world position of the chunk.
	**/
	public var y : Float;

	/**
		The object containing the meshes of the chunk.
	**/
	public var root : h3d.scene.Object;
	/**
		The meshes of the chunk, one per material (indexed by `WorldMaterial.bits`).
	**/
	public var buffers : Map<Int, h3d.scene.Mesh>;
	/**
		The world bounds of the elements of the chunk, used for culling.
	**/
	public var bounds : h3d.col.Bounds;
	/**
		`true` when the meshes of the chunk are built.
	**/
	public var initialized = false;
	/**
		The last frame the chunk was visible, used to release the least recently seen chunks first.
	**/
	public var lastFrame : Int;
	/**
		The model instances of the chunk.
	**/
	public var elements : Array<WorldElement>;

	/**
		Creates an empty chunk at the given indexes.
	**/
	public function new(cx, cy) {
		this.cx = cx;
		this.cy = cy;
		elements = [];
		root = new h3d.scene.Object();
		buffers = new Map();
		bounds = new h3d.col.Bounds();
		root.inheritCulled = true;
		root.name = "chunk[" + cx + "-" + cy + "]";
	}

	/**
		Removes the chunk meshes from the scene.
	**/
	public function dispose() {
		root.remove();
	}
}

/**
	A material of a `World` model: the geometries sharing the same material bits are merged in the same mesh.
	Textures are packed in shared big textures (`h3d.mat.BigTexture`).
**/
class WorldMaterial {
	/**
		A key combining the material settings, computed by `updateBits`. Geometries with the same bits are merged.
	**/
	public var bits : Int;
	/**
		The diffuse texture area in the big texture.
	**/
	public var t : h3d.mat.BigTexture.BigTextureElement;
	/**
		The specular texture area, if `World.enableSpecular` is set.
	**/
	public var spec : h3d.mat.BigTexture.BigTextureElement;
	/**
		The normal map area, if `World.enableNormalMaps` is set.
	**/
	public var normal : h3d.mat.BigTexture.BigTextureElement;
	/**
		The source material of the model.
	**/
	public var mat : hxd.fmt.hmd.Data.Material;
	/**
		Enables back face culling.
	**/
	public var culling : Bool;
	/**
		The blend mode (`Alpha` by default, `None` for jpg textures).
	**/
	public var blend : h3d.mat.BlendMode;
	/**
		If set, pixels with an alpha below this threshold are discarded.
	**/
	public var killAlpha : Null<Float>;
	/**
		If set, the emissive intensity of the material.
	**/
	public var emissive : Null<Float>;
	/**
		If set, the stencil reference value written by the material.
	**/
	public var stencil : Null<Int>;
	/**
		Enables lighting.
	**/
	public var lights : Bool;
	/**
		Enables shadow casting and receiving.
	**/
	public var shadows : Bool;
	/**
		Additional shaders of the material.
	**/
	public var shaders : Array<hxsl.Shader>;
	/**
		The material name, used as mesh name.
	**/
	public var name : String;

	/**
		Creates a material with lights and shadows enabled.
	**/
	public function new() {
		lights = true;
		shadows = true;
		shaders = [];
	}

	/**
		Returns a copy of the material (the texture areas are shared).
	**/
	public function clone() : WorldMaterial {
		var wm = new WorldMaterial();
		wm.bits = this.bits;
		wm.t = this.t;
		wm.spec = this.spec;
		wm.normal = this.normal;
		wm.mat = this.mat;
		wm.culling = this.culling;
		wm.blend = this.blend;
		wm.killAlpha = this.killAlpha;
		wm.emissive = this.emissive;
		wm.stencil = this.stencil;
		wm.lights = this.lights;
		wm.shadows = this.shadows;
		wm.shaders = this.shaders.copy();
		wm.name = this.name;
		return wm;
	}


	/**
		Recomputes `bits` after changing the settings.
	**/
	public function updateBits() {
		bits = (t.t == null ? 0 : t.t.id   		<< 18)
			| ((stencil == null ? 0 : stencil)  << 10)
			| ((normal == null ? 0 : 1)     	<< 9)
			| (blend.getIndex()             	<< 6)
			| ((killAlpha == null ? 0 : 1)  	<< 5)
			| ((emissive == null ? 0 : 1)   	<< 4)
			| ((lights ? 1 : 0)             	<< 3)
			| ((shadows ? 1 : 0)            	<< 2)
			| ((spec == null ? 0 : 1)       	<< 1)
			| (culling ? 1 : 0);
	}
}

/**
	A part of a `WorldModel` using one material.
**/
class WorldModelGeometry {
	/**
		The material of this part.
	**/
	public var m : WorldMaterial;
	/**
		The first vertex of the part in the model buffer.
	**/
	public var startVertex : Int;
	/**
		The first index of the part in the model index buffer.
	**/
	public var startIndex : Int;
	/**
		The number of vertexes of the part.
	**/
	public var vertexCount : Int;
	/**
		The number of indexes of the part.
	**/
	public var indexCount : Int;
	/**
		Creates a geometry using material `m`.
	**/
	public function new(m) {
		this.m = m;
	}
}

/**
	Geometry optimizations available for `WorldModel.optimize`.
**/
enum OptAlgorithm {
	/**
		No optimization.
	**/
	None;
	/**
		Sort triangles by Z descending
	**/
	TopDown;
}

/**
	A model loaded by `World.loadModel`: its geometry is kept on the CPU to be merged into the chunks.
**/
class WorldModel {
	/**
		The model resource.
	**/
	public var r : hxd.res.Model;
	/**
		The vertex format.
	**/
	public var format : hxd.BufferFormat;
	/**
		The vertexes of the model.
	**/
	public var buf : hxd.FloatBuffer;
	/**
		The indexes of the model.
	**/
	public var idx : hxd.IndexBuffer;
	/**
		The parts of the model, one per material.
	**/
	public var geometries : Array<WorldModelGeometry>;
	/**
		The local bounds of the model.
	**/
	public var bounds : h3d.col.Bounds;
	/**
		Creates an empty model for resource `r`.
	**/
	public function new(r) {
		this.r = r;
		this.buf = new hxd.FloatBuffer();
		this.idx = new hxd.IndexBuffer();
		this.geometries = [];
		bounds = new h3d.col.Bounds();
	}

	/**
		Reorders the geometry with the given algorithm.
	**/
	public function optimize( algo : OptAlgorithm ) {
		switch( algo ) {
		case None:
		case TopDown:
			var stride = format.stride;
			var vertexCount = Std.int(buf.length/stride);
			var vertexRemap = new haxe.ds.Vector(vertexCount);
			var indexRemap = new hxd.IndexBuffer(idx.length);
			var vidx = 0;
			var iidx = 0;
			for( i in 0...vertexCount )
				vertexRemap[i] = -1;
			for( g in geometries ) {
				var triCount = Std.int(g.indexCount/3);
				var triZ = new Array<Float>();
				var triIndexes = new Array<Int>();
				if( g.startIndex != iidx ) throw "assert";
				triZ[triCount-1] = 0;
				triIndexes[triCount-1] = 0;
				for( i in 0...triCount ) {
					var base = g.startIndex + i*3;
					var z1 = buf[idx[base++] * stride + 2];
					var z2 = buf[idx[base++] * stride + 2];
					var z3 = buf[idx[base++] * stride + 2];
					var zmin = z1;
					if( z2 < zmin ) zmin = z2;
					if( z3 < zmin ) zmin = z3;
					triIndexes[i] = i;
					triZ[i] = zmin;
				}
				haxe.ds.ArraySort.sort(triIndexes, function(i1,i2) {
					return triZ[i1] < triZ[i2] ? 1 : -1;
				});
				for( i in 0...triCount ) {
					var i2 = triIndexes[i];
					var base = g.startIndex + i2 * 3;
					for( j in 0...3 ) {
						var v = idx[base++];
						var nv = vertexRemap[v];
						if( nv < 0 ) {
							nv = vidx++;
							vertexRemap[v] = nv;
						}
						indexRemap[iidx++] = nv;
					}
				}
			}
			var bufRemap = new hxd.FloatBuffer(vertexCount*stride);
			for( v in 0...vertexCount ) {
				var nv = vertexRemap[v];
				var readPos = v * stride;
				var writePos = nv * stride;
				for( i in 0...stride )
					bufRemap[writePos++] = buf[readPos++];
			}
			this.idx = indexRemap;
			this.buf = bufRemap;
		}
	}

}

/**
	A static world made of many model instances, split in square chunks on the XY plane.

	The instances of each chunk are merged in a few big meshes (one per material) when the chunk becomes visible,
	and their textures packed in big textures, which makes drawing many static models fast.
	The meshes of the least recently visible chunks are released when GPU memory is needed (see `garbage`).

	```haxe
	var world = new h3d.scene.World(64, s3d);
	var tree = world.loadModel(hxd.Res.tree);
	for( i in 0...1000 )
		world.add(tree, Math.random() * 512, Math.random() * 512, 0, 1, Math.random() * Math.PI * 2);
	world.done();
	```
**/
class World extends Object {

	/**
		The size of a chunk, in world units.
	**/
	public var chunkSize(default,null) : Int;

	/**
		For each texture loaded, will call resolveSpecularTexture and have separate spec texture.
	**/
	public var enableSpecular = false;
	/**
		For each texture loaded, will call resolveNormalMap and have separate normal texture.
	**/
	public var enableNormalMaps = false;
	/**
		When enableSpecular=true, will store the specular value in the alpha channel instead of a different texture.
		This will erase alpha value of transparent textures, so should only be used if specular is only on opaque models.
	**/
	public var specularInAlpha = false;

	/**
		The wrap mode of the big textures.
	**/
	public var wrap(default, set) : h3d.mat.Data.Wrap = Clamp;
	public function set_wrap(v : h3d.mat.Data.Wrap) {
		wrap = v;
		inline function bigTextureWrap(t : h3d.mat.BigTexture) {
			if ( t != null && t.tex != null )
				t.tex.wrap = wrap;
		}
		for ( b in bigTextures ) {
			bigTextureWrap(b.diffuse);
			bigTextureWrap(b.normal);
			bigTextureWrap(b.spec);
		}
		return wrap;
	}

	var bigTextureSize = 2048;
	var defaultDiffuseBG = 0;
	var defaultNormalBG = 0x8080FF;
	var defaultSpecularBG = 0;

	var chunks : Map<Int,WorldChunk>;
	var allChunks : Array<WorldChunk>;
	var chunksBounds : { xMin : Int, yMin : Int, xMax : Int, yMax : Int };
	var bigTextures : Array<{ diffuse : h3d.mat.BigTexture, spec : h3d.mat.BigTexture, normal : h3d.mat.BigTexture }>;
	var textures : Map<String, WorldMaterial>;
	var autoCollect : Bool;

	/**
		Creates an empty world.
		@param chunkSize The size of a chunk, in world units.
		@param parent The parent object.
		@param autoCollect If `true`, the world registers `garbage` as the GPU memory garbage collector of the engine.
	**/
	public function new( chunkSize : Int, parent, ?autoCollect = true ) {
		super(parent);
		chunks = [];
		bigTextures = [];
		allChunks = [];
		chunksBounds = { xMin : 0x7FFFFFFF, yMin : 0x7FFFFFFF, xMax : 0x80000000, yMax : 0x80000000 };
		textures = new Map();
		this.chunkSize = chunkSize;
		this.autoCollect = autoCollect;
		if( autoCollect )
			h3d.Engine.getCurrent().mem.garbage = garbage;
	}

	/**
		Releases the meshes of the least recently visible chunk, which are rebuilt when it becomes visible again.
	**/
	public function garbage() {
		var last : WorldChunk = null;
		for( c in allChunks )
			if( c.initialized && !c.root.visible && (last == null || c.lastFrame < last.lastFrame) )
				last = c;
		if( last != null )
			cleanChunk(last);
	}

	function buildFormat() {
		var r = {
			fmt : hxd.BufferFormat.POS3D_NORMAL,
			defaults : [],
		};
		if(enableNormalMaps) {
			r.defaults[2] = new h3d.Vector4(1,0,0);
			r.fmt = r.fmt.append("tangent", DVec3);
		}
		r.fmt = r.fmt.append("uv", DVec2);
		return r;
	}

	function getBlend( r : hxd.res.Image ) : h3d.mat.BlendMode {
		if( r.entry.extension == "jpg" )
			return None;
		return Alpha;
	}

	function resolveTexturePath( r : hxd.res.Model, mat : hxd.fmt.hmd.Data.Material ) {
		var path = mat.diffuseTexture;
		if( hxd.res.Loader.currentInstance.exists(path) )
			return path;
		var dir = r.entry.directory;
		if( dir != "" ) dir += "/";
		return dir + path.split("/").pop();
	}

	function resolveSpecularTexture( path : String, mat : hxd.fmt.hmd.Data.Material) : hxd.res.Image {
		if(mat.specularTexture == null)
			return null;
		try {
			return hxd.res.Loader.currentInstance.load(mat.specularTexture).toImage();
		} catch( e : hxd.res.NotFound ) try {
			var path = path.split("/");
			path.pop();
			path.push(mat.specularTexture.split("/").pop());
			return hxd.res.Loader.currentInstance.load(path.join("/")).toImage();
		} catch( e : hxd.res.NotFound ) {
			return null;
		}
	}

	function resolveNormalMap( path : String, mat : hxd.fmt.hmd.Data.Material) : hxd.res.Image {
		if(mat.normalMap == null)
			return null;
		try {
			return hxd.res.Loader.currentInstance.load(mat.normalMap).toImage();
		} catch( e : hxd.res.NotFound ) try {
			var path = path.split("/");
			path.pop();
			path.push(mat.normalMap.split("/").pop());
			return hxd.res.Loader.currentInstance.load(path.join("/")).toImage();
		} catch( e : hxd.res.NotFound ) {
			return null;
		}
	}

	function loadMaterialTexture( r : hxd.res.Model, mat : hxd.fmt.hmd.Data.Material, modelName : String ) : WorldMaterial {
		var texturePath = resolveTexturePath(r, mat);
		var m = textures.get(texturePath);
		if( m != null )
			return m;

		var rt = hxd.res.Loader.currentInstance.load(texturePath).toImage();
		var t = null;
		var btex = null;
		for( b in bigTextures ) {
			t = b.diffuse.add(rt);
			if( t != null ) {
				btex = b;
				break;
			}
		}
		if( t == null ) {
			var b = new h3d.mat.BigTexture(bigTextures.length, bigTextureSize, defaultDiffuseBG);
			b.tex.wrap = wrap;
			btex = { diffuse : b, spec : null, normal : null };
			bigTextures.unshift( btex );
			t = b.add(rt);
			if( t == null ) throw "Texture " + texturePath + " is too big";
		}

		inline function checkSize(res:hxd.res.Image) {
			if(res != null) {
				var size = res.getSize();
				if(size.width != t.width || size.height != t.height)
					throw 'Texture ${res.entry.path} has different size ${size.width}x${size.height} from diffuse ${t.width}x${t.height}';
			}
		}

		var specTex = null;
		if( enableSpecular ) {
			var res = resolveSpecularTexture(texturePath, mat);
			checkSize(res);
			if( specularInAlpha ) {
				if( res != null ) {
					t.setAlpha(res);
					specTex = t;
				}
			} else {
				if( btex.spec == null ) {
					btex.spec = new h3d.mat.BigTexture(-1, bigTextureSize, defaultSpecularBG);
					btex.spec.tex.wrap = wrap;
				}
				if( res != null )
					specTex = btex.spec.add(res);
				else
					specTex = btex.spec.addEmpty(t.width, t.height); // keep UV in-sync
			}
		}

		var normalMap = null;
		if( enableNormalMaps ) {
			var res = resolveNormalMap(texturePath, mat);
			checkSize(res);
			if( btex.normal == null ) {
				btex.normal = new h3d.mat.BigTexture(-1, bigTextureSize, defaultNormalBG);
				btex.normal.tex.wrap = wrap;
			}
			if( res != null )
				normalMap = btex.normal.add(res);
			else
				normalMap = btex.normal.addEmpty(t.width, t.height); // keep UV in-sync
		}

		var m = new WorldMaterial();
		m.t = t;
		m.spec = specTex;
		m.normal = normalMap;
		m.blend = getBlend(rt);
		m.killAlpha = null;
		m.emissive = null;
		m.mat = mat;
		m.culling = true;
		m.stencil = null;
		m.updateBits();
		textures.set(texturePath, m);
		return m;
	}

	/**
		Finalizes the big textures. Call it after loading all the models.
	**/
	public function done() {
		for( b in bigTextures ) {
			b.diffuse.done();
			if(b.spec != null)
				b.spec.done();
			if(b.normal != null)
				b.normal.done();
		}
	}

	/**
		Loads a model and its textures so that it can be added to the world.
		@param filter If set, only the parts of the model for which it returns `true` are loaded.
	**/
	@:noDebug
	public function loadModel( r : hxd.res.Model, ?filter : hxd.fmt.hmd.Data.Model -> Bool) : WorldModel {
		var lib = r.toHmd();
		var models = lib.header.models;
		var format = buildFormat();

		var model = new WorldModel(r);
		model.format = format.fmt;

		var startVertex = 0, startIndex = 0;
		for( m in models ) {

			// Name filtering
			if( filter != null && !filter(m) ) {
				continue;
			}

			var geom = lib.header.geometries[m.geometry];
			if( geom == null ) continue;
			var pos = m.position.toMatrix();
			var parentIdx = m.parent;
			while(parentIdx >= 0) {
				var parent = models[parentIdx];
				pos.multiply(parent.position.toMatrix(), pos);
				parentIdx = parent.parent;
			}
			for( mid in 0...m.materials.length ) {
				var mat = lib.header.materials[m.materials[mid]];
				if(mat == null || mat.diffuseTexture == null) continue;
				var wmat = loadMaterialTexture(r, mat, m.name);
				if( wmat == null ) continue;
				var data = lib.getBuffers(geom, format.fmt, format.defaults, mid);

				var m = new WorldModelGeometry(wmat);
				m.vertexCount = Std.int(data.vertexes.length / model.format.stride);
				m.indexCount = data.indexes.length;
				m.startVertex = startVertex;
				m.startIndex = startIndex;
				model.geometries.push(m);

				var vl = data.vertexes;
				var p = 0;
				var extra = model.format.stride - 8;
				if(enableNormalMaps)
					extra -= 3;

				for( i in 0...m.vertexCount ) {
					var x = vl[p++];
					var y = vl[p++];
					var z = vl[p++];
					var nx = vl[p++];
					var ny = vl[p++];
					var nz = vl[p++];
					var tx = 1., ty = 0., tz = 0.;
					if(enableNormalMaps) {
						tx = vl[p++];
						ty = vl[p++];
						tz = vl[p++];
					}
					var u = vl[p++];
					var v = vl[p++];

					// position
					var pt = new h3d.Vector(x,y,z);
					pt.transform(pos);
					model.buf.push(pt.x);
					model.buf.push(pt.y);
					model.buf.push(pt.z);
					model.bounds.addPos(pt.x, pt.y, pt.z);

					// normal
					var n = new h3d.Vector(nx, ny, nz);
					n.transform3x3(pos);
					var len = hxd.Math.invSqrt(n.lengthSq());
					model.buf.push(n.x * len);
					model.buf.push(n.y * len);
					model.buf.push(n.z * len);

					if( enableNormalMaps ) {
						var t = new h3d.Vector(tx, ty, tz);
						var tlen = t.length();
						t.transform3x3(pos);
						var len = tlen * hxd.Math.invSqrt(n.lengthSq());
						model.buf.push(t.x * len);
						model.buf.push(t.y * len);
						model.buf.push(t.z * len);
					}

					// uv
					model.buf.push(u * wmat.t.su + wmat.t.du);
					model.buf.push(v * wmat.t.sv + wmat.t.dv);

					// extra
					for( k in 0...extra )
						model.buf.push(vl[p++]);
				}

				for( i in 0...m.indexCount )
					model.idx.push(data.indexes[i] + startVertex);

				startVertex += m.vertexCount;
				startIndex += m.indexCount;
			}
		}
		return model;
	}

	inline function makeId( cx : Int, cy : Int ) {
		return (cx & 0xFFFF) | ((cy & 0xFFFF) << 16);
	}

	function getChunk( x : Float, y : Float, create = false ) {
		var ix = Math.floor(x / chunkSize);
		var iy = Math.floor(y / chunkSize);
		if( ix < 0 ) ix = 0;
		if( iy < 0 ) iy = 0;
		var cid = makeId(ix,iy);
		var c = chunks[cid];
		if( c == null && create ) {
			c = new WorldChunk(ix, iy);
			c.x = ix * chunkSize;
			c.y = iy * chunkSize;
			addChild(c.root);
			chunks[cid] = c;
			if( ix < chunksBounds.xMin ) chunksBounds.xMin = ix;
			if( iy < chunksBounds.yMin ) chunksBounds.yMin = iy;
			if( ix > chunksBounds.xMax ) chunksBounds.xMax = ix;
			if( iy > chunksBounds.yMax ) chunksBounds.yMax = iy;
			allChunks.push(c);
		}
		return c;
	}

	function initChunkSoil( c : WorldChunk ) {
	}

	function initChunkElements( c : WorldChunk ) {
		for( e in c.elements ) {
			var model = e.model;
			for( g in model.geometries ) {
				var b = c.buffers.get(g.m.bits);
				if( b == null ) {
					var bp = new h3d.prim.BigPrimitive(getFormat(model));
					bp.hasTangents = enableNormalMaps;
					b = new h3d.scene.Mesh(bp, c.root);
					b.name = g.m.name;
					c.buffers.set(g.m.bits, b);
					initMaterial(b, g.m);
				}
				var p = Std.downcast(b.primitive, h3d.prim.BigPrimitive);

				if(e.optimized) {
					var m = e.transform;
					var scale = m._33;
					var rotZ = hxd.Math.atan2(m._12 / scale, m._11 / scale);
					p.addSub(model.buf, model.idx, g.startVertex, Std.int(g.startIndex / 3), g.vertexCount, Std.int(g.indexCount / 3), m.tx, m.ty, m.tz, rotZ, scale, model.format.stride, 0., 0., 1., null);
				}
				else
					p.addSub(model.buf, model.idx, g.startVertex, Std.int(g.startIndex / 3), g.vertexCount, Std.int(g.indexCount / 3), 0., 0., 0., 0., 0., model.format.stride, 0., 0., 1., e.transform);
			}
		}
	}

	function cleanChunk( c : WorldChunk ) {
		if( !c.initialized ) return;
		c.initialized = false;
		for( b in c.buffers ) {
			b.remove();
		}
		c.buffers = new Map();
	}

	function addChunkBounds(c : WorldChunk, model : WorldModel, mat : h3d.Matrix ) {
		var b = model.bounds.clone();
		b.transform(mat);
		c.bounds.add(b);
	}

	function initMaterial( mesh : h3d.scene.Mesh, mat : WorldMaterial ) {
		mesh.material.blendMode = mat.blend;
		mesh.material.texture = mat.t.t.tex;
		mesh.material.textureShader.killAlpha = mat.killAlpha != null;
		mesh.material.textureShader.killAlphaThreshold = mat.killAlpha;
		mesh.material.mainPass.enableLights = mat.lights;
		mesh.material.shadows = mat.shadows;
		mesh.material.mainPass.culling = mat.culling ? Back : None;
		mesh.material.mainPass.depthWrite = true;
		mesh.material.mainPass.depthTest = Less;

		for(s in mat.shaders){
			mesh.material.mainPass.addShader(s);
		}

		if( mat.spec != null ) {
			if( specularInAlpha ) {
				mesh.material.specularTexture = null;
				mesh.material.textureShader.specularAlpha = true;
			} else
				mesh.material.specularTexture = mat.spec.t.tex;
		} else
			mesh.material.specularAmount = 0;

		if(enableNormalMaps)
			mesh.material.normalMap = mat.normal.t.tex;

	}

	/**
		Dispose the World instance.
		Note: Only chunked world objects will be disposed. Any objects added to World object will be disposed when World is removed from scene or scene is disposed.
	**/
	public function dispose() {
		for( c in allChunks )
			c.dispose();
		allChunks = [];
		chunks = [];
		for(b in bigTextures) {
			b.diffuse.dispose();
			if(b.spec != null)
				b.spec.dispose();
			if(b.normal != null)
				b.normal.dispose();
		}
		bigTextures = [];
		textures = new Map();
		if( autoCollect )
			h3d.Engine.getCurrent().mem.garbage = noGarbage;
	}

	static function noGarbage() {}

	/**
		Releases the meshes of all the chunks after the GPU context was lost. They are rebuilt when visible.
	**/
	public function onContextLost() {
		for( c in allChunks )
			cleanChunk(c);
	}

	function getFormat( model : WorldModel ) {
		return model.format;
	}

	/**
		Adds an instance of `model` at the given world position.
		@param scale A uniform scale.
		@param rotation A rotation around the Z axis, in radians.
	**/
	public function add( model : WorldModel, x : Float, y : Float, z : Float, scale = 1., rotation = 0. ) {
		var c = getChunk(x, y, true);
		var m = new h3d.Matrix();
		m.initScale(scale, scale, scale);
		m.rotate(0, 0, rotation);
		m.translate(x, y, z);
		c.elements.push(new WorldElement(model, m, true));
		addChunkBounds(c, model, m);
	}

	/**
		Adds an instance of `model` with any world transform (slower to merge than `add`).
	**/
	public function addTransform( model : WorldModel, mat : h3d.Matrix ) {
		var c = getChunk(mat.tx, mat.ty, true);
		c.elements.push(new WorldElement(model, mat, false));
		addChunkBounds(c, model, mat);
	}

	override function syncRec(ctx:RenderContext) {
		super.syncRec(ctx);
		// don't do in sync() since animations in our world might affect our chunks
		for( c in allChunks ) {
			var visible = ctx.computingStatic || c.bounds.inFrustum(ctx.camera.frustum);
			c.root.culled = !visible;
			if( visible ) {
				c.lastFrame = ctx.frame;
				initChunk(c);
			}
		}
	}

	function initChunk( c : WorldChunk ) {
		if( !c.initialized ) {
			c.initialized = true;
			initChunkSoil(c);
			initChunkElements(c);
		}
	}

	/**
		Returns the bounds of all the instances of the world.
		@param b An optional bounds to add the result to.
	**/
	public function getWorldBounds( ?b : h3d.col.Bounds ) {
		if( b == null )
			b = new h3d.col.Bounds();
		for(c in allChunks)
			b.add(c.bounds);
		return b;
	}

}