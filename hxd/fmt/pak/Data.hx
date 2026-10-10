package hxd.fmt.pak;

/**
	A file or directory of a `.pak` archive.
**/
class File {
	/**
		The name of the file.
	**/
	public var name : String;
	/**
		Tells if it is a directory.
	**/
	public var isDirectory : Bool;
	/**
		The files of the directory.
	**/
	public var content : Array<File>;
	/**
		The position of the file data, relative to the end of the header.
	**/
	public var dataPosition : Float;
	/**
		The size of the file data, in bytes.
	**/
	public var dataSize : Int;
	/**
		The Adler32 checksum of the file data.
	**/
	public var checksum : Int;
	/**
		Creates an empty file.
	**/
	public function new() {
	}
}

/**
	The header of a `.pak` archive.
**/
class Data {
	/**
		The version of the format.
	**/
	public var version : Int;
	/**
		The root directory.
	**/
	public var root : File;
	/**
		The size of the header, in bytes.
	**/
	public var headerSize : Int;
	/**
		The size of the data, in bytes.
	**/
	public var dataSize : Int;
	/**
		Creates an empty header.
	**/
	public function new() {
	}
}