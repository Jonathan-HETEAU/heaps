package hxd.res;

/**
	The base class of all the resources loaded by `hxd.res.Loader`. A resource wraps a file entry and loads it on demand.
**/
class Resource {

	/**
		If set, `watch` reloads the resources when their file changes. Enabled by default in debug builds.
	**/
	public static var LIVE_UPDATE = #if debug true #else false #end;

	/**
		The file name of the resource, with its extension.
	**/
	public var name(get, never) : String;
	/**
		The file entry of the resource.
	**/
	public var entry(default,null) : hxd.fs.FileEntry;

	/**
		Creates a resource for the file entry.
	**/
	public function new(entry) {
		this.entry = entry;
	}

	inline function get_name() {
		return entry.name;
	}

	function toString() {
		return entry.path;
	}

	/**
		Calls `onChanged` when the file changes, if `LIVE_UPDATE` is set. Set `null` to stop watching.
	**/
	public function watch( onChanged : Null < Void -> Void > ) {
		if( LIVE_UPDATE	) entry.watch(onChanged);
	}

	/**
		Returns the resource as the given class. Throws if it isn't an instance of it.
	**/
	public function to<T:hxd.res.Resource>( c : Class<T> ) : T {
		var v = Std.downcast(this,c);
		if( v == null ) throw this+" should "+c;
		return v;
	}

}