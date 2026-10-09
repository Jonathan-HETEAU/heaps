package hxd.fs;

/**
	Locates the source files of the application at runtime, for live reloading (used for shaders).
**/
class SourceLoader {

	static var RELOAD_LFS : Array<hxd.fs.FileSystem> = [];
	#if (sys && !usesys)
	/**
		Adds a directory where the sources are searched.
	**/
	public static function addLivePath( path : String ) {
		RELOAD_LFS.push(new hxd.fs.LocalFileSystem(path,""));
	}
	/**
		Adds the class paths of the given haxelib libraries.
	**/
	public static function addLivePathHaxelib( libs : Array<String> ) {
		var p = new sys.io.Process("haxelib",["path"].concat(libs));
		var out = p.stdout.readAll().toString().split("\r\n").join("\n").split("\n");
		p.exitCode();
		for( line in out ) {
			if( line.charCodeAt(0) == "-".code ) continue;
			addLivePath(line);
		}
	}
	/**
		Adds the current directory and the Heaps library sources (and Hide when used).
	**/
	public static function initLivePaths() {
		addLivePath(".");
		addLivePathHaxelib(["heaps" #if hide,"hide"#end]);
	}
	#end

	/**
		Tells if a source directory was added.
	**/
	public static function isActive() {
		return RELOAD_LFS.length > 0;
	}

	/**
		Returns the entry of the source file in the first directory containing it, or `null`.
	**/
	public static function resolve( path : String ) {
		for( fs in RELOAD_LFS )
			try return fs.get(path) catch( e : hxd.res.NotFound ) {};
		return null;
	}

}