package hxsl;

/**
	The channel of a texture read by a `Channel` shader parameter.
**/
enum Channel {
	/**
		Not set: reads `0` without texture, and the packed value of a texture that has the native format.
	**/
	Unknown;
	/**
		The red channel.
	**/
	R;
	/**
		The green channel.
	**/
	G;
	/**
		The blue channel.
	**/
	B;
	/**
		The alpha channel.
	**/
	A;
	/**
		A float packed in the 4 channels.
	**/
	PackedFloat;
	/**
		A normal packed in the RGB channels.
	**/
	PackedNormal;
}
