package h3d.shader.pbr;

/**
	Displays the light count of each pixel with a color gradient (for the `Performance` display mode).
**/
class PerformanceViewer extends ScreenShader {

	static var SRC = {

		@param var hdrMap : Sampler2D;
		@param var gradient : Sampler2D;

		function fragment() {
			pixelColor = gradient.get(vec2(hdrMap.get(calculatedUV).saturate().r, 0.0));
		}
	};
}
