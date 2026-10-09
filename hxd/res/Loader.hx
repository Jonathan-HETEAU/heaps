package hxd.res;

/**
	Loads the resources of a file system and caches them by path.
	`hxd.Res.loader` is the default instance.
**/
class Loader {

	/**
		Set when initializing hxd.Res, or manually.
		Allows code to resolve resources without compiling hxd.Res
	*/
	public static var currentInstance : Loader;

	/**
		The file system containing the resources.
	**/
	public var fs(default,null) : hxd.fs.FileSystem;
	var cache : Map<String,Dynamic>;

	/**
		Creates a loader for the file system.
	**/
	public function new(fs) {
		this.fs = fs;
		cache = new Map<String,Dynamic>();
	}

	/**
		Clears the cache: the next loads create new resource instances.
	**/
	public function cleanCache() {
		hxd.fs.Exclusive.lock(() -> cache = new Map());
	}

	/**
		Returns the resources of a directory.
	**/
	public function dir( path : String ) : Array<Any> {
		var r : Array<Any> = [];
		var entries = fs.dir(path);
		for(e in entries)
			r.push(new Any(this, e));
		return r;
	}

	/**
		Tells if a file exists at the path.
	**/
	public function exists( path : String ) : Bool {
		return fs.exists(path);
	}

	/**
		Returns the resource at the path, as an `Any` to convert with one of its `toXXX` methods. Throws if the file does not exist.
	**/
	public function load( path : String ) : Any {
		return new Any(this, fs.get(path));
	}

	/**
		Returns the resource at the path as an instance of `c`, created once and cached.
	**/
	public function loadCache<T:hxd.res.Resource>( path : String, c : Class<T> ) : T {
		return hxd.fs.Exclusive.lock(function() {
			var res : T = cache.get(path);
			if( res == null ) {
				var entry = fs.get(path);
				var old = currentInstance;
				currentInstance = this;
				res = Type.createInstance(c, [entry]);
				currentInstance = old;
				cache.set(path, res);
			} else {
				if( Std.downcast(res,c) == null )
					throw path+" has been reintrepreted from "+Type.getClass(res)+" to "+c;
			}
			return res;
		});
	}

	/**
		Deletes the file and removes its resource from the cache.
	**/
	public function delete( path : String ) : Bool {
		cache.remove(path);
		return fs.delete(path);
	}

	/**
		Clears the cache and disposes the file system.
	**/
	public function dispose() {
		cleanCache();
		fs.dispose();
	}

}