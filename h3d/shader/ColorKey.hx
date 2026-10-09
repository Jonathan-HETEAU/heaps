package h3d.shader;

/**
	Discards the pixels of a given color (color keying).
**/
class ColorKey extends hxsl.Shader {

	static var SRC = {
		@param var colorKey : Vec4;
		var textureColor : Vec4;

		function fragment() {
			var cdiff = textureColor - colorKey;
			if( cdiff.dot(cdiff) < 0.00001 ) discard;
		}
	}

	/**
		Creates the shader with the key color `v`, in `0xAARRGGBB` format.
	**/
	public function new( v = 0 ) {
		super();
		colorKey.setColor(v);
	}

}