package hxd.res;

private class SingleFileSystem extends hxd.fs.BytesFileSystem {

	var path : String;
	var bytes : haxe.io.Bytes;

	public function new(path, bytes) {
		super();
		this.path = path;
		this.bytes = bytes;
	}

	override function getBytes(p) {
		return p == path ? bytes : null;
	}

}

/**
	A resource of unknown type, as returned by `hxd.res.Loader.load`: use one of its `toXXX` methods to load it as a specific type.
	Iterating over it lists the files of a directory.
**/
@:access(hxd.res.Loader)
class Any extends Resource {

	var loader : Loader;

	/**
		Creates a resource for the file entry, loaded with `loader`.
	**/
	public function new(loader, entry) {
		super(entry);
		this.loader = loader;
	}

	/**
		Loads the resource as a 3D model.
	**/
	public function toModel() {
		return loader.loadCache(entry.path, hxd.res.Model);
	}

	/**
		Loads the resource as an image and returns its texture.
	**/
	public function toTexture() {
		return toImage().toTexture();
	}

	/**
		Loads the resource as an image and returns a tile of the whole image.
	**/
	public function toTile() {
		return toImage().toTile();
	}

	/**
		Returns the content of the file as text.
	**/
	public function toText() {
		return entry.getText();
	}

	/**
		Loads the resource as an image.
	**/
	public function toImage() {
		return loader.loadCache(entry.path, hxd.res.Image);
	}

	/**
		Loads the resource as a sound.
	**/
	public function toSound() {
		return loader.loadCache(entry.path, hxd.res.Sound);
	}

	/**
		Loads the resource as a prefab.
	**/
	public function toPrefab() {
		return loader.loadCache(entry.path, hxd.res.Prefab);
	}

	/**
		Loads the resource as an animation graph.
	**/
	public function toAnimGraph() {
		return loader.loadCache(entry.path, hxd.res.AnimGraph);
	}

	override function to<T:hxd.res.Resource>( c : Class<T> ) : T {
		return loader.loadCache(entry.path, c);
	}

	/**
		Iterates over the files of a directory.
	**/
	public inline function iterator() {
		return new hxd.impl.ArrayIterator([for( f in entry ) new Any(loader,f)]);
	}

	/**
		Creates a resource from bytes, with its own loader. The path extension is used to identify the file type.
	**/
	public static function fromBytes( path : String, bytes : haxe.io.Bytes ) {
		var fs = new SingleFileSystem(path,bytes);
		return new Loader(fs).load(path);
	}

}