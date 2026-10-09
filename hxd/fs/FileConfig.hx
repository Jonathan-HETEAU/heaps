package hxd.fs;

/**
	Per directory configuration read from JSON files (such as `props.json`) in the resources: the configuration of a directory is merged with the one of its parent directories.
**/
class FileConfig<T> {
	var baseDir : String;
	var fileName : String;
	var cache : Map<String, T>;
	var def : T;

	/**
		Creates a configuration reader for the files named `fileName` under `baseDir`, with the default configuration `def`.
	**/
	public function new (baseDir : String = "", fileName : String = "props.json", def : T) {
		this.baseDir = baseDir;
		this.fileName = fileName;
		this.def = def;
		this.cache = new Map();
	}

	#if !macro
	/**
		Returns the configuration of the directory, merged with its parents and cached.
	**/
	public function getConfig(dir : String) : T {
		var loader = hxd.res.Loader.currentInstance;
		var c = cache.get(dir);
		if( c != null ) return c;
		var dirPos = dir.lastIndexOf("/");
		var parent = dir == "" ? def : getConfig(dirPos < 0 ? "" : dir.substr(0, dirPos));
		var propsFile = (dir == "" ? baseDir : baseDir + dir + "/") + fileName;
		if( !loader.exists(propsFile) ) {
			c = parent;
		} else {
			var content = loader.load(propsFile).toText();
			var obj = try haxe.Json.parse(content) catch( e : Dynamic ) throw "Failed to parse "+propsFile+"("+e+")";
			c = loadConfig(parent, obj);
		}
		cache.set(dir, c);
		return c;
	}

	function mergeRec(a : T, b : T) {
		if( b == null ) return a;
		if( a == null ) return b;
		var cp : T = cast {};
		for( f in Reflect.fields(a) ) {
			var va = Reflect.field(a,f);
			if( Reflect.hasField(b,f) ) {
				var vb = Reflect.field(b,f);
				if( Type.typeof(vb) == TObject && Type.typeof(va) == TObject ) vb = mergeRec(va,vb);
				Reflect.setField(cp,f,vb);
				continue;
			}
			Reflect.setField(cp,f,va);
		}
		for( f in Reflect.fields(b) )
			if( !Reflect.hasField(cp,f) )
				Reflect.setField(cp, f, Reflect.field(b,f));
		return cp;
	}

	/**
		Merges a configuration file content with the parent configuration. By default, the fields of objects are merged recursively.
	**/
	public dynamic function loadConfig(parent : T, obj : T) : T {
		return mergeRec(parent, obj);
	};
	#end
}