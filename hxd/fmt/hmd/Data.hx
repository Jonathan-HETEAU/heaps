package hxd.fmt.hmd;

import hxd.fmt.fbx.HMDOut.CollideParams;

/**
	The type of a vertex input.
**/
typedef GeometryDataFormat = hxd.BufferFormat.InputFormat;
/**
	A vertex input.
**/
typedef GeometryFormat = hxd.BufferFormat.BufferInput;

/**
	A position in the binary data of the file, in bytes.
**/
typedef DataPosition = Int;
/**
	An index in an array of the data.
**/
typedef Index<T> = Int;

/**
	Optional properties of the elements of the file.
**/
enum Property<T> {
	/**
		The vertical field of view of a camera, in degrees.
	**/
	CameraFOVY( v : Float ) : Property<Float>;
	/**
		Not used anymore.
	**/
	Unused_HasMaterialFlags;
	/**
		The material has a specular texture and a normal map.
	**/
	HasExtraTextures;
	/**
		The skin of the geometry uses 4 bones by vertex instead of 3.
	**/
	FourBonesByVertex;
	/**
		The model has levels of detail.
	**/
	HasLod;
	/**
		The model has a collider.
	**/
	HasCollider;
	/**
		The model has several colliders.
	**/
	HasColliders;
	/**
		The file has colliders that are not convex hulls.
	**/
	HasCustomCollider;
}

/**
	A list of properties, or `null`.
**/
typedef Properties = Null<Array<Property<Dynamic>>>;

/**
	The type of a collider stored in the file.
**/
enum abstract ColliderType(Int) from Int to Int {
	/**
		Convex hulls.
	**/
	var ConvexHulls = 0;
	/**
		A triangle mesh.
	**/
	var Mesh = 1;
	/**
		A group of colliders.
	**/
	var Group = 2;
	/**
		A sphere.
	**/
	var Sphere = 3;
	/**
		A box.
	**/
	var Box = 4;
	/**
		A capsule.
	**/
	var Capsule = 5;
	/**
		A cylinder.
	**/
	var Cylinder = 6;
	/**
		No collision.
	**/
	var Empty = 255;
}

/**
	A transform stored in the file: position, rotation (quaternion without its W component, which is recomputed) and scale.
**/
class Position {
	/**
		The X position.
	**/
	public var x : Float;
	/**
		The Y position.
	**/
	public var y : Float;
	/**
		The Z position.
	**/
	public var z : Float;
	/**
		The X component of the rotation quaternion.
	**/
	public var qx : Float;
	/**
		The Y component of the rotation quaternion.
	**/
	public var qy : Float;
	/**
		The Z component of the rotation quaternion.
	**/
	public var qz : Float;
	/**
		The W component of the rotation quaternion, computed from the others.
	**/
	public var qw(get, never) : Float;
	/**
		The X scale.
	**/
	public var sx : Float;
	/**
		The Y scale.
	**/
	public var sy : Float;
	/**
		The Z scale.
	**/
	public var sz : Float;
	/**
		Creates a transform.
	**/
	public function new() {
	}

	/**
		Tells if the transform does nothing.
	**/
	public inline function isIdentity() : Bool {
		return x == 0 && y == 0 && z == 0 && qx == 0 && qy == 0 && qz == 0 && sx == 1 && sy == 1 && sz == 1;
	}

	/**
		Writes the rotation to the quaternion.
	**/
	public inline function loadQuaternion( q : h3d.Quat ) {
		q.x = qx;
		q.y = qy;
		q.z = qz;
		q.w = qw;
	}

	function get_qw() {
		var qw = 1 - (qx * qx + qy * qy + qz * qz);
		return qw < 0 ? -Math.sqrt( -qw) : Math.sqrt(qw);
	}

	/**
		Returns the matrix of the transform. If `postScale` is set, the scale is applied after the translation.
	**/
	public function toMatrix(postScale=false) {
		var m = new h3d.Matrix();
		var q = QTMP;
		loadQuaternion(q);
		q.toMatrix(m);
		if( postScale ) {
			m.translate(x, y, z);
			m.scale(sx, sy, sz);
		} else {
			m._11 *= sx; m._12 *= sx; m._13 *= sx;
			m._21 *= sy; m._22 *= sy; m._23 *= sy;
			m._31 *= sz; m._32 *= sz; m._33 *= sz;
			m.translate(x, y, z);
		}
		return m;
	}
	static var QTMP = new h3d.Quat();
}

/**
	The vertex and index data of a mesh, split by material.
**/
class Geometry {
	/**
		The properties of the geometry.
	**/
	public var props : Properties;
	/**
		The number of vertices.
	**/
	public var vertexCount : Int;
	/**
		The format of the vertices.
	**/
	public var vertexFormat : hxd.BufferFormat;
	/**
		The position of the vertices in the data.
	**/
	public var vertexPosition : DataPosition;
	/**
		The total number of indexes.
	**/
	public var indexCount(get, never) : Int;
	/**
		The number of indexes of each material.
	**/
	public var indexCounts : Array<Int>;
	/**
		The position of the indexes in the data.
	**/
	public var indexPosition : DataPosition;
	/**
		The bounds of the vertices.
	**/
	public var bounds : h3d.col.Bounds;
	/**
		Creates a geometry.
	**/
	public function new() {
	}
	function get_indexCount() {
		var k = 0;
		for( i in indexCounts ) k += i;
		return k;
	}
}

/**
	A blend shape (morph target) of a geometry.
**/
class BlendShape {
	/**
		The name of the shape.
	**/
	public var name : String;
	/**
		The geometry modified by the shape.
	**/
	public var geom : Index<Geometry>;
	/**
		The number of vertices of the shape.
	**/
	public var vertexCount : Int;
	/**
		The format of the vertices of the shape.
	**/
	public var vertexFormat : hxd.BufferFormat;
	/**
		The position of the vertices of the shape in the data.
	**/
	public var vertexPosition : DataPosition;
	/**
		The number of offset vertices of the shape.
	**/
	public var indexCount : DataPosition;
	/**
		The position in the data of the geometry vertices moved by each offset vertex (a list per offset vertex, its last index having the bit 31 set).
	**/
	public var remapPosition : DataPosition;
	/**
		Creates a blend shape.
	**/
	public function new() {
	}
}


/**
	How the collider of a model is built (see `Collider.resolveColliderType`).
**/
enum ResolveResult {
	/**
		No collider.
	**/
	Empty;
	/**
		The triangles of the model are used as collider.
	**/
	Mesh(model : Model);
	/**
		Convex hulls are generated from the model.
	**/
	ConvexHulls(model : Model);
	/**
		A group of shapes, from `CollideParams.shapes`.
	**/
	Shapes;
}

/**
	A collider stored in the file.
**/
class Collider {
	/**
		The type of the collider.
	**/
	public var type : ColliderType;

	/**
		Returns how to build the collider of the model. The collision parameters can be set per asset in the editor:
		- None (`noCollision`, or no parameters and not the default ones): an empty collider.
		- Default: the `<name>_Collider` model of the file, else the lowest LOD if `collisionUseLowLod` is set, else the model itself (models smaller than `collisionThresholdHeight` get no collider).
		- Auto (`params.maxConvexHulls`): convex hulls generated from the model.
		- Mesh (`params.mesh`): the given model.
		- Custom (`params.shapes`): the shapes defined by the user.
	**/
	public static function resolveColliderType(d : Data, model : Model, params : CollideParams, isDefaultParams : Bool, ?collisionThresholdHeight : Float, ?collisionUseLowLod : Bool, ?noCollision : Bool) : ResolveResult {
		// None mode
		if ((noCollision != null && noCollision) || (params == null && !isDefaultParams))
			return ResolveResult.Empty;

		// Default mode
		if (isDefaultParams) {
			var colliderModel = findMeshModel(d, model.getObjectName() + "_Collider");
			if (colliderModel != null)
				return ResolveResult.Mesh(colliderModel);

			if (collisionThresholdHeight != null) {
				var dimension = d.geometries[model.geometry].bounds.dimension();
				if (dimension < collisionThresholdHeight)
					return ResolveResult.Empty;
			}

			if (collisionUseLowLod != null) {
				if (model.lods != null && model.lods.length > 0)
					return ResolveResult.Mesh(d.models[model.lods[model.lods.length - 1]]);
			}
		}

		if (params != null) {
			var colliderModel = findMeshModel(d, params.mesh) ?? model;
			if (params.maxConvexHulls != null) {
				return ResolveResult.ConvexHulls(colliderModel);
			} else if (params.mesh != null) {
				return ResolveResult.Mesh(colliderModel);
			} else if (params.shapes != null) {
				return ResolveResult.Shapes;
			}
		}

		if (isDefaultParams)
			return ResolveResult.Mesh(model);

		return null;
	}

	static function findMeshModel(d : Data, name : String) {
		if (name == null)
			return null;
		for (model in d.models) {
			if (model.geometry >= 0 && model.name == name)
				return model;
		}
		return null;
	}
}


/**
	The parameters of the convex hulls generation.
**/
typedef ConvexHullParams = {
	/**
		The maximum number of convex hulls.
	**/
	var maxConvexHulls : Int;
	/**
		The voxel resolution of the decomposition.
	**/
	var resolution : Int;
};

/**
	A collider made of convex hulls.
**/
class ConvexHullsCollider extends Collider {
	/**
		The size of the length units, in meters.
	**/
	public static final UNITS = [
		"Micrometer" => 10e-7,
		"Millimeter" => 10e-4,
		"Meter" => 1,
		"Kilometer" => 10e4,
		"Megameter" => 10e7,
	];
	/**
		The number of vertices of each hull.
	**/
	public var vertexCounts : Array<Int>;
	/**
		The position of the vertices in the data.
	**/
	public var vertexPosition : DataPosition;
	/**
		The number of indexes of each hull.
	**/
	public var indexCounts : Array<Int>;
	/**
		The position of the indexes in the data.
	**/
	public var indexPosition : DataPosition;

	/**
		Creates the collider.
	**/
	public function new() {
		type = ConvexHulls;
	}

	/**
		Decomposes a mesh (3 floats per vertex, 3 indexes per triangle) into convex hulls, with the `meshTools` command or the V-HACD library.
	**/
	public static function buildConvexHulls(vertices : Array<Float>, indexes : Array<Int>, params : ConvexHullParams) {
		var vCount = Std.int(vertices.length / 3);
		var triCount = Std.int(indexes.length / 3);
		var out : Array<{vertices: Array<Float>, indexes : Array<Int>}> = [];

		#if (sys || nodejs)
		// Format data for meshtools
		var outputData = new haxe.io.BytesBuffer();
		outputData.addInt32(vCount);
		for (idx in 0...vCount) {
			var x = vertices[idx * 3];
			var y = vertices[idx * 3 + 1];
			var z = vertices[idx * 3 + 2];
			outputData.addFloat(x);
			outputData.addFloat(y);
			outputData.addFloat(z);
		}

		outputData.addInt32(triCount);
		for (idx in indexes)
			outputData.addInt32(idx);

		// Exec meshtools
		var fileName = tmpFile("vhacd_data");
		var outFile = fileName + ".out";
		sys.io.File.saveBytes(fileName, outputData.getBytes());

		var ret = try Sys.command("meshTools",["vhacd", fileName, outFile, '${params.maxConvexHulls}', '${params.resolution}']) catch( e : Dynamic ) -1;
		if( ret != 0 ) {
			sys.FileSystem.deleteFile(fileName);
			throw "Failed to call 'meshTools' executable required to generate collision data. Please ensure it's in your PATH (see tools/meshTools for build)";
		}

		// Get result data and format it for output
		var bytes = sys.io.File.getBytes(outFile);
		var i = 0;
		var convexHullCount = bytes.getInt32(i++<<2);
		for ( idx in 0...convexHullCount ) {
			var pointCount = bytes.getInt32(i++<<2);
			var vertices = [];
			for ( _ in 0...pointCount ) {
				var x = bytes.getDouble(i<<2);
				vertices.push(x);
				i += 2;
				var y = bytes.getDouble(i<<2);
				vertices.push(y);
				i += 2;
				var z = bytes.getDouble(i<<2);
				vertices.push(z);
				i += 2;
			}

			var triangleCount = bytes.getInt32(i++<<2);
			var indexes = [];
			for ( _ in 0...triangleCount ) {
				indexes.push(bytes.getInt32(i++<<2));
				indexes.push(bytes.getInt32(i++<<2));
				indexes.push(bytes.getInt32(i++<<2));
			}

			out.push({ vertices: vertices, indexes: indexes });
		}

		sys.FileSystem.deleteFile(fileName);
		sys.FileSystem.deleteFile(outFile);

		return out;
		#end

		#if (hl && hl_ver >= version("1.15.0"))
		var verticesBytes = new hl.Bytes(vCount * 3 * 4);
		for (idx in 0...vCount) {
			var x = vertices[idx * 3];
			var y = vertices[idx * 3 + 1];
			var z = vertices[idx * 3 + 2];
			verticesBytes.setF32(4 * idx * 3, x);
			verticesBytes.setF32(4 * (idx * 3 + 1), y);
			verticesBytes.setF32(4 * (idx * 3 + 2), z);
		}

		var indexesBytes = new hl.Bytes(indexes.length * 4);
		for (idx in 0...indexes.length)
			indexesBytes.setI32(4 * idx, indexes[idx]);

		var startStamp = haxe.Timer.stamp();
		var vhacdInstance = new hxd.tools.VHACD();
		var p = new hxd.tools.VHACD.Parameters();
		p.maxConvexHulls = params.maxConvexHulls;
		p.maxResolution = params.resolution;
		vhacdInstance.compute(verticesBytes, vCount, indexesBytes, triCount, p);
		var convexHullCount = vhacdInstance.getConvexHullCount();
		if ( convexHullCount == 0 )
			return null;

		var convexHull = new hxd.tools.VHACD.ConvexHull();
		for ( i in 0...convexHullCount) {
			vhacdInstance.getConvexHull(i, convexHull);
			var pointCount = convexHull.pointCount;
			var pos = 0;
			var pointsBytes = convexHull.points;
			var vertices = [];
			for ( _ in 0...pointCount ) {
				var x = pointsBytes.getF64(8*pos++);
				var y = pointsBytes.getF64(8*pos++);
				var z = pointsBytes.getF64(8*pos++);
				vertices.push(x);
				vertices.push(y);
				vertices.push(z);
			}

			var triangleCount = convexHull.triangleCount;
			var triangles = convexHull.triangles;
			var pos = 0;
			var indexes = [];
			for ( _ in 0...triangleCount ) {
				indexes.push(triangles.getI32(4*pos++));
				indexes.push(triangles.getI32(4*pos++));
				indexes.push(triangles.getI32(4*pos++));
			}
			out.push({ vertices : vertices, indexes : indexes });
		}
		vhacdInstance.release();

		return out;
		#end

		return out;
	}

	/**
		Returns a copy of the mesh scaled by `f`.
	**/
	public static function scale(vertices : Array<Float>, indexes : Array<Int>, f : Float) {
		var out : { vertices: Array<Float>, indexes : Array<Int> } = { vertices : vertices.copy(), indexes : indexes.copy() };
		var idx = 0;
		while (idx < indexes.length) {
			var p = new h3d.col.Point(vertices[indexes[idx] * 3], vertices[indexes[idx] * 3 + 1], vertices[indexes[idx] * 3 + 2]);
			p *= f;
			out.vertices[indexes[idx] * 3] = p.x;
			out.vertices[indexes[idx] * 3 + 1] = p.y;
			out.vertices[indexes[idx] * 3 + 2] = p.z;
			idx++;
		}

		return out;
	}

	static function tmpFile(name : String): String {
		#if (sys || nodejs)
		var tmp = Sys.getEnv("TMPDIR");
		if( tmp == null ) tmp = Sys.getEnv("TMP");
		if( tmp == null ) tmp = Sys.getEnv("TEMP");
		if( tmp == null ) tmp = ".";
		return tmp+"/"+name+Date.now().getTime()+"_"+Std.random(0x1000000)+".bin";
		#else
		return null;
		#end
	}
}

/**
	A collider using a mesh.
**/
class MeshCollider extends Collider {
	/**
		The number of vertices.
	**/
	public var vertexCount : Int;
	/**
		The position of the vertices in the data.
	**/
	public var vertexPosition : DataPosition;
	/**
		The number of indexes.
	**/
	public var indexCount : Int;
	/**
		The position of the indexes in the data.
	**/
	public var indexPosition : DataPosition;
	/**
		Creates the collider.
	**/
	public function new() {
		type = Mesh;
	}
}

/**
	A collider made of several colliders.
**/
class GroupCollider extends Collider {
	/**
		The colliders.
	**/
	public var colliders : Array<Collider>;
	/**
		Creates the collider.
	**/
	public function new() {
		type = Group;
	}
}

/**
	A sphere collider.
**/
class SphereCollider extends Collider {
	/**
		The center of the sphere.
	**/
	public var position : h3d.Vector;
	/**
		The radius of the sphere.
	**/
	public var radius : Float;
	/**
		Creates the collider.
	**/
	public function new() {
		type = Sphere;
	}
}

/**
	A box collider.
**/
class BoxCollider extends Collider {
	/**
		The center of the box.
	**/
	public var position : h3d.Vector;
	/**
		The half size of the box on each axis.
	**/
	public var halfExtent : h3d.Vector;
	/**
		The rotation of the box (Euler angles).
	**/
	public var rotation : h3d.Vector;
	/**
		Creates the collider.
	**/
	public function new() {
		type = Box;
	}
}

/**
	A capsule collider.
**/
class CapsuleCollider extends Collider {
	/**
		The center of the capsule.
	**/
	public var position : h3d.Vector;
	/**
		The half segment of the capsule axis.
	**/
	public var halfExtent : h3d.Vector;
	/**
		The radius of the capsule.
	**/
	public var radius : Float;
	/**
		Creates the collider.
	**/
	public function new() {
		type = Capsule;
	}
}

/**
	A cylinder collider.
**/
class CylinderCollider extends Collider {
	/**
		The center of the cylinder.
	**/
	public var position : h3d.Vector;
	/**
		The half segment of the cylinder axis.
	**/
	public var halfExtent : h3d.Vector;
	/**
		The radius of the cylinder.
	**/
	public var radius : Float;
	/**
		Creates the collider.
	**/
	public function new() {
		type = Cylinder;
	}
}

/**
	A collider without shape.
**/
class EmptyCollider extends Collider {
	/**
		Creates the collider.
	**/
	public function new() {
		type = Empty;
	}
}

/**
	A material stored in the file.
**/
class Material {

	/**
		The name of the material.
	**/
	public var name : String;
	/**
		The properties of the material.
	**/
	public var props : Properties;
	/**
		The path of the diffuse texture.
	**/
	public var diffuseTexture : Null<String>;
	/**
		The path of the specular texture.
	**/
	public var specularTexture : Null<String>;
	/**
		The path of the normal map.
	**/
	public var normalMap : Null<String>;
	/**
		The blend mode.
	**/
	public var blendMode : h3d.mat.BlendMode;

	/**
		Creates a material.
	**/
	public function new() {
	}
}

/**
	A joint of a skin.
**/
class SkinJoint {
	/**
		The name of the joint.
	**/
	public var name : String;
	/**
		The properties of the joint.
	**/
	public var props : Properties;
	/**
		The index of the parent joint, or `-1`.
	**/
	public var parent : Index<SkinJoint>;
	/**
		The default transform of the joint, relative to its parent.
	**/
	public var position : Position;
	/**
		The index of the joint in the skinning matrices, or `-1` if no vertex uses it.
	**/
	public var bind : Int;
	/**
		The inverse bind transform of the joint.
	**/
	public var transpos : Null<Position>;
	/**
		Creates a joint.
	**/
	public function new() {
	}
}

/**
	A part of a skin drawn separately, to limit the number of joints per draw call.
**/
class SkinSplit {
	/**
		The material of the part.
	**/
	public var materialIndex : Int;
	/**
		The joints used by the part.
	**/
	public var joints : Array<Index<SkinJoint>>;
	/**
		Creates a part.
	**/
	public function new() {
	}
}

/**
	The skeleton of a skinned model.
**/
class Skin {
	/**
		The name of the skin.
	**/
	public var name : String;
	/**
		The properties of the skin.
	**/
	public var props : Properties;
	/**
		The joints.
	**/
	public var joints : Array<SkinJoint>;
	/**
		The parts of the skin, or `null` if it is drawn at once.
	**/
	public var split : Null<Array<SkinSplit>>;
	/**
		Creates a skin.
	**/
	public function new() {
	}
}

/**
	A node of the hierarchy of the file: an object, a mesh or a skinned mesh.
**/
class Model {
	/**
		The name of the model.
	**/
	public var name : String;
	/**
		The properties of the model.
	**/
	public var props : Properties;
	/**
		The index of the parent model, or `-1`.
	**/
	public var parent : Index<Model>;
	/**
		The name of the joint the model follows, when it is attached to a joint.
	**/
	public var follow : Null<String>;
	/**
		The transform of the model, relative to its parent.
	**/
	public var position : Position;
	/**
		The index of the geometry, or `-1` for an object without mesh.
	**/
	public var geometry : Index<Geometry>;
	/**
		The materials of the geometry.
	**/
	public var materials : Null<Array<Index<Material>>>;
	/**
		The skin of the model, or `null`.
	**/
	public var skin : Null<Skin>;
	/**
		The models of the lower levels of detail.
	**/
	public var lods : Array<Index<Model>>;
	/**
		The index of the collider of the model.
	**/
	public var collider : Null<Index<Collider>>;
	/**
		The indexes of the colliders of the model.
	**/
	public var colliders : Null<Array<Index<Collider>>>;
	/**
		Creates a model.
	**/
	public function new() {
	}

	/**
		Returns the name of the model without its `LOD0` suffix.
	**/
	public function getObjectName() {
		if ( name == null )
			return name;
		var reg = ~/_*-*LOD0/;
		return reg.replace(name, '');
	}

	/**
		Tells if the model is a lower level of detail (its name contains `LOD` but not `LOD0`).
	**/
	public function isLOD() {
		return name != null && name.indexOf("LOD") >= 0 && name.indexOf("LOD0") < 0;
	}

	/**
		Tells if the model is the `LOD0` model of the given model name.
	**/
	public function isLOD0(modelName : String) {
		return name != null && StringTools.contains(name, modelName) && StringTools.contains(name, "LOD0");
	}

	/**
		Returns the name of the level of detail `i` of the model.
	**/
	public function toLODName(i : Int) {
		return name + "LOD" + i;
	}

	/**
		Returns the level of detail and the model name from the name (with a `LOD<n>` prefix or suffix), or `-1` and `null`.
	**/
	public function getLODInfos() : { lodLevel : Int , modelName : String } {
		var keyword = "LOD";
		if ( name == null || name.length <= keyword.length )
			return { lodLevel : -1, modelName : null };

		// Test prefix
		if ( name.substr(0, keyword.length) == keyword) {
			var parsedInt = Std.parseInt(name.substr( keyword.length, 1 ));
			if (parsedInt != null) {
				if ( Std.parseInt( name.substr( keyword.length + 1, 1 ) ) != null )
					throw 'Did not expect a second number after LOD in ${name}';
				return { lodLevel : parsedInt, modelName : name.substr(keyword.length) };
			}
		}

		// Test suffix
		var maxCursor = name.length - keyword.length - 1;
		if ( name.substr( maxCursor, keyword.length ) == keyword ) {
			var parsedInt = Std.parseInt( name.charAt( name.length - 1) );
			if ( parsedInt != null ) {
				return { lodLevel : parsedInt, modelName : name.substr( 0, maxCursor ) };
			}
		}

		return { lodLevel : -1, modelName : null };
	}

	/**
		Tells if the model is a collider (its name ends with `_Collider`).
	**/
	public function isCollider() {
		if( name == null )
			return false;
		var idx = name.lastIndexOf("_");
		if( idx < 0 )
			return false;
		return StringTools.startsWith(name.substr(idx), "_Collider");
	}
}

/**
	The animated components of an animated object.
**/
enum AnimationFlag {
	/**
		The position is animated.
	**/
	HasPosition;
	/**
		The rotation is animated.
	**/
	HasRotation;
	/**
		The scale is animated.
	**/
	HasScale;
	/**
		The texture coordinates offset is animated.
	**/
	HasUV;
	/**
		The alpha is animated.
	**/
	HasAlpha;
	/**
		The object has a single frame of data, used for the whole animation.
	**/
	SingleFrame;
	/**
		Custom properties are animated (see `AnimationObject.props`).
	**/
	HasProps;
	/**
		Reserved for future use.
	**/
	Reserved;
}

/**
	An object animated by an animation.
**/
class AnimationObject {
	/**
		The name of the object.
	**/
	public var name : String;
	/**
		The animated components.
	**/
	public var flags : haxe.EnumFlags<AnimationFlag>;
	/**
		The names of the animated properties.
	**/
	public var props : Array<String>;
	/**
		Creates an animated object.
	**/
	public function new() {
	}
	/**
		Returns the number of floats per frame.
	**/
	public function getStride() {
		var stride = 0;
		if( flags.has(HasPosition) ) stride += 3;
		if( flags.has(HasRotation) ) stride += 3;
		if( flags.has(HasScale) ) stride += 3;
		if( flags.has(HasUV) ) stride += 2;
		if( flags.has(HasAlpha) ) stride += 1;
		if( flags.has(HasProps) ) stride += props.length;
		return stride;
	}
}

/**
	An event of an animation.
**/
class AnimationEvent {
	/**
		The frame of the event.
	**/
	public var frame : Int;
	/**
		The data of the event.
	**/
	public var data : String;
	/**
		Creates an event.
	**/
	public function new() {
	}
}

/**
	An animation stored in the file.
**/
class Animation {
	/**
		The name of the animation.
	**/
	public var name : String;
	/**
		The properties of the animation.
	**/
	public var props : Properties;
	/**
		The number of frames.
	**/
	public var frames : Int;
	/**
		The number of frames per second.
	**/
	public var sampling : Float;
	/**
		The playback speed.
	**/
	public var speed : Float;
	/**
		Tells if the animation loops.
	**/
	public var loop : Bool;
	/**
		The animated objects.
	**/
	public var objects : Array<AnimationObject>;
	/**
		The events, or `null`.
	**/
	public var events : Null<Array<AnimationEvent>>;
	/**
		The position of the frames in the data.
	**/
	public var dataPosition : DataPosition;
	/**
		Creates an animation.
	**/
	public function new() {
	}
}

/**
	The content of a HMD file (the binary model format of Heaps, converted from FBX): the description of the models, geometries, materials, animations and colliders, and the binary data of the vertices and frames.
**/
class Data {

	/**
		The version of the format written.
	**/
	public static inline var CURRENT_VERSION = 6;

	/**
		The version of the file.
	**/
	public var version : Int;
	/**
		The properties of the file.
	**/
	public var props : Properties;
	/**
		The geometries.
	**/
	public var geometries : Array<Geometry>;
	/**
		The materials.
	**/
	public var materials : Array<Material>;
	/**
		The models.
	**/
	public var models : Array<Model>;
	/**
		The animations.
	**/
	public var animations : Array<Animation>;
	/**
		The blend shapes.
	**/
	public var shapes : Array<BlendShape>;
	/**
		The colliders.
	**/
	public var colliders : Array<Collider>;
	/**
		The position of the binary data in the file.
	**/
	public var dataPosition : Int;
	/**
		The binary data, when loaded.
	**/
	public var data : haxe.io.Bytes;

	/**
		Creates empty data.
	**/
	public function new() {
	}

}
