package h3d.shader.pbr;

/**
	Converts the color to linear space (approximated by squaring it), for unlit objects drawn in HDR (see `h3d.mat.PbrMaterial`
	`BeforeTonemapping` mode). With `useEmissiveHDR`, the color is also multiplied by `1 + emissive`.
**/
class GammaCorrect extends hxsl.Shader {
	static var SRC = {
		var pixelColor : Vec4;

		@const var useEmissiveHDR : Bool;
		var emissive : Float;

		function fragment() {
			pixelColor.rgb *= pixelColor.rgb;
			// use emissive value to increase light intensity
			if( useEmissiveHDR ) pixelColor.rgb *= 1 + emissive;
		}
	}
}