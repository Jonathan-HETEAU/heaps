package h3d.shader.pbr;

/**
	Multiplies the color by the alpha (premultiplied alpha), for the `AlphaMultiply` blend mode.
**/
class AlphaMultiply extends hxsl.Shader {
	static var SRC = {
		var pixelColor : Vec4;
		function fragment() {
			pixelColor.rgb *= pixelColor.a;
		}
	}
}