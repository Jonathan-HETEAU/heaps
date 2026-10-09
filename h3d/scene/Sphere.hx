package h3d.scene;

/**
	A debug wireframe sphere, drawn as three orthogonal circles of 32 segments.

	It is meant for visualizing positions, radii or colliders: it has no collider itself and is not a solid mesh
	(use `h3d.prim.Sphere` with a `Mesh` for that).
**/
class Sphere extends Graphics {

	/**
		The line color, in `0xRRGGBB` format. Changes are applied the next time `radius` is set.
	**/
	public var color : Int;
	/**
		The sphere radius. Setting it redraws the lines.
	**/
	public var radius(default, set) : Float;

	/**
		Creates a wireframe sphere.
		@param color The line color, in `0xRRGGBB` format (red by default, the alpha byte is ignored).
		@param radius The sphere radius.
		@param depth If `false`, the sphere is always drawn on top of the scene (depth test disabled).
		@param parent An optional parent object.
	**/
	public function new( ?color = 0xFFFF0000, ?radius : Float=1.0, ?depth = true, ?parent) {
		super(parent);
		this.color = color;
		this.radius = radius;
		if( !depth ) material.mainPass.depth(true, Always);
	}

	function set_radius(v: Float) {
		this.radius = v;
		refresh();
		return v;
	}

	function refresh() {
		clear();
		lineStyle(1, color);

		var nsegments = 32;

		inline function circle(f) {
			for(i in 0...nsegments) {
				var c = hxd.Math.cos(i / (nsegments - 1) * hxd.Math.PI * 2.0) * radius;
				var s = hxd.Math.sin(i / (nsegments - 1) * hxd.Math.PI * 2.0) * radius;
				f(i, c, s);
			}
		}
		inline function seg(i, x, y, z) {
			if(i == 0)
				moveTo(x, y, z);
			else
				lineTo(x, y, z);
		}

		circle(function(i, c, s) return seg(i, c, s, 0));
		circle(function(i, c, s) return seg(i, 0, c, s));
		circle(function(i, c, s) return seg(i, c, 0, s));
	}

	override function getLocalCollider() {
		return null;
	}

	override function sync(ctx) {
		super.sync(ctx);
	}

}