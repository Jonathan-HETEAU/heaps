package h3d.shader;

/**
	Multiplies the specular amount by a texture (see `h3d.mat.Material.specularTexture`).
**/
class SpecularTexture extends hxsl.Shader {

	static var SRC = {
		@param var texture : Sampler2D;
		var calculatedUV : Vec2;
		var specColor : Vec3;

		function fragment() {
			specColor *= texture.get(calculatedUV).rgb;
		}
	}

	/**
		Creates the shader with the texture `tex`.
	**/
	public function new(?tex) {
		super();
		this.texture = tex;
	}

}