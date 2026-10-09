package h3d.shader;

/**
	Multiplies the output color by `color`, blended by `amount`.
**/
class ColorMult extends hxsl.Shader {

	static var SRC = {
		var pixelColor : Vec4;

		@perInstance @param var color : Vec4;
		@param var amount : Float = 1.0;

		function fragment() {
			pixelColor.rgba = mix(pixelColor.rgba, pixelColor.rgba * color, amount);
		}

	};

}