package h3d;

/**
	A bindless handle of a buffer, allowing shaders to access it without binding it. Created by the driver
	(see `Buffer.getHandle`).
**/
@:allow(h3d.impl.Driver)
class BufferHandle {
	/**
		The buffer referenced by the handle.
	**/
	public var buffer(default, null) : h3d.Buffer;
	/**
		The driver handle value.
	**/
	public var handle(default, null) : Int;
	function new(b : h3d.Buffer, handle : Int) {
		buffer = b;
		this.handle = handle;
	}
}