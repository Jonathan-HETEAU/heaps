package h3d.scene.fwd;

/**
	A directional light of the forward renderer, such as the sun: its rays are parallel and it has no position.

	The light direction is the X axis of the object (see `Object.setDirection`).

	```haxe
	var light = new h3d.scene.fwd.DirLight(new h3d.Vector(0.5, 0.5, -0.5), s3d);
	light.color.set(1, 1, 1);
	```
**/
class DirLight extends Light {

	var dshader : h3d.shader.DirLight;

	/**
		Creates a directional light, with a `priority` of 100.
		@param dir The light direction (towards which the light shines).
		@param parent An optional parent object.
	**/
	public function new(?dir: h3d.Vector, ?parent) {
		dshader = new h3d.shader.DirLight();
		super(dshader, parent);
		priority = 100;
		if( dir != null ) setDirection(dir);
	}

	override function get_color() {
		return dshader.color;
	}

	override function set_color(v) {
		return dshader.color = v;
	}

	override function get_enableSpecular() {
		return dshader.enableSpecular;
	}

	override function set_enableSpecular(b) {
		return dshader.enableSpecular = b;
	}

	override function getShadowDirection( ?v: h3d.Vector ) : h3d.Vector {
		if( v == null ) v = new h3d.Vector();
		v.load(absPos.front());
		return v;
	}

	override function emit(ctx) {
		dshader.direction.load(absPos.front());
		dshader.direction.normalize();
		super.emit(ctx);
	}
}