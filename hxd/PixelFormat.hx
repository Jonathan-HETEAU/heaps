package hxd;

/**
	The pixel formats of textures and `Pixels`: color formats (8 bits, half and full floats per channel), compressed
	formats (`S3TC`, `ASTC`, `ETC`...) and depth formats.
**/
enum PixelFormat {
	ARGB;
	BGRA;
	RGBA;
	RGBA16F;
	RGBA32F;
	R8;
	R16F;
	R32F;
	RG8;
	RG16F;
	RG32F;
	RGB8;
	RGB16F;
	RGB32F;
	SRGB;
	SRGB_ALPHA;
	RGB10A2;
	RG11B10UF; // unsigned float
	R16U;
	RG16U;
	RGB16U;
	RGBA16U;
	S3TC( v : Int );
	Depth16;
	Depth24;
	Depth24Stencil8;
	Depth32;
	Depth32Stencil8;
}