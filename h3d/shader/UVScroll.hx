package h3d.shader;

/**
	Scrolls the texture coordinates over time.
**/
class UVScroll extends hxsl.Shader {

	static var SRC = {
		@global var global : {
			var time : Float;
		};
		@param var uvSpeed : Vec2;
		var calculatedUV : Vec2;
		function vertex() {
			calculatedUV += uvSpeed * global.time;
		}
	};

	/**
		Creates the shader with a scrolling speed.
	**/
	public function new( vx = 0., vy = 0. ) {
		super();
		uvSpeed.set(vx, vy);
	}

}