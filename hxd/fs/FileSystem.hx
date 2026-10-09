package hxd.fs;

/**
	A file system containing the resources, used by `hxd.res.Loader`. Paths are relative to its root and use `/` separators.
**/
interface FileSystem {
	/**
		Returns the root directory.
	**/
	public function getRoot() : FileEntry;
	/**
		Returns the file entry at the path. Throws if it does not exist (`hxd.res.NotFound` for most file systems).
	**/
	public function get( path : String ) : FileEntry;
	/**
		Tells if a file or directory exists at the path.
	**/
	public function exists( path : String ) : Bool;
	/**
		Releases the file system.
	**/
	public function dispose() : Void;
	/**
		Returns the entries of the directory.
	**/
	public function dir( path : String ) : Array<FileEntry>;
	/**
		Deletes the file. Returns `false` if it can't be deleted.
	**/
	public function delete( path : String ) : Bool;
}