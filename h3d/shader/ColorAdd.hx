package h3d.shader;

/**
	Adds a color to the output color.
**/
class ColorAdd extends hxsl.Shader {

	static var SRC = {
		var pixelColor : Vec4;

		@param var color : Vec3;

		function fragment() {
			pixelColor.rgb += color;
		}

	};

	/**
		Creates the shader with a color in `0xRRGGBB` format.
	**/
	public function new( color : Int = 0 ) {
		super();
		this.color.setColor(color);
	}

}