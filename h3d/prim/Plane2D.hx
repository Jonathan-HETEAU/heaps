package h3d.prim;

/**
	A full screen quad (two triangles covering clip space from -1 to 1), used to draw screen passes (see `h3d.pass.ScreenFx`).
**/
class Plane2D extends Primitive {

	/**
		Creates the quad. Use the shared instance returned by `get` instead.
	**/
	public function new() {
	}

	override function triCount() {
		return 2;
	}

	override function vertexCount() {
		return 4;
	}

	override function alloc( engine : h3d.Engine ) {
		var v = new hxd.FloatBuffer();
		v.push( -1);
		v.push( -1);
		v.push( 0);
		v.push( 1 );

		v.push( -1);
		v.push( 1);
		v.push( 0);
		v.push( 0);

		v.push( 1);
		v.push( -1);
		v.push( 1);
		v.push( 1);

		v.push( 1);
		v.push( 1);
		v.push( 1);
		v.push( 0);

		buffer = h3d.Buffer.ofFloats(v, hxd.BufferFormat.XY_UV);
	}

	override function render(engine:h3d.Engine) {
		if( buffer == null || buffer.isDisposed() ) alloc(engine);
		engine.renderQuadBuffer(buffer);
	}

	/**
		Returns the shared instance.
	**/
	public static function get() {
		var engine = h3d.Engine.getCurrent();
		var inst = @:privateAccess engine.resCache.get(Plane2D);
		if( inst == null ) {
			inst = new Plane2D();
			@:privateAccess engine.resCache.set(Plane2D, inst);
		}
		return inst;
	}

}