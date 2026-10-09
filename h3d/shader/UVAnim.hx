package h3d.shader;

/**
	Animates the texture coordinates through a grid of frames (a sprite sheet).
**/
class UVAnim extends hxsl.Shader {

	static var SRC = {

		var calculatedUV : Vec2;

		@global var global : {
			var time : Float;
		};
		@param var speed : Float;
		@param var frameDivision : Float;
		@param var totalFrames : Float;
		@param var startTime : Float;
		@const var loop : Bool;

		function vertex() {
			var frame = float(int((global.time - startTime) * speed));
			if( loop ) frame %= totalFrames else frame = min(frame, totalFrames - 1);
			var delta = vec2(1. / frameDivision, 1. / frameDivision) * vec2( frame % frameDivision, float(int(frame / frameDivision)) );
			calculatedUV += delta;
		}
	};

	/**
		Creates the shader.
		@param frameDivision The number of frames on each axis of the texture.
		@param totalFrames The number of frames, or `-1` for all the cells.
		@param speed The number of frames per second.
	**/
	public function new(frameDivision : Int, totalFrames = -1, ?speed = 1.) {
		super();
		if( totalFrames < 0 ) totalFrames = frameDivision;
		this.frameDivision = frameDivision;
		this.totalFrames = totalFrames;
		this.speed = speed;
		this.loop = true;
	}

}