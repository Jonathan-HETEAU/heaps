package h3d.impl;

/**
	How the shader binaries are stored in the cache file.
**/
enum abstract ShaderCacheMode(Int) from Int to Int {
	/**
		Base64 text.
	**/
	var Base64 = 0;
	/**
		Raw bytes.
	**/
	var Binary = 1;
}

/**
	A cache of the shaders compiled by the driver, by source code and configuration, saved to a file to avoid compiling them at the next run (see `Driver.setShaderCache`).
**/
class ShaderCache {

	var file : String;
	var outputFile : String;
	var data : Map<String, haxe.io.Bytes>;
	var sources : Map<String, String>;
	var sourceFile : String;
	/**
		If set, the sources are also saved, in a `.source` file, for debugging.
	**/
	public var keepSource : Bool;
	var mode : ShaderCacheMode;
	var dirty = false;
	/**
		If set, the new compiled shaders are saved.
	**/
	public var allowSave = true;

	/**
		The keyword starting the version in the file header.
	**/
	public static var VERSION_KEY_WORD = "VERSION";
	/**
		The version of the file format.
	**/
	public static var VERSION = 1;
	/**
		The keyword starting the mode in the file header.
	**/
	public static var MODE_KEY_WORD = "MODE";

	/**
		Creates the cache for the file (saved to `outputFile` if set).
	**/
	public function new( file : String, ?outputFile : String, mode = Base64) {
		this.file = file;
		this.outputFile = outputFile ?? file;
		this.mode = mode;
		sourceFile = file + ".source";
	}

	/**
		Disables the saving. Deprecated: set `allowSave` to `false`.
	**/
	@:deprecated("use allowSave = false")
	public function disableSave() {
		allowSave = false;
	}

	/**
		Clears the cache.
	**/
	public function initEmpty() {
		data = [];
		sources = [];
	}

	/**
		Loads the cache files.
	**/
	public function load() {
		initEmpty();
		try loadFile(file) catch( e : Dynamic ) {};
		if( outputFile != file ) try loadFile(outputFile) catch( e : Dynamic ) {};
		if( keepSource ) try loadSources() catch( e : Dynamic ) {};
	}

	function loadFile( file : String ) {
		#if !sys
		throw "Cannot load shader cache with this platform";
		#else
		if( !sys.FileSystem.exists(file) )
			return;
		var cache = new haxe.io.BytesInput(sys.io.File.getBytes(file));

		var curPos = 0;
		var hasVersion = cache.readString(VERSION_KEY_WORD.length) == VERSION_KEY_WORD;
		if ( !hasVersion )
			cache.position = 0;
		else {
			var version = cache.readInt32();
			if(version != VERSION) {
				trace('Shader cache version $version, expected $VERSION, skipping');
				return;
			}
			curPos = cache.position;
		}

		var hasMode = cache.readString(MODE_KEY_WORD.length) == MODE_KEY_WORD;
		var mode = Base64;
		if ( hasMode )
			mode = cache.readInt32();
		else
			cache.position = curPos;

		switch( mode ) {
		case Base64: loadCache(cache);
		case Binary: loadBinaryCache(cache);
		}
		#end
	}

	#if sys
	function loadCache(cache : haxe.io.BytesInput) {
		while( cache.position < cache.length ) {
			var len = cache.readInt32();
			if( len < 0 || len > 4<<20 ) break;
			var key = cache.readString(len);
			if( key == "" ) break;
			var len = cache.readInt32();
			if( len < 0 || len > 4<<20 ) break;
			var str = cache.readString(len);
			data.set(key,haxe.crypto.Base64.decode(str));
			cache.readByte(); // newline
		}
	}

	function loadBinaryCache(cache : haxe.io.BytesInput) {
		while( cache.position < cache.length ) {
			var len = cache.readInt32();
			if( len < 0 || len > 4<<20 ) break;
			var key = cache.readString(len);
			if( key == "" ) break;
			var len = cache.readInt32();
			if( len < 0 || len > 4<<20 ) break;
			var buf = cache.read(len);
			data.set(key, buf);
		}
	}
	#end

	function loadSources() {
		#if !sys
		throw "Cannot load shader cache with this platform";
		#else
		sources = new Map();
		if( !sys.FileSystem.exists(sourceFile) )
			return;
		var cache = new haxe.io.BytesInput(sys.io.File.getBytes(sourceFile));
		while( cache.position < cache.length ) {
			var len = cache.readInt32();
			if( len < 0 || len > 4<<20 ) break;
			var key = cache.readString(len);
			if( key == "" ) break;
			var len = cache.readInt32();
			if( len < 0 || len > 4<<20 ) break;
			var str = cache.readString(len);
			sources.set(key, str);
			cache.readByte(); // newline
			cache.readByte(); // newline
		}
		#end
	}

	#if heaps_mt_hxsl_cache
	var mutex = new sys.thread.Mutex();
	#end
	inline function lock() {
		#if heaps_mt_hxsl_cache
		mutex.acquire();
		#end
	}
	inline function unlock() {
		#if heaps_mt_hxsl_cache
		mutex.release();
		#end
	}

	/**
		Returns the compiled shader of the source and configuration, or `null`.
	**/
	public function resolveShaderBinary( source : String, ?configurationKey = "" ) {
		var encodedSource = haxe.crypto.Md5.encode(source);
		var key = configurationKey + encodedSource;
		lock();
		if( data == null ) load();
		var bytes = data.get(key);
		unlock();
		return bytes;
	}

	var saveTimer : haxe.Timer;
	/**
		Adds a compiled shader to the cache, and saves the file shortly after if `saveToFile` is set.
	**/
	public function saveCompiledShader( source : String, bytes : haxe.io.Bytes, ?configurationKey = "", ?saveToFile = true ) {
		var key = configurationKey + haxe.crypto.Md5.encode(source);
		lock();
		dirty = true;
		if( data == null ) load();
		if( data.get(key) == bytes && (!keepSource || sources.get(key) == source) ) {
			unlock();
			return;
		}
		data.set(key, bytes);
		if( keepSource )
			sources.set(key, source);
		unlock();

		if( !allowSave )
			return;

		#if heaps_mt_hxsl_cache
		// Do save on main thread only
		if( sys.thread.Thread.current() != sys.thread.Thread.main() ) {
			haxe.EventLoop.main.run(() -> scheduleSave(saveToFile));
			return;
		}
		#end
		scheduleSave(saveToFile);
	}

	function scheduleSave( saveToFile : Bool ) {
		if(saveTimer != null)
			saveTimer.stop();
		saveTimer = haxe.Timer.delay(function() {
			if( saveToFile )
				save();
			if( keepSource )
				saveSources();
			saveTimer = null;
		}, 100);
	}

	/**
		Saves the cache file if it changed.
	**/
	public function save() {
		lock();
		if( !dirty ) {
			unlock();
			return;
		}
		dirty = false;
		var out = new haxe.io.BytesOutput();
		var keys = Lambda.array({ iterator : data.keys });
		keys.sort(Reflect.compare);
		out.writeString(VERSION_KEY_WORD);
		out.writeInt32(VERSION);
		out.writeString(MODE_KEY_WORD);
		out.writeInt32(mode);
		switch ( mode ) {
		case Base64: writeCache(keys, out);
		case Binary: writeBinaryCache(keys, out);
		}
		unlock();
		#if sys
		try sys.io.File.saveBytes(outputFile, out.getBytes()) catch( e : Dynamic ) { trace("Something went wrong"); };
		#end
	}

	function writeCache(keys : Array<String>, out : haxe.io.BytesOutput) {

		for( key in keys ) {
			out.writeInt32(key.length);
			out.writeString(key);
			var b64 = haxe.crypto.Base64.encode(data.get(key));
			out.writeInt32(b64.length);
			out.writeString(b64);
			out.writeByte('\n'.code);
		}
	}

	function writeBinaryCache(keys : Array<String>, out : haxe.io.BytesOutput) {
		for( key in keys ) {
			out.writeInt32(key.length);
			out.writeString(key);
			var bytes = data.get(key);
			out.writeInt32(bytes.length);
			out.writeBytes(bytes, 0, bytes.length);
		}
	}

	function saveSources() {
		var out = new haxe.io.BytesOutput();
		lock();
		var keys = Lambda.array({ iterator : sources.keys });
		keys.sort(Reflect.compare);
		for( key in keys ) {
			out.writeInt32(key.length);
			out.writeString(key);
			var src = sources.get(key);
			out.writeInt32(src.length);
			out.writeString(src);
			out.writeByte('\n'.code);
			out.writeByte('\n'.code);
		}
		unlock();
		#if sys
		try sys.io.File.saveBytes(sourceFile, out.getBytes()) catch( e : Dynamic ) {};
		#end
	}
}