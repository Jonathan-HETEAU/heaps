package h3d.parts;

/**
	A particle of a `Particles` set or an `Emitter`.
**/
class Particle implements Data.Randomized {

	var parts : Particles;
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
	var w : Float; // used for sorting

	/**
		The red component of the color.
	**/
	public var r : Float;
	/**
		The green component of the color.
	**/
	public var g : Float;
	/**
		The blue component of the color.
	**/
	public var b : Float;
	/**
		The alpha component of the color.
	**/
	public var a : Float;
	/**
		Alias for `a`.
	**/
	public var alpha(get, set) : Float;

	/**
		The index of the tile in `Particles.frames`.
	**/
	public var frame : Int;

	/**
		The size.
	**/
	public var size : Float;
	/**
		The height to width ratio.
	**/
	public var ratio : Float;
	/**
		The rotation, in radians.
	**/
	public var rotation : Float;

	/**
		The previous particle of the set.
	**/
	public var prev : Particle;
	/**
		The next particle of the set.
	**/
	public var next : Particle;

	// --- Particle emitter ---
	/**
		The time in the particle life, from `0` to `1` (used by emitters).
	**/
	public var time : Float;
	/**
		The inverse of the particle life duration (used by emitters).
	**/
	public var lifeTimeFactor : Float;

	/**
		The X component of the velocity.
	**/
	public var dx : Float;
	/**
		The Y component of the velocity.
	**/
	public var dy : Float;
	/**
		The Z component of the velocity.
	**/
	public var dz : Float;

	/**
		The X component of the force.
	**/
	public var fx : Float;
	/**
		The Y component of the force.
	**/
	public var fy : Float;
	/**
		The Z component of the force.
	**/
	public var fz : Float;

	/**
		The index of the next random value of `randValues`.
	**/
	public var randIndex = 0;
	/**
		The random values of the particle, so that `VRandom` values are stable over its life.
	**/
	public var randValues : Array<Float>;
	// -------------------------

	/**
		Creates a particle.
	**/
	public function new() {
		r = 1;
		g = 1;
		b = 1;
		a = 1;
		frame = 0;
	}

	inline function get_alpha() return a;
	inline function set_alpha(v) return a = v;

	/**
		Sets the color, from `0xRRGGBB`, and the alpha.
	**/
	public function setColor( color : Int, alpha = 1. ) {
		a = alpha;
		r = ((color >> 16) & 0xFF) / 255.;
		g = ((color >> 8) & 0xFF) / 255.;
		b = (color & 0xFF) / 255.;
	}

	/**
		Removes the particle from its set.
	**/
	public function remove() {
		if( parts != null ) {
			@:privateAccess parts.kill(this);
			parts = null;
		}
	}

	/**
		Evaluates the value `v` at `time` for this particle.
	**/
	public inline function eval( v : Data.Value, time : Float ) {
		return Data.State.eval(v, time, this, this);
	}

	/**
		Returns the next random value of the particle (generated once and kept).
	**/
	public function rand() : Float {
		if( randValues == null ) randValues = [];
		if( randValues.length <= randIndex ) randValues.push(Math.random());
		return randValues[randIndex++];
	}

}