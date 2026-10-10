package hxd.impl;

#if js

/**
	A 32 bits float typed array.
**/
typedef Float32Array = js.lib.Float32Array;
/**
	An unsigned 16 bits integer typed array.
**/
typedef Uint16Array = js.lib.Uint16Array;
/**
	A signed 16 bits integer typed array.
**/
typedef Int16Array = js.lib.Int16Array;
/**
	An unsigned 8 bits integer typed array.
**/
typedef Uint8Array = js.lib.Uint8Array;
/**
	A binary data buffer.
**/
typedef ArrayBuffer = js.lib.ArrayBuffer;
/**
	An unsigned 32 bits integer typed array.
**/
typedef Uint32Array = js.lib.Uint32Array;
/**
	A view on a binary data buffer.
**/
typedef ArrayBufferView = js.lib.ArrayBufferView;

#else
/**
	A 32 bits float array.
**/
typedef Float32Array = haxe.ds.Vector<Float32>;
#end