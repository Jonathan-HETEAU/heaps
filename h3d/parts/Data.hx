package h3d.parts;

/**
	A value of a particle property, evaluated at a time `t` (the fraction of the particle life, or of the emitter loop,
	from `0` to `1`).
**/
enum Value {
	/**
		A constant `v`.
	**/
	VConst( v : Float );
	/**
		`start + len * t`
	**/
	VLinear( start : Float, len : Float );
	/**
		`start + len * t ^ pow`
	**/
	VPow( start : Float, len : Float, pow : Float );
	/**
		`sin(t * freq) * ampl + offset`
	**/
	VSin( freq : Float, ampl :  Float, offset : Float );
	/**
		`cos(t * freq) * ampl + offset`
	**/
	VCos( freq : Float, ampl :  Float, offset : Float );
	/**
		A polynomial of coefficients `values` (from degree 0); `points` are the control points it was computed from (for editors).
	**/
	VPoly( values : Array<Float>, points : Array<Float> );
	/**
		A random value between `start` and `start + len`, chosen per particle.
	**/
	VRandom( start : Float, len : Float, converge : Converge );
	/**
		A value computed by a function of the particle.
	**/
	VCustom( p : Particle -> Float );
}

/**
	How the range of a `VRandom` value changes over time.
**/
enum Converge {
	/**
		The range stays the same.
	**/
	No;
	/**
		The range grows from `0` at the start.
	**/
	Start;
	/**
		The range shrinks to `0` at the end.
	**/
	End;
}

/**
	The volume the particles are emitted from.
**/
enum Shape {
	/**
		Particles start at a random height along the Z axis, up to `size`, and move along Z.
	**/
	SLine( size : Value );
	/**
		A sphere: particles move outwards.
	**/
	SSphere( radius : Value );
	/**
		A cone around the Z axis, with the given opening angle in radians: particles move away from its apex.
	**/
	SCone( radius : Value, angle : Value  );
	/**
		A disc in the XY plane: particles move outwards.
	**/
	SDisc( radius : Value );
	/**
		A custom function setting the initial position and direction of each particle.
	**/
	SCustom( initPartPosDir : Emitter -> Particle -> Void ); // Bool = on shell
}

/**
	A 3D vector whose components are `Value`s.
**/
class ValueXYZ {

	/**
		The X component.
	**/
	public var vx : Value;
	/**
		The Y component.
	**/
	public var vy : Value;
	/**
		The Z component.
	**/
	public var vz : Value;

	/**
		Creates the vector.
	**/
	public function new(x, y, z) {
		this.vx = x;
		this.vy = y;
		this.vz = z;
	}

}

/**
	A key of a color gradient: the color at a given time.
**/
class ColorKey {

	/**
		The time of the key, from `0` to `1`.
	**/
	public var time : Float;
	/**
		The red component.
	**/
	public var r : Float;
	/**
		The green component.
	**/
	public var g : Float;
	/**
		The blue component.
	**/
	public var b : Float;
	/**
		The next key.
	**/
	public var next : ColorKey;

	/**
		Creates a key.
	**/
	public function new(time, r, g, b) {
		this.time = time;
		this.r = r;
		this.g = g;
		this.b = b;
	}

}

/**
	The blend mode of the particles.
**/
enum BlendMode {
	/**
		Additive blending.
	**/
	Add;
	/**
		Alpha blending.
	**/
	Alpha;
	/**
		Soft additive blending (saturates less).
	**/
	SoftAdd;
}

/**
	The drawing order of the particles.
**/
enum SortMode {
	/**
		New particles are drawn in front.
	**/
	Front;
	/**
		New particles are drawn behind.
	**/
	Back;
	/**
		Sorted by distance to the camera, farthest first.
	**/
	Sort;
	/**
		Sorted by distance to the camera, nearest first.
	**/
	InvSort;
}

/**
	A source of random numbers for the particle values.
**/
interface Randomized {
	/**
		Returns a random number between `0` and `1`.
	**/
	public function rand() : Float;
}

/**
	The settings of a CPU particle emitter (`Emitter`), usually edited in an editor and saved with `haxe.Serializer`.
**/
class State {

	// material
	/**
		The path of the particle texture, or `null` for the default one.
	**/
	public var textureName : String;
	/**
		The tiles of the particle texture (several for animated particles).
	**/
	public var frames : Array<h2d.Tile>;
	/**
		The blend mode.
	**/
	public var blendMode : BlendMode;
	/**
		The drawing order.
	**/
	public var sortMode : SortMode;
	/**
		If `true`, the particles are oriented in 3D instead of facing the camera.
	**/
	public var is3D : Bool;
	/**
		If `true`, the texture is used as an alpha map.
	**/
	public var isAlphaMap : Bool;

	// emit
	/**
		The emitter restarts at the end of its life.
	**/
	public var loop	: Bool;
	/**
		The number of particles emitted per second.
	**/
	public var emitRate : Value;
	/**
		Additional particles emitted at once at given times.
	**/
	public var bursts : Array<{ time : Float, count : Int }>;
	/**
		The maximum number of particles alive.
	**/
	public var maxParts : Int;
	/**
		The volume the particles are emitted from.
	**/
	public var shape : Shape;
	/**
		Emits from the surface of the shape instead of its volume.
	**/
	public var emitFromShell : Bool;
	/**
		The particles move with the emitter instead of staying in world space.
	**/
	public var emitLocal : Bool;
	/**
		Emits the particles along the movement of the emitter.
	**/
	public var emitTrail : Bool;
	/**
		Emits in random directions instead of the shape direction.
	**/
	public var randomDir : Bool;

	// system globals
	/**
		The duration of an emitter loop, in seconds.
	**/
	public var globalLife : Float;
	/**
		A speed multiplier of all the particles, over the emitter life.
	**/
	public var globalSpeed : Value;
	/**
		A size multiplier of all the particles, over the emitter life.
	**/
	public var globalSize : Value;

	// particle globals
	/**
		The life of a particle, in seconds.
	**/
	public var life : Value;
	/**
		The size of a particle, over its life.
	**/
	public var size : Value;
	/**
		The height to width ratio of a particle.
	**/
	public var ratio : Value;
	/**
		The rotation speed of a particle.
	**/
	public var rotation : Value;
	/**
		The speed of a particle.
	**/
	public var speed : Value;
	/**
		The gravity applied to the particles.
	**/
	public var gravity : Value;

	// effects
	/**
		An optional force applied to the particles.
	**/
	public var force : Null<ValueXYZ>;
	/**
		An optional color gradient over the particle life.
	**/
	public var colors : Null<Array<{ time : Float, color : Int }>>;
	/**
		The light intensity of a particle, over its life.
	**/
	public var light : Value;
	/**
		The opacity of a particle, over its life.
	**/
	public var alpha : Value;

	// collide
	/**
		The particles collide with the emitter collider (see `Emitter.collider`).
	**/
	public var collide : Bool;
	/**
		The particles are removed when they collide.
	**/
	public var collideKill : Bool;
	/**
		The fraction of the speed kept when bouncing.
	**/
	public var bounce : Float;

	// animation
	/**
		The animation frame of a particle, over its life, for animated textures.
	**/
	public var frame : Null<Value>;

	// extra
	/**
		The delay before the emitter starts, in seconds.
	**/
	public var delay : Float;
	/**
		An optional function called to update each particle every frame.
	**/
	public var update : Particle -> Void;

	/**
		Creates empty settings. Call `setDefaults`.
	**/
	public function new() {
	}

	/**
		Sets the default settings.
	**/
	public function setDefaults() {
		// material
		textureName = null;
		frames = null;
		blendMode = SoftAdd;
		sortMode = Back;
		is3D = false;
		isAlphaMap = false;
		// emit
		loop = true;
		emitRate = VConst(100);
		bursts = [];
		maxParts = 1000;
		shape = SCone(VConst(1),VConst(Math.PI/4));
		emitFromShell = false;
		emitLocal = false;
		randomDir = false;
		// system globals
		globalLife = 1;
		globalSpeed = VConst(1);
		globalSize = VConst(1);
		// particles globals
		life = VConst(1);
		size = VConst(1);
		ratio = VConst(1);
		rotation = VConst(0);
		speed = VConst(0.1);
		gravity = VConst(0);
		// effects
		force = null;
		colors = null;
		light = VConst(1);
		alpha = VConst(1);
		// collide
		collide = false;
		collideKill = false;
		bounce = 0;
		// extra
		delay = 0.;
	}

	/**
		Returns the value `val` multiplied by `v`.
	**/
	@:noDebug public function scale( val : Value, v : Float ) {
		return switch( val ) {
		case VConst(c): VConst(c * v);
		case VRandom(start, len, c): VRandom(start * v, len * v, c);
		case VLinear(start, len): VLinear(start * v, len * v);
		case VPow(start, len, p): VPow(start * v, len * v, p);
		case VSin(f, a, o): VSin(f, a * v, o * v);
		case VCos(f, a, o): VCos(f, a * v, o * v);
		case VPoly(values, points): VPoly([for( v2 in values ) v * v2], [for( i in 0...points.length ) { var p = points[i]; if( i & 1 == 0 ) p else p * v; } ]);
		case VCustom(f): VCustom(function(p) return f(p) * v);
		}
	}

	/**
		Evaluates the value `v` at `time` (from `0` to `1`) for the particle `p`.
	**/
	public static inline function eval( v : Value, time : Float, r : Randomized, p : Particle ) : Float {
		return switch( v ) {
		case VConst(c): c;
		case VRandom(s, l, c): s + (switch( c ) { case No: l; case Start: l * time; case End: l * (1 - time); }) * r.rand();
		case VLinear(s, l): s + l * time;
		case VPow(s, l, p): s + Math.pow(time, p) * l;
		case VSin(f, a, o): Math.sin(time * f) * a + o;
		case VCos(f, a, o): Math.cos(time * f) * a + o;
		case VPoly(values,_):
			var y = 0.0;
			var j = values.length - 1;
			while( j >= 0 ) {
				y = values[j] + (time * y);
				j--;
			}
			y;
		case VCustom(f): f(p);
		}
	}

	/**
		The default particle texture for alpha blending.
	**/
	public static var defPartAlpha = hxd.res.Embed.getResource("h3d/parts/defaultAlpha.png");
	/**
		The default particle texture.
	**/
	public static var defPart = hxd.res.Embed.getResource("h3d/parts/default.png");

	/**
		Initializes `frames` from the texture.
	**/
	public function initFrames() {
		if( textureName == null ) {
			var t = switch( blendMode ) {
			case Alpha: defPartAlpha.toTile();
			default: defPart.toTile();
			}
			frames = [t];
		} else if( frame != null && frames.length == 1 ) {
			var t = frames[0];
			var nw = Std.int(t.width / t.height);
			var nh = Std.int(t.height / t.width);
			if( nw > 1 ) {
				frames = [];
				for( i in 0...nw )
					frames.push(t.sub(i * t.height, 0, t.height, t.height));
			} else if( nh > 1 ) {
				frames = [];
				for( i in 0...nh )
					frames.push(t.sub(0, i * t.width, t.width, t.width));
			}
		}
	}

	/**
		Loads serialized settings.
		@param loadTexture A function loading the particle texture from its path.
	**/
	public static function load( b : haxe.io.Bytes, loadTexture : String -> h2d.Tile ) {
		var state : State = haxe.Unserializer.run(b.toString());
		if( state.textureName != null ) {
			var t = loadTexture(state.textureName);
			if( t == null ) throw "Could not load " + state.textureName;
			state.frames = [t];
		}
		state.initFrames();
		return state;
	}

}