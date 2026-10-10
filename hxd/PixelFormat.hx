package hxd;

/**
	The pixel formats of textures and `Pixels`: color formats (8 bits, half and full floats per channel), compressed
	formats (`S3TC`) and depth formats.
**/
enum PixelFormat {
	/**
		8 bits per channel, bytes in the order alpha, red, green, blue.
	**/
	ARGB;
	/**
		8 bits per channel, bytes in the order blue, green, red, alpha.
	**/
	BGRA;
	/**
		8 bits per channel, bytes in the order red, green, blue, alpha.
	**/
	RGBA;
	/**
		4 half floats.
	**/
	RGBA16F;
	/**
		4 floats.
	**/
	RGBA32F;
	/**
		1 channel of 8 bits.
	**/
	R8;
	/**
		1 half float.
	**/
	R16F;
	/**
		1 float.
	**/
	R32F;
	/**
		2 channels of 8 bits.
	**/
	RG8;
	/**
		2 half floats.
	**/
	RG16F;
	/**
		2 floats.
	**/
	RG32F;
	/**
		3 channels of 8 bits.
	**/
	RGB8;
	/**
		3 half floats.
	**/
	RGB16F;
	/**
		3 floats.
	**/
	RGB32F;
	/**
		3 channels of 8 bits, in the sRGB color space.
	**/
	SRGB;
	/**
		4 channels of 8 bits, with the colors in the sRGB color space.
	**/
	SRGB_ALPHA;
	/**
		10 bits for each color channel and 2 bits for the alpha.
	**/
	RGB10A2;
	/**
		Unsigned floats: 11 bits for red and green, 10 bits for blue.
	**/
	RG11B10UF;
	/**
		1 channel of 16 bits (unsigned, normalized).
	**/
	R16U;
	/**
		2 channels of 16 bits (unsigned, normalized).
	**/
	RG16U;
	/**
		3 channels of 16 bits (unsigned, normalized).
	**/
	RGB16U;
	/**
		4 channels of 16 bits (unsigned, normalized).
	**/
	RGBA16U;
	/**
		A block compressed format: `v` is the BC number, from `1` (DXT1) to `7`.
	**/
	S3TC( v : Int );
	/**
		A 16 bits depth.
	**/
	Depth16;
	/**
		A 24 bits depth.
	**/
	Depth24;
	/**
		A 24 bits depth with an 8 bits stencil.
	**/
	Depth24Stencil8;
	/**
		A 32 bits float depth.
	**/
	Depth32;
	/**
		A 32 bits float depth with an 8 bits stencil.
	**/
	Depth32Stencil8;
}