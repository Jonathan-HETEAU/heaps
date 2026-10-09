package hxd.fs;

/**
	The error thrown when a resource file is not found.
**/
class NotFound {
	/**
		The path of the file.
	**/
	public var path : String;
	/**
		Creates the error for the path.
	**/
	public function new(path) {
		this.path = path;
	}
	@:keep function toString() {
		return "Resource file not found '" + path + "'";
	}
}