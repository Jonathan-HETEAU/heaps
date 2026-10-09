package hxd.fs;

private class MultiFileEntry extends FileEntry {

	var fs : MultiFileSystem;
	var el : Array<FileEntry>;

	public function new(fs, el) {
		this.fs = fs;
		this.el = el;
		name = el[0].name;
	}

	override function getBytes() : haxe.io.Bytes return el[0].getBytes();
	override function readBytes( bytes, outPos, pos, len ) return el[0].readBytes(bytes,outPos,pos,len);

	override function open() return el[0].open();

	override function load( ?onReady : Void -> Void ) : Void return el[0].load(onReady);
	override function loadBitmap( onLoaded : LoadedBitmap -> Void ) : Void return el[0].loadBitmap(onLoaded);
	override function watch( onChanged : Null < Void -> Void > ) {
		for( e in el )
			e.watch(onChanged);
	}
	override function exists( name : String ) : Bool {
		for( e in el )
			if( e.exists(name) )
				return true;
		return false;
	}
	override function get( name : String ) : FileEntry {
		return fs.get(path + "/" + name);
	}

	override function iterator() : hxd.impl.ArrayIterator<FileEntry> {
		var names = new Map();
		var all : Array<FileEntry> = [];
		for( e in el )
			for( i in e.iterator() )
				if( !names.exists(i.name) ) {
					names.set(i.name, true);
					all.push(get(i.name));
				}
		return new hxd.impl.ArrayIterator(all);
	}

	override function get_isAvailable() return el[0].isAvailable;
	override function get_isDirectory() return el[0].isDirectory;
	override function get_size() return el[0].size;
	override function get_path() : String return el[0].path;

}

/**
	Combines several file systems: a file is searched in each of them, in order. Directories merge their contents.
**/
class MultiFileSystem implements FileSystem {

	var cache : Map<String, MultiFileEntry>;
	var root : MultiFileEntry;
	/**
		The file systems, by priority order.
	**/
	public var fs : Array<FileSystem>;

	/**
		Creates a file system combining the given ones.
	**/
	public function new(fs) {
		this.fs = fs;
		cache = new Map();
		root = new MultiFileEntry(this,[for( f in fs ) f.getRoot()]);
	}

	/**
		Returns the root directory, merging the roots of all the file systems.
	**/
	public function getRoot() {
		return root;
	}

	/**
		Returns the entry at the path, from the first file system containing it. Throws `NotFound` if none does.
	**/
	public function get( path : String ) : FileEntry {
		var f = cache.get(path);
		if( f != null )
			return f;
		var el = [];
		for( f in fs ) {
			try {
				var e = f.get(path);
				el.push(e);
				if( !e.isDirectory )
					break;
			} catch( e : NotFound ) {
			}
		}
		if( el.length == 0 )
			throw new NotFound(path);
		var f = new MultiFileEntry(this,el);
		cache.set(path, f);
		return f;
	}

	/**
		Tells if one of the file systems contains the path.
	**/
	public function exists( path : String ) : Bool {
		for( f in fs )
			if( f.exists(path) )
				return true;
		return false;
	}

	/**
		Disposes all the file systems.
	**/
	public function dispose() {
		for( f in fs )
			f.dispose();
	}

	/**
		Not supported: use `get(path)` and iterate over the entry.
	**/
	public function dir( path : String ) : Array<FileEntry> {
		throw "Not Supported";
	}

	/**
		Not supported.
	**/
	public function delete( path : String ) : Bool {
		throw "Not supported";
	}

}