package hxsl;

/**
	The runtime type of `Vec3` (and `Vec2`) shader parameters.
**/
typedef Vec = h3d.Vector;
/**
	The runtime type of `Vec4` shader parameters.
**/
typedef Vec4 = h3d.Vector4;
/**
	The runtime type of integer vector parameters.
**/
typedef IVec = Array<Int>;
/**
	The runtime type of boolean vector parameters.
**/
typedef BVec = Array<Bool>;
/**
	The runtime type of matrix parameters.
**/
typedef Matrix = h3d.Matrix;
/**
	The runtime type of `Sampler2D` and `SamplerCube` parameters.
**/
typedef Texture = h3d.mat.Texture;
/**
	The runtime type of texture array parameters.
**/
typedef TextureArray = h3d.mat.TextureArray;
/**
	The runtime type of the texture of a `Channel` parameter.
**/
typedef TextureChannel = h3d.mat.Texture;
/**
	The runtime type of texture handle parameters (bindless textures).
**/
typedef TextureHandle = h3d.mat.TextureHandle;
/**
	The runtime type of buffer parameters.
**/
typedef Buffer = h3d.Buffer;
/**
	The runtime type of buffer handle parameters.
**/
typedef BufferHandle = h3d.BufferHandle;

/**
	Helpers on the textures of `Channel` parameters.
**/
class ChannelTools {
	/**
		Tells if the texture uses the native format, in which a channel parameter is read as a packed value.
	**/
	public static inline function isPackedFormat( c : TextureChannel ) {
		return c.format == h3d.mat.Texture.nativeFormat;
	}
}