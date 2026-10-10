package hxd.fmt.pak;
import hxd.fmt.pak.Data;

/**
	Packs the resources directory into a `.pak` archive (after converting the files), loaded at runtime with `hxd.fmt.pak.FileSystem` (see `hxd.Res.initPak`).
	Run as a command line tool: `-res <dir>`, `-out <prefix>`, `-exclude <exts>`, `-exclude-names <names>`, `-exclude-path <paths>`, `-include-path <paths>`, `-special-path <names>`, `-include-ignore-exclude`, `-align <n>`, `-diff`, `-check-ogg`, `-config <name>`, `-info <file.pak>`, `-x <file.pak>` (extract), `-info-depth <n>`.
**/
class Build {

	var fs : hxd.fs.LocalFileSystem;
	var out : { bytes : Array<haxe.io.Bytes>, size : Float };
	var configuration : String;
	var nextPath : String;

	/**
		The extensions of the files not packed.
	**/
	public var excludedExt : Array<String> = [];
	/**
		The names of the files and directories not packed.
	**/
	public var excludedNames : Array<String> = [];
	/**
		The paths not packed.
	**/
	public var excludePath : Array<String> = [];
	/**
		The paths packed. When not empty and `whitelist` is set, only these paths are packed.
	**/
	public var includePath : Array<String> = [];
	/**
		The names starting with a dot that are packed anyway (the other files and directories starting with a dot are ignored).
	**/
	public var specialPath : Array<String> = [".baked"];
	/**
		The resources directory.
	**/
	public var resPath : String = "res";
	/**
		The path of the generated `.pak` file, without extension.
	**/
	public var outPrefix : String;
	/**
		If greater than `1`, the data of each file is aligned to this number of bytes.
	**/
	public var align : Int = 0;
	/**
		If set, only the files that changed since the existing `.pak` files are packed, into a new numbered `.pak` file.
	**/
	public var pakDiff = false;
	/**
		Unused.
	**/
	public var checkJPG = false;
	/**
		If set, the sounds are decoded to check that they have samples.
	**/
	public var checkOGG = false;
	/**
		If set, `includePath` lists the only paths packed; otherwise, the files of `includePath` are packed even if they are in `excludePath`.
	**/
	public var whitelist = true;
	/**
		The depth of the directories in the size report, or `-1` for the default.
	**/
	public var infoDepth = -1;

	function new() {
	}

	function command( cmd : String, ?args : Array<String> ) {
		var ret = Sys.command(cmd, args);
		if( ret != 0 )
			throw cmd + " has failed with exit code " + ret;
	}

	function buildRec( path : String ) {

		if( path != "" ) {
			if( whitelist && excludePath.indexOf(path) >= 0 ) return null;
		}

		var dir = resPath + (path == "" ? "" : "/" + path);
		var f = new File();
		#if !dataOnly
		hxd.System.timeoutTick();
		#end
		f.name = path.split("/").pop();
		if( sys.FileSystem.isDirectory(dir) ) {
			var prevPath = nextPath;
			nextPath = path == "" ? "<root>" : path;
			f.isDirectory = true;
			f.content = [];
			for( name in sys.FileSystem.readDirectory(dir) ) {
				if( excludedNames.indexOf(name)>=0 )
					continue;
				var fpath = path == "" ? name : path+"/"+name;
				if( name.charCodeAt(0) == ".".code && specialPath.indexOf(name) < 0 )
					continue;
				var s = buildRec(fpath);
				if( s != null ) f.content.push(s);
			}
			nextPath = prevPath;
			if( f.content.length == 0 && path != "" )
				return null;
		} else {
			var ext = path.split("/").pop().split(".").pop().toLowerCase();
			if( excludedExt.indexOf(ext) >= 0 )
				return null;

			var included = false;
			for( p in includePath )
				if( StringTools.startsWith(path,p) ) {
					included = true;
					break;
				}
			if( !included ) {
				if( whitelist ) {
					if( includePath.length > 0 )
						return null;
				} else {
					for( p in excludePath )
						if( StringTools.startsWith(path,p) )
							return null;
				}
			}

			if( nextPath != null ) {
				Sys.println(nextPath);
				nextPath = null;
			}

			var entry = try fs.get(path) catch( e : hxd.res.NotFound ) return null;
			var filePath = fs.getAbsolutePath(entry);
			var data = sys.io.File.getBytes(filePath);

			switch( ext ) {
			case "wav", "ogg" if( checkOGG ):
				var snd = new hxd.snd.OggData(sys.io.File.getBytes(filePath));
				if( snd.samples == 0 )
					Sys.println("\t*** ERROR *** " + path + " has 0 samples");
			}

			f.dataPosition = pakDiff ? out.bytes.length : out.size;
			f.dataSize = data.length;
			f.checksum = haxe.crypto.Adler32.make(data);
			out.bytes.push(data);
			out.size += data.length;
			if (align > 1)
				out.size += align - data.length % align;
		}
		return f;
	}

	function filter( root : File, old : File ) {
		if( root.isDirectory != old.isDirectory )
			throw "Conflict : new " + root.name+" is a directory while old " + old.name+" is not";
		if( root.isDirectory ) {
			var changed = false;
			for( f in root.content.copy() ) {
				var f2 = null;
				for( ff in old.content )
					if( ff.name == f.name ) {
						f2 = ff;
						break;
					}
				if( f2 == null )
					changed = true;
				else if( filter(f, f2) )
					root.content.remove(f);
				else
					changed = true;
			}
			return !changed;
		}
		return root.checksum == old.checksum;
	}

	/**
		Reorders the data of the files to follow the hierarchy of the archive, and returns it.
	**/
	public static function rebuild( pak : Data, bytes : Array<haxe.io.Bytes> ) {
		var size = 0;
		function calcRec(f:File) {
			if( f.isDirectory ) {
				for( c in f.content )
					calcRec(c);
			} else
				size += f.dataSize;
		}
		calcRec(pak.root);
		var out = [];
		var pos = 0.;
		function writeRec(f:File) {
			if( f.isDirectory ) {
				for( c in f.content )
					writeRec(c);
			} else {
				out.push(bytes[Std.int(f.dataPosition)]);
				f.dataPosition = pos;
				pos += f.dataSize;
			}
		}
		writeRec(pak.root);
		return out;
	}

	/**
		Prints the size of the directories of the archive, up to the given depth.
	**/
	public static function printSize( pak : Data, maxDepth = 0 ) {
		function fmtSize(b:Float) {
			if( b >= 1024*1024*1024 ) return Std.string(Math.round(b*10/(1024*1024*1024))/10)+"Gb";
			if( b >= 1024*1024 ) return Std.string(Math.round(b*10/(1024*1024))/10)+"Mb";
			return Std.string(Math.round(b*10/1024)/10)+"Kb";
		}
		function calcRec(f:File):Float {
			if( !f.isDirectory ) return f.dataSize;
			var total = 0.;
			for( c in f.content ) total += calcRec(c);
			return total;
		}
		function printRec(f:File, depth:Int, indent = "") {
			var size = calcRec(f);
			var label = f.name == "" ? "<root>" : f.name;
			Sys.println(indent + (f.isDirectory ? "> " : "") + label + " " + fmtSize(size));
			if( (maxDepth == 0 || depth < maxDepth) && f.isDirectory) {
				for( c in f.content )
					if(f.isDirectory) printRec(c, depth + 1, indent + "    ");
				for( c in f.content )
					if(!f.isDirectory) printRec(c, depth + 1, indent + "    ");
			}
		}
		printRec(pak.root, 0, "");
	}

	/**
		Called before the files are packed, to customize the build.
	**/
	public static dynamic function onInit( b : Build ) {}

	function makePak() {

		if( !sys.FileSystem.exists(resPath) )
			throw "'" + resPath + "' resource directory was not found";

		fs = new hxd.fs.LocalFileSystem(resPath, configuration);
		fs.convert.onConvert = function(c) Sys.println("\tConverting " + c.srcPath);
		onInit(this);

		var pak = new Data();
		out = { bytes : [], size : 0 };
		pak.version = 0;
		pak.root = buildRec("");

		if( pakDiff ) {
			var id = 0;
			while( true ) {
				var name = outPrefix + (id == 0 ? "" : "" + id) + ".pak";
				if( !sys.FileSystem.exists(name) ) break;
				var oldPak = new Reader(sys.io.File.read(name)).readHeader();
				filter(pak.root, oldPak.root);
				id++;
			}
			if( id > 0 ) {
				outPrefix += id;
				if( pak.root.content.length == 0 ) {
					Sys.println("No changes in resources");
					return;
				}
			}
			out.bytes = rebuild(pak, out.bytes);
		}

		var outFile = outPrefix + ".pak";
		Sys.println("Writing "+outFile);
		var f = sys.io.File.write(outFile);
		new Writer(f, align).write(pak, null, out.bytes);
		f.close();
		printSize(pak, infoDepth < 0 ? 1 : infoDepth);
	}

	/**
		Packs the resources of the directory `dir` into `out.pak`.
	**/
	public static function make( dir = "res", out = "res", ?pakDiff ) {
		var b = new Build();
		b.resPath = dir;
		b.outPrefix = out;
		b.pakDiff = pakDiff;
		b.makePak();
	}

	static function main() {
		var args = Sys.args();
		try sys.FileSystem.deleteFile("hxd.fmt.pak.Build.n") catch( e : Dynamic ) {};
		try sys.FileSystem.deleteFile("hxd.fmt.pak.Build.hl") catch( e : Dynamic ) {};
		var b = new Build();
		while( args.length > 0 ) {
			var f = args.shift();
			var pos = f.indexOf("=");
			if( pos > 0 ) {
				args.unshift(f.substr(pos + 1));
				f = f.substr(0, pos);
			}
			inline function parseParams( params : String, output : Array<String> ) {
				for( p in params.split(",") )
					output.push(p);
			}
			switch( f ) {
			case "-info" if( args.length > 0 ):
				var pakFile = args.shift();
				var fs = sys.io.File.read(pakFile);
				var pak = new hxd.fmt.pak.Reader(fs).readHeader();
				fs.close();
				printSize(pak, b.infoDepth < 0 ? 3 : b.infoDepth);
				Sys.exit(0);
			case "-x" if( args.length > 0 ):
				var pakFile = args.shift();
				var fs = sys.io.File.read(pakFile);
				var pak = new hxd.fmt.pak.Reader(fs).readHeader();
				var baseDir = b.outPrefix == null ? pakFile.substr(0,-4) : b.outPrefix;
				function extractRec(f:hxd.fmt.pak.Data.File, dir) {
					#if !dataOnly
					hxd.System.timeoutTick();
					#end
					if( f.isDirectory ) {
						var dir = f.name == "" ? dir : dir+"/"+f.name;
						try sys.FileSystem.createDirectory(dir) catch( e : Dynamic ) {};
						for( c in f.content )
							extractRec(c,dir);
					} else {
						hxd.fmt.pak.FileSystem.FileSeek.seek(fs,f.dataPosition+pak.headerSize,SeekBegin);
						sys.io.File.saveBytes(dir+"/"+f.name,fs.read(f.dataSize));
					}
				}
				extractRec(pak.root, baseDir);
				Sys.exit(0);
			case "-align" if( args.length > 0 ):
				b.align = Std.parseInt(args.shift());
			case "-diff":
				b.pakDiff = true;
			case "-res" if( args.length > 0 ):
				b.resPath = args.shift();
			case "-out" if( args.length > 0 ):
				b.outPrefix = args.shift();
			case "-exclude" if( args.length > 0 ):
				parseParams(args.shift(), b.excludedExt);
			case "-exclude-names" if( args.length > 0 ):
				parseParams(args.shift(), b.excludedNames);
			case "-exclude-path" if( args.length > 0 ):
				parseParams(args.shift(), b.excludePath);
			case "-include-path" if( args.length > 0 ):
				parseParams(args.shift(), b.includePath);
			case "-special-path" if( args.length > 0 ):
				parseParams(args.shift(), b.specialPath);
			case "-include-ignore-exclude":
				b.whitelist = false;
			case "-check-ogg":
				b.checkOGG = true;
			case "-config" if( args.length > 0 ):
				b.configuration = args.shift();
			case "-info-depth":
				b.infoDepth = Std.parseInt(args.shift());
			default:
				throw "Unknown parameter " + f;
			}
		}
		if( b.outPrefix == null ) {
			b.outPrefix = "res";
			if( b.configuration != "default" && b.configuration != null ) b.outPrefix += "."+b.configuration;
		}
		b.makePak();
	}

}