package h3d.mat;

/**
	The faces culled by a pass (see `Pass.culling`).
**/
enum Face {
	/**
		No culling: both sides are drawn.
	**/
	None;
	/**
		The back faces are not drawn (default).
	**/
	Back;
	/**
		The front faces are not drawn.
	**/
	Front;
	/**
		Nothing is drawn.
	**/
	Both;
}

/**
	A blend factor: the value the source (pixel being drawn) or destination (pixel in the target) color is multiplied by
	before being combined (see `Pass.blend`).
**/
enum Blend {
	/**
		`1`
	**/
	One;
	/**
		`0`
	**/
	Zero;
	/**
		The source alpha.
	**/
	SrcAlpha;
	/**
		The source color.
	**/
	SrcColor;
	/**
		The destination alpha.
	**/
	DstAlpha;
	/**
		The destination color.
	**/
	DstColor;
	/**
		`1 - source alpha`
	**/
	OneMinusSrcAlpha;
	/**
		`1 - source color`
	**/
	OneMinusSrcColor;
	/**
		`1 - destination alpha`
	**/
	OneMinusDstAlpha;
	/**
		`1 - destination color`
	**/
	OneMinusDstColor;
	// only supported on WebGL
	/**
		The constant blend color (WebGL only).
	**/
	ConstantColor;
	/**
		The constant blend alpha (WebGL only).
	**/
	ConstantAlpha;
	/**
		`1 - constant color` (WebGL only).
	**/
	OneMinusConstantColor;
	/**
		`1 - constant alpha` (WebGL only).
	**/
	OneMinusConstantAlpha;
	/**
		`min(source alpha, 1 - destination alpha)`
	**/
	SrcAlphaSaturate;
}

/**
	A comparison function, used by the depth test (see `Pass.depthTest`) and the stencil test. The test passes when the
	new value compared to the stored value matches the function.
**/
enum Compare {
	/**
		The test always passes.
	**/
	Always;
	/**
		The test never passes.
	**/
	Never;
	/**
		Passes if the values are equal.
	**/
	Equal;
	/**
		Passes if the values are different.
	**/
	NotEqual;
	/**
		Passes if the new value is greater.
	**/
	Greater;
	/**
		Passes if the new value is greater or equal.
	**/
	GreaterEqual;
	/**
		Passes if the new value is lower.
	**/
	Less;
	/**
		Passes if the new value is lower or equal.
	**/
	LessEqual;
}

/**
	An operation applied to the stencil buffer value (see `Stencil`).
**/
enum StencilOp {
	/**
		Keeps the current value.
	**/
	Keep;
	/**
		Sets the value to 0.
	**/
	Zero;
	/**
		Sets the value to the reference value.
	**/
	Replace;
	/**
		Increments the value, clamped to the maximum.
	**/
	Increment;
	/**
		Increments the value, wrapping to 0 after the maximum.
	**/
	IncrementWrap;
	/**
		Decrements the value, clamped to 0.
	**/
	Decrement;
	/**
		Decrements the value, wrapping to the maximum below 0.
	**/
	DecrementWrap;
	/**
		Inverts the bits of the value.
	**/
	Invert;
}

/**
	How the mip levels of a texture are sampled (see `Texture.mipMap`).
**/
enum MipMap {
	/**
		Mip levels are not used.
	**/
	None;
	/**
		Uses the nearest mip level.
	**/
	Nearest;
	/**
		Interpolates between the two nearest mip levels (trilinear filtering).
	**/
	Linear;
}

/**
	How the pixels of a texture are interpolated when sampled (see `Texture.filter`).
**/
enum Filter {
	/**
		Uses the nearest pixel (pixelated look).
	**/
	Nearest;
	/**
		Interpolates the 4 nearest pixels.
	**/
	Linear;
	/**
		Anisotropic filtering for surfaces seen at grazing angles, nearest pixel otherwise.
	**/
	AnisotropicNearest;
	/**
		Anisotropic filtering for surfaces seen at grazing angles, linear otherwise.
	**/
	AnisotropicLinear;
}

/**
	How texture coordinates outside of the `[0, 1]` range are handled (see `Texture.wrap`).
**/
enum Wrap {
	/**
		Uses the pixels of the edge.
	**/
	Clamp;
	/**
		Repeats the texture.
	**/
	Repeat;
	/**
		Repeats the texture, mirrored every other time.
	**/
	Mirror;
}

/**
	How the source and destination colors (multiplied by their blend factors) are combined (see `Pass.blendOp`).
**/
enum Operation {
	/**
		`source + destination`
	**/
	Add;
	/**
		`source - destination`
	**/
	Sub;
	/**
		`destination - source`
	**/
	ReverseSub;
	/**
		The minimum of both.
	**/
	Min;
	/**
		The maximum of both.
	**/
	Max;
}

/**
	The flags of a `Texture`, given at creation.
**/
enum TextureFlags {
	/**
		Allocate a texture that will be used as render target.
	**/
	Target;
	/**
		Allocate a cube texture. Might be restricted to power of two textures only.
	**/
	Cube;
	/**
		Activates Mip Mapping for this texture. Might not be available for target textures.
	**/
	MipMapped;
	/**
		By default, textures created with MipMapped will have their mipmaps generated when you upload the mipmap level 0. This flag disables this and manually upload mipmaps instead.
	**/
	ManualMipMapGen;
	/**
		This is a not power of two texture. Automatically set when having width or height being not power of two.
	**/
	IsNPOT;
	/**
		Don't initialy allocate the texture memory.
	**/
	NoAlloc;
	/**
		Inform that we will often perform upload operations on this texture
	**/
	Dynamic;
	/**
		Assumes that the color value of the texture is premultiplied by the alpha component.
	**/
	AlphaPremultiplied;
	/**
		Tells if the target texture has been cleared (reserved for internal engine usage).
	**/
	WasCleared;
	/**
		The texture is being currently loaded. Set onLoaded to get event when loading is complete.
	**/
	Loading;
	/**
		Allow texture data serialization when found in a scene (for user generated textures)
	**/
	Serialize;
	/**
		Tells if it's a texture array
	**/
	IsArray;
	/**
		Allows a DDS texture to be loaded asynchronously (see hxd.res.Image.ASYNC_LOADING)
	**/
	AsyncLoading;
	/**
		By default, the texture are loaded from images when created. If this flag is enabled, the texture will be loaded from disk when first used.
	**/
	LazyLoading;
	/**
		Texture can be written in shaders using RWTexture
	**/
	Writable;
	/**
		Tells if it's a 3D texture
	**/
	Is3D;
}

/**
	The pixel format of a texture, see `hxd.PixelFormat`.
**/
typedef TextureFormat = hxd.PixelFormat;

