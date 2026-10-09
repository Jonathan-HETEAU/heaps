package h3d.mat;

/**
	A bindless handle of a texture: an identifier allowing shaders to access the texture without binding it.
	Requires a driver supporting bindless textures. Created by the driver.
**/
@:allow(h3d.impl.Driver)
class TextureHandle {
	/**
		The texture referenced by the handle.
	**/
	public var texture(default, null) : h3d.mat.Texture;
	/**
		The driver handle value.
	**/
	public var handle(default, null) : haxe.Int64;
	function new(t : h3d.mat.Texture, handle : haxe.Int64) {
		texture = t;
		this.handle = handle;
	}
}