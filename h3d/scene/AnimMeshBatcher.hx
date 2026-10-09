package h3d.scene;

/**
	Shader applying the animated transform of the source object to all the instances of an `AnimMeshBatch`.
**/
class AnimMeshBatchShader extends hxsl.Shader {
	static var SRC = {
		@param var animationMatrix : Mat4;

		@global var global : {
			@perObject var modelView : Mat4;
		};

		@input var input : {
			var normal : Vec3;
		};

		var relativePosition : Vec3;
		var transformedNormal : Vec3;
		function vertex() {
			relativePosition = relativePosition * animationMatrix.mat3x4();
			transformedNormal = (input.normal * animationMatrix.mat3() * global.modelView.mat3()).normalize();
		}
	};
}

/**
	A `MeshBatch` whose instances all follow the animated transform of a source mesh (see `AnimMeshBatcher`).
**/
class AnimMeshBatch extends MeshBatch {
	var copyObject : Object;
	var shader : AnimMeshBatchShader;

	/**
		Creates a batch of `primitive` whose instances copy the animated local transform of `copyObject`.
	**/
	public function new(primitive, material, copyObject, ?parent) {
		super(primitive, material, parent);
		shader = new AnimMeshBatchShader();
		material.mainPass.addShader(shader);
		this.copyObject = copyObject;
	}
	override function sync(ctx : RenderContext) {
		super.sync(ctx);
		shader.animationMatrix = copyObject.defaultTransform;
	}
}

/**
	Draws many copies of an animated object with instancing: one `MeshBatch` is created per mesh of the object, and
	all the copies play the same animation in sync.

	Only the transform of each mesh is animated (rigid animations): skeletal deformation is not supported.
**/
class AnimMeshBatcher extends Object {
	var originalObject : Object;

	var batches : Array<MeshBatch> = [];
	/**
		Creates the batches from `object`, which becomes a hidden child used as animation source.
		@param object The object to copy. Play animations on the batcher with `playAnimation`.
		@param spawn Called repeatedly to place the copies: it must fill the given matrix with the world transform of the
		next copy and return `true`, or return `false` when there are no more copies.
		@param parent An optional parent object.
	**/
	public function new(object : h3d.scene.Object, spawn : h3d.Matrix -> Bool, ?parent) {
		super(parent);
		originalObject = object;
		addChild(originalObject);
		originalObject.alwaysSyncAnimation = true;
		originalObject.visible = false;
		for ( m in originalObject.getMeshes() ) {
			var mat : h3d.mat.Material = cast m.material.clone();
			var batch = new AnimMeshBatch(cast(m.primitive,h3d.prim.MeshPrimitive), mat, m, this);
			batch.begin();
			batches.push(batch);
		}

		var tmp = new h3d.Matrix();
		while ( spawn(tmp) ) {
			for ( b in batches ) {
				b.worldPosition = tmp;
				b.emitInstance();
			}
		}
	}

	override function playAnimation(anim : h3d.anim.Animation) {
		return originalObject.playAnimation(anim);
	}
}