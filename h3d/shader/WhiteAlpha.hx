package h3d.shader;

/**
	Replaces the texture color by white, keeping its alpha.
**/
class WhiteAlpha extends hxsl.Shader {

	static var SRC = {

		var textureColor : Vec4;

		function fragment() {
			textureColor.rgb = vec3(1.0);
		}

	};


}
