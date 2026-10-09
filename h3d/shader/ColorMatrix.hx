package h3d.shader;

/**
	Transforms the output color by a matrix (see the color methods of `h3d.Matrix`).
**/
class ColorMatrix extends hxsl.Shader {

	static var SRC = {
		var pixelColor : Vec4;

		@param var matrix : Mat4;
		@const var enabled : Bool = true; // allows for drop shadow toggle

		function fragment() {
			if ( enabled )
				pixelColor = vec4( (vec4(pixelColor.rgb,1.) * matrix).rgb, (pixelColor * matrix).a);
		}

	};

	/**
		Creates the shader with the 16 values of the matrix `m` (identity by default).
	**/
	public function new( ?m : Array<Float> ) {
		super();
		if( m != null ) this.matrix.loadValues(m) else this.matrix.identity();
	}

}