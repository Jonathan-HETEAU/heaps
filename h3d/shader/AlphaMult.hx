package h3d.shader;

/**
	Multiplies the alpha by `alpha`.
**/
class AlphaMult extends hxsl.Shader {
	static var SRC = {
		@perInstance @range(0, 1) @param var alpha : Float;
		var pixelColor : Vec4;

		function fragment() {
			pixelColor.a *= alpha;
		}
	}
}