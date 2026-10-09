package h3d.shader;

/**
	Debug: makes the output opaque, and with `showAlpha` displays the alpha channel as grey levels.
**/
class AlphaChannel extends hxsl.Shader {

	static var SRC = {
		var pixelColor : Vec4;
		@const var showAlpha : Bool;
		function fragment() {
			if( showAlpha ) pixelColor.rgb = pixelColor.aaa;
			pixelColor.a = 1.;
		}
	}

}