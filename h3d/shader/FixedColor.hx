package h3d.shader;

/**
	Replaces the output color by a fixed color.
**/
class FixedColor extends hxsl.Shader {

	static var SRC = {
		@param var color : Vec4;
		@const @param var USE_ALPHA : Bool;
		var output : { color : Vec4 };
		function fragment() {
			if( USE_ALPHA ) 
				output.color = color;
			else
				output.color.rgb = color.rgb;
		}
	}

	/**
		Creates the shader with a color in `0xRRGGBB` format and an alpha.
	**/
	public function new( color = 0, alpha = 1. ) {
		super();
		this.color.setColor(color);
		this.color.w = alpha;
		USE_ALPHA = true;
	}

}