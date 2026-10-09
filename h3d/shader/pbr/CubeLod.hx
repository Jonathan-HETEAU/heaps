package h3d.shader.pbr;

/**
	Displays a mip level of a cube texture (used to display the environment as sky).
**/
class CubeLod extends hxsl.Shader {

	static var SRC = {

		var pixelColor : Vec4;
		var transformedNormal : Vec3;
		@param var texture : SamplerCube;
		@param var lod : Float;
		function fragment() {
			pixelColor.rgb *= textureLod(texture,transformedNormal,lod).rgb;
		}

	}

	/**
		Creates the shader with the cube `texture`.
	**/
	public function new(?texture) {
		super();
		this.texture = texture;
	}
}
