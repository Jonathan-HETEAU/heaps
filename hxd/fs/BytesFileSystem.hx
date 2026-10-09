package hxd.fs;

using haxe.io.Path;

/**
	A file entry whose content is in memory.
**/
class BytesFileEntry extends FileEntry {

	var fullPath : String;
	var bytes : haxe.io.Bytes;

	/**
		Creates an entry for the given path and content.
	**/
	public function new(path, bytes) {
		this.fullPath = path;
		this.name = path.split("/").pop();
		this.bytes = bytes;
	}

	override function get_path() {
		return fullPath;
	}

	override function getBytes() : haxe.io.Bytes {
		return bytes;
	}

	override function readBytes( out : haxe.io.Bytes, outPos : Int, pos : Int, len : Int ) : Int {
		if( pos + len > bytes.length )
			len = bytes.length - pos;
		if( len < 0 ) len = 0;
		out.blit(outPos, bytes, pos, len);
		return len;
	}

	override function load( ?onReady : Void -> Void ) : Void {
		haxe.Timer.delay(onReady, 1);
	}

	override function loadBitmap( onLoaded : LoadedBitmap -> Void ) : Void {
		#if js
		var mime = switch fullPath.extension().toLowerCase() {
			case 'jpg' | 'jpeg': 'image/jpeg';
			case 'png': 'image/png';
			case 'gif': 'image/gif';
			case _: throw 'Cannot determine image encoding, try adding an extension to the resource path';
		}
		var img = new js.html.Image();
		img.onload = function() onLoaded(new hxd.fs.LoadedBitmap(img));
		img.src = 'data:$mime;base64,' + haxe.crypto.Base64.encode(bytes);
		#else
		throw "Not implemented";
		#end
	}

	override function exists( name : String ) : Bool return false;
	override function get( name : String ) : FileEntry return null;

	override function iterator() : hxd.impl.ArrayIterator<FileEntry> return new hxd.impl.ArrayIterator(new Array<FileEntry>());

	override function get_size() return bytes.length;

}

/**
	Base class of the file systems whose files are in memory (such as the embedded files): subclasses implement `getBytes`.
	Directories are not supported.
**/
class BytesFileSystem implements FileSystem {

	function new() {
	}

	/**
		Not implemented.
	**/
	public function getRoot() {
		throw "Not implemented";
		return null;
	}

	function getBytes( path : String ) : haxe.io.Bytes {
		throw "Not implemented";
		return null;
	}

	/**
		Tells if a file exists at the path.
	**/
	public function exists( path : String ) {
		return getBytes(path) != null;
	}

	/**
		Returns the file entry at the path. Throws if it does not exist.
	**/
	public function get( path : String ) {
		var bytes = getBytes(path);
		if( bytes == null ) throw "Resource not found '" + path + "'";
		return new BytesFileEntry(path,bytes);
	}

	/**
		Does nothing.
	**/
	public function dispose() {
	}

	/**
		Not implemented.
	**/
	public function dir( path : String ) : Array<FileEntry> {
		throw "Not implemented";
		return null;
	}

	/**
		Not supported.
	**/
	public function delete( path : String ) : Bool {
		throw "Not supported";
	}

}