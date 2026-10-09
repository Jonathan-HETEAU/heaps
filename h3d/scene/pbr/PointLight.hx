package h3d.scene.pbr;

/**
	A point light of the PBR renderer, shining in all directions from its position up to `range`.
	Its shadows use a cube shadow map (`h3d.pass.PointShadowMap`).
**/
class PointLight extends Light {

	var pbr : h3d.shader.pbr.Light.PointLight;
	/**
		The radius of the light source: closer than this distance, the light has its full intensity.
	**/
	public var size : Float = 0.;
	/**
		The near plane distance of the shadow map cameras.
	**/
	public var zNear : Float = 0.02;
	/**
		Alias for uniform scale.
	**/
	public var range(get,set) : Float;

	/**
		Creates a point light with a range of 10.
	**/
	public function new(?parent) {
		pbr = new h3d.shader.pbr.Light.PointLight();
		shadows = new h3d.pass.PointShadowMap(this);
		super(pbr,parent);
		range = 10;
		primitive = h3d.prim.Sphere.defaultUnitSphere();
	}

	public override function clone( ?o : h3d.scene.Object ) : h3d.scene.Object {
		var pl = o == null ? new PointLight(null) : cast o;
		super.clone(pl);
		pl.size = size;
		pl.range = range;
		return pl;
	}

	function get_range() {
		return scaleX * getParentScale();
	}

	function set_range(v:Float) {
		setScale(v);
		return v;
	}

	override function getIntensity() : Float {
		var power = power * 10; // base scale
		return power * power;
	}

	override function draw(ctx:RenderContext) {
		primitive.render(ctx.engine);
	}

	override function sync(ctx) {
		super.sync(ctx);

		pbr.lightColor.load(_color);
		var range = hxd.Math.max(range, 1e-10);
		var size = hxd.Math.min(size, range);
		pbr.lightColor.scale(getIntensity());
		pbr.lightPos.set(absPos.tx, absPos.ty, absPos.tz);
		pbr.invLightRange4 = 1 / (range * range * range * range);
		pbr.pointSize = size;
		pbr.occlusionFactor = occlusionFactor;
	}

	var s = new h3d.col.Sphere();
	override function emit(ctx:RenderContext) {
		if( ctx.computingStatic ) {
			super.emit(ctx);
			return;
		}

		if( ctx.pbrLightPass == null )
			throw "Rendering a pbr light require a PBR compatible scene renderer";

		s.x = absPos._41;
		s.y = absPos._42;
		s.z = absPos._43;
		s.r = range;

		if( !inFrustum(ctx.camera.frustum) )
			return;

		super.emit(ctx);
		ctx.emitPass(ctx.pbrLightPass, this);
	}

	override function inFrustum(frustum : h3d.col.Frustum) {
		return frustum.hasSphere(s);
	}
}