package hxd.fs;

/**
	A file or directory of a `FileSystem`. Subclasses implement the access for each kind of file system.
**/
class FileEntry {

	/**
		The name of the file, with its extension.
	**/
	public var name(default, null) : String;
	/**
		The path of the file, relative to the file system root.
	**/
	public var path(get, never) : String;
	/**
		The path of the parent directory.
	**/
	public var directory(get, never) : String;
	/**
		The extension of the file name, in lowercase, without the dot.
	**/
	public var extension(get, never) : String;
	/**
		The size of the file in bytes.
	**/
	public var size(get, never) : Int;
	/**
		Tells if the entry is a directory.
	**/
	public var isDirectory(get, never) : Bool;
	/**
		Tells if the content is available. When it is not (files loaded on demand), call `load` first.
	**/
	public var isAvailable(get, never) : Bool;

	/**
		Returns the whole content of the file.
	**/
	public function getBytes() : haxe.io.Bytes return null;
	/**
		Reads `len` bytes at `pos` in the file into `out` at `outPos`, and returns the number of bytes read.
	**/
	public function readBytes( out : haxe.io.Bytes, outPos : Int, pos : Int, len : Int ) : Int { throw "readBytes() not implemented"; }

	/**
		Same as readBytes, but the read is performed in async mode 
		onDone is called in the calling thread (through its event loop) with the number of bytes read, unless the request is cancelled.
		The out bytes must not be accessed until then.
	**/
	public function readBytesAsync( out : haxe.io.Bytes, outPos : Int, pos : Int, len : Int, onDone : Int -> Void, priority = 0. ) : AsyncRead {
		return AsyncRead.AsyncReader.read(this, out, outPos, pos, len, onDone, priority);
	}


	#if heaps_mt_loader
	static var TMP_BYTES(get,set) : haxe.io.Bytes;
	static var bytesValue = new sys.thread.Tls<haxe.io.Bytes>();
	static function get_TMP_BYTES() return bytesValue.value;
	static function set_TMP_BYTES(v) return bytesValue.value = v;
	#else
	static var TMP_BYTES : haxe.io.Bytes = null;
	#end
	/**
		Similar to readBytes except :
		a) a temporary buffer is reused, meaning a single fetchBytes must occur at a single time
		b) it will throw an Eof exception if the data is not available
	**/
	public function fetchBytes( pos, len ) : haxe.io.Bytes {
		var bytes = TMP_BYTES;
		if( bytes == null || bytes.length < len ) {
			var allocSize = (len + 65535) & 0xFFFF0000;
			bytes = haxe.io.Bytes.alloc(allocSize);
			TMP_BYTES = bytes;
		}
		readFull(bytes,pos,len);
		return bytes;
	}

	/**
		Reads `len` bytes at `pos` in the file into `bytes`. Throws `haxe.io.Eof` if fewer bytes are available.
	**/
	public function readFull( bytes, pos, len ) {
		if( readBytes(bytes,0,pos,len) < len )
			throw new haxe.io.Eof();
	}

	/**
		Read first 4 bytes of the file.
	**/
	public function getSign() : Int {
		var bytes = fetchBytes(0, 4);
		return bytes.get(0) | (bytes.get(1) << 8) | (bytes.get(2) << 16) | (bytes.get(3) << 24);
	}

	/**
		Returns the content of the file as text.
	**/
	public function getText() return getBytes().toString();
	/**
		Returns an input to read the file.
	**/
	public function open() return @:privateAccess new FileInput(this);

	/**
		Makes the content available, then calls `onReady`.
	**/
	public function load( ?onReady : Void -> Void ) : Void { if( !isAvailable ) throw "load() not implemented"; else if( onReady != null ) onReady(); }
	/**
		Decodes the image file with the platform decoder (asynchronously on JS).
	**/
	public function loadBitmap( onLoaded : LoadedBitmap -> Void ) : Void { throw "loadBitmap() not implemented"; }
	/**
		Calls `onChanged` when the file changes, if the file system supports it. Set `null` to stop watching.
	**/
	public function watch( onChanged : Null<Void -> Void> ) { }
	#if multidriver
	/**
		Stops watching the file for the engine of the given id (with the `multidriver` define).
	**/
	public function unwatch( id : Int ) { }
	#end
	/**
		For a directory, tells if it contains an entry with the given name.
	**/
	public function exists( name : String ) : Bool return false;
	/**
		For a directory, returns the entry with the given name.
	**/
	public function get( name : String ) : FileEntry return null;

	/**
		For a directory, iterates over its entries.
	**/
	public function iterator() : hxd.impl.ArrayIterator<FileEntry> return null;

	function get_isAvailable() return true;
	function get_isDirectory() return false;
	function get_size() return 0;
	function get_path() : String { throw "path() not implemented"; return null; };

	function get_directory() {
		var idx = path.lastIndexOf("/");
		if (idx < 0) return "";
		return path.substr(0, idx);
	}

	function get_extension() {
		var idx = name.lastIndexOf(".");
		if (idx < 0) return "";
		return name.substr(idx+1).toLowerCase();
	}
}
