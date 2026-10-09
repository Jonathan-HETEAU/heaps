package h3d.shader.pbr;

/**
	Applies the distortion texture rendered by the `"distortion"` pass to the image.
**/
class Distortion extends h3d.shader.ScreenShader {

	static var SRC = {

		@param var distortion : Sampler2D;

		function fragment() {
			var baseUV = calculatedUV;
			var distortionVal = distortion.get(calculatedUV).rg;
			calculatedUV = baseUV + distortionVal;
		}
	};
}
