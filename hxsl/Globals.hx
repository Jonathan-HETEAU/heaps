package hxsl;
import h3d.mat.Texture;

/**
	A typed and fast access to a global shader variable.
**/
abstract GlobalSlot<T>(Int) {
	/**
		Creates the slot of the global of the given path (such as `"global.time"`).
	**/
	public inline function new(name:String) {
		this = Globals.allocID(name);
	}
	/**
		Returns the identifier of the global.
	**/
	public inline function toInt() {
		return this;
	}
	/**
		Sets the value of the global.
	**/
	public inline function set( globals : Globals, v : T ) {
		globals.fastSet(toInt(), v);
	}
	/**
		Returns the value of the global.
	**/
	public inline function get( globals : Globals ) : T {
		return globals.fastGet(toInt());
	}
}

/**
	The values of the global shader variables (declared with `@global` in the shaders), by path. Accessed with `h3d.scene.RenderContext.globals` or a `GlobalSlot`.
**/
class Globals {

	var map : Map<Int,Dynamic>;
	var channels : Array<Texture> = [];
	var maxChannels : Int;

	/**
		Creates an empty set of globals.
	**/
	public function new() {
		map = new Map<Int,Dynamic>();
	}

	/**
		Sets the value of the global of the given path.
	**/
	public function set( path : String, v : Dynamic ) {
		map.set(allocID(path), v);
	}

	/**
		Returns the value of the global of the given path.
	**/
	public function get( path : String) : Dynamic {
		return map.get(allocID(path));
	}

	/**
		Sets the value of the global of the given identifier (see `allocID`).
	**/
	public inline function fastSet( id : Int, v : Dynamic ) {
		map.set(id, v);
	}

	/**
		Returns the value of the global of the given identifier.
	**/
	public inline function fastGet( id : Int ) : Dynamic {
		return map.get(id);
	}

	/**
		Forgets the textures used by the channel constants.
	**/
	public inline function resetChannels() {
		maxChannels = 0;
	}

	/**
		Returns the index of the texture used by a channel constant, allocating it if needed.
	**/
	public function allocChannelID( t : Texture ) {
		for( i in 0...maxChannels )
			if( channels[i] == t )
				return i;
		if( maxChannels == 1 << Ast.Tools.MAX_CHANNELS_BITS )
			throw "Too many unique channels";
		var i = maxChannels++;
		channels[i] = t;
		return i;
	}

	static var ALL : Array<String>;
	static var MAP : Map<String,Int>;
	#if heaps_mt_hxsl_cache
	static var idMutex = new sys.thread.Mutex();
	#end
	/**
		Returns the unique identifier of the global path.
	**/
	public static function allocID( path : String ) : Int {
		#if heaps_mt_hxsl_cache
		idMutex.acquire();
		#end
		if( MAP == null ) {
			MAP = new Map();
			ALL = [];
		}
		var id = MAP.get(path);
		if( id == null ) {
			id = ALL.length;
			ALL.push(path);
			MAP.set(path, id);
		}
		#if heaps_mt_hxsl_cache
		idMutex.release();
		#end
		return id;
	}
	/**
		Returns the path of the global identifier.
	**/
	public static function getIDName( id : Int ) : String {
		return ALL[id];
	}

}