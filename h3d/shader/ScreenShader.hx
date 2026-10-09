package h3d.shader;

/**
	Base class of the full screen shaders used with `h3d.pass.ScreenFx`: it provides the `calculatedUV` of each pixel of
	the screen quad. Extend it and write a `fragment` function.
**/
class ScreenShader extends hxsl.Shader {

	static var SRC = {
		@input var input : {
			position : Vec2,
			uv : Vec2,
		};

		@param var flipY : Float;

		var output : {
			position : Vec4,
			color : Vec4,
		};

		var pixelColor : Vec4;
		var calculatedUV : Vec2;

		function __init__() {
			output.color = pixelColor;
			calculatedUV = input.uv;
		}

		function vertex() {
			output.position = vec4(input.position.x, input.position.y * flipY, 0, 1);
		}
	};

}