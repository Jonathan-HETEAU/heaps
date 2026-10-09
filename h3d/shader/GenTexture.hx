package h3d.shader;

/**
	Generates simple textures (a disc, see `h3d.mat.Texture.genDisc`).
**/
class GenTexture extends ScreenShader {

	static var SRC = {

		@const var mode : Int;
		@param var color : Vec4;

		function fragment() {
			switch( mode ) {
			case 0:
				pixelColor = output.position.xy.length() > 1 ? vec4(0.) : color;
			}
		}

	}

}