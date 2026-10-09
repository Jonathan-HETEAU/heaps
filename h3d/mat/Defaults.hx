package h3d.mat;

/**
	Global defaults of the materials.
**/
class Defaults {

	/**
		The default alpha threshold under which pixels are discarded when `killAlpha` is enabled on a texture shader.
	**/
	public static var defaultKillAlphaThreshold = 0.5;
	/**
		The color (`0xAARRGGBB`) of the placeholder used by the drivers for textures not loaded yet or disposed.
	**/
	public static var loadingTextureColor = 0xFFFF00FF;

	/**
		The shader receiving the shadows, added to the materials which receive shadows (`h3d.shader.Shadow` by default).
	**/
	@:isVar public static var shadowShader(get, set) : hxsl.Shader;

	// delay initialization if needed only
	static function get_shadowShader() {
		var s = shadowShader;
		if( s == null ) {
			shadowShader = s = new h3d.shader.Shadow();
			shadowShader.setPriority(-1);
		}
		return s;
	}

	static function set_shadowShader(s) {
		return shadowShader = s;
	}

	/**
		Creates the shader of a volume decal of the given bounds. Can be replaced to use another decal shader.
	**/
	public dynamic static function makeVolumeDecal( bounds : h3d.col.Bounds ) : hxsl.Shader {
		return new h3d.shader.VolumeDecal(bounds.xSize, bounds.ySize);
	}

}
