package h3d.scene.pbr;

/**
	Base class of the lights of the PBR renderer (`h3d.scene.pbr.Renderer`).

	Lights with a volume (point, spot, capsule, rectangle) are drawn as their volume in the lighting pass, so they only
	cost for the pixels they cover. Each light owns its `shadows` map.
	See `DirLight`, `PointLight`, `SpotLight`, `CapsuleLight` and `RectangleLight`.
**/
class Light extends h3d.scene.Light {

	var _color : h3d.Vector;
	var primitive : h3d.prim.Primitive;
	/**
		The light power. The intensity is `power * power` (scaled by 100 for point and capsule lights).
	**/
	public var power : Float = 1.;
	/**
		The shadow map of the light. Shadows are disabled by default: set `shadows.mode` to enable them.
	**/
	public var shadows : h3d.pass.Shadows;
	/**
		If `true`, the light color, power, position, direction and shadow map are exposed to the shaders as the
		`mainLight*` globals (`mainLightColor`, `mainLightPower`, `mainLightPos`, `mainLightDir`, `mainLightShadowMap`,
		`mainLightViewProj`).
	**/
	public var isMainLight = false;
	/**
		How much the material ambient occlusion attenuates this light, from `0` (not at all) to `1` (fully).
	**/
	public var occlusionFactor : Float = 0.;
	/**
		If `true`, the light also lights the objects drawn in the forward passes (`"forward"` and `"forwardAlpha"`),
		such as transparent objects.
	**/
	public var enableForward : Bool = true;

	function new(shader,?parent) {
		super(shader,parent);
		_color = new h3d.Vector(1,1,1);
		if( shadows == null ) shadows = new h3d.pass.Shadows(this);
	}

	override function onRemove() {
		super.onRemove();
		if( shadows != null ) shadows.dispose();
	}

	override function sync(ctx) {
		super.sync(ctx);
		if(isMainLight){
			ctx.setGlobal("mainLightColor", _color);
			ctx.setGlobal("mainLightPower", power);
			ctx.setGlobal("mainLightPos",new h3d.Vector(absPos.tx, absPos.ty, absPos.tz));
			ctx.setGlobal("mainLightDir", absPos.front());
			ctx.setGlobal("mainLightShadowMap", shadows.getShadowTex());
			ctx.setGlobal("mainLightViewProj", shadows.getShadowViewProj());
		}
	}

	override function get_color() {
		return _color;
	}

	override function set_color(v:h3d.Vector) {
		return _color = v;
	}

	/**
		Returns the light intensity, computed from `power`.
	**/
	public function getIntensity() : Float {
		return power * power;
	}

	/**
		Tells if the light volume intersects `frustum`. Lights outside of the camera frustum are not drawn.
	**/
	public function inFrustum(frustum : h3d.col.Frustum) {
		return true;
	}

	function getParentScale() {
		var minScale = 1.0;
		var p = parent;
		while (p != null) {
			minScale *= hxd.Math.min(p.scaleX, hxd.Math.min(p.scaleY, p.scaleZ));
			p = p.parent;
		}
		return minScale;
	}
}
