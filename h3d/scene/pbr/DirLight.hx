package h3d.scene.pbr;

/**
	A directional light of the PBR renderer, such as the sun: its rays are parallel and it lights the whole scene.

	The light direction is the X axis of the object (see `Object.setDirection`).
**/
class DirLight extends Light {

	var pbr : h3d.shader.pbr.Light.DirLight;

	/**
		Creates a directional light.
		@param dir The light direction (towards which the light shines).
		@param parent An optional parent object.
		@param cascade If `true`, uses cascaded shadow maps (`h3d.pass.CascadeShadowMap`), better for large scenes.
		Otherwise uses a single `h3d.pass.DirShadowMap`.
	**/
	public function new(?dir: h3d.Vector, ?parent, ?cascade) {
		pbr = new h3d.shader.pbr.Light.DirLight();
		shadows = cascade ? new h3d.pass.CascadeShadowMap(this) : new h3d.pass.DirShadowMap(this);
		super(pbr,parent);
		if( dir != null ) setDirection(dir);
	}

	public override function clone( ?o : h3d.scene.Object ) : h3d.scene.Object {
		var dl = o == null ? new DirLight(null) : cast o;
		super.clone(dl);
		return dl;
	}

	override function getShadowDirection( ?v: h3d.Vector ) : h3d.Vector {
		if( v == null ) v = new h3d.Vector();
		v.load(absPos.front());
		return v;
	}

	override function emit(ctx:RenderContext) {
		pbr.lightColor.load(_color);
		pbr.lightColor.scale(getIntensity());
		pbr.lightDir.load(absPos.front());
		pbr.lightDir.scale(-1);
		pbr.lightDir.normalize();
		pbr.occlusionFactor = occlusionFactor;
		super.emit(ctx);
	}

}