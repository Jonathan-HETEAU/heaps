# hxd.fs.FileConverter

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileConverter.hx`](../../../../../hxd/fs/FileConverter.hx) · available on hl/sdl, hl/directx

Converts the resource files of a `LocalFileSystem` according to the `fs.convert` rules of the `props.json` files, and caches the results in the `.tmp` directory.
A rule maps a pattern to the destination extension of a `Convert`, such as `"fbx": "hmd"`, or `"png": { "convert": "dds", "format": "BC3" }`. Rules from `fs.convert.<configuration>` override the default ones.

## Constructor

### new

```haxe
function new(baseDir:String, configuration:String):Void
```

Creates a converter for the resources directory.

## Static variables

### FILE_TIME_PRECISION

```haxe
static final FILE_TIME_PRECISION:Int
```

The precision of the file modification times, in milliseconds: some platforms have a one second resolution.

### CACHE_SAVE_MAX_PENDING

```haxe
static var CACHE_SAVE_MAX_PENDING:Int
```

The number of cache changes after which the cache file is saved immediately.

## Static methods

### addConfig

```haxe
static function addConfig(conf:Dynamic):Dynamic
```

Add extra convert configuration. Should be props.json-compatible structure.
Can be used to add or override converts that are enabled by default.
Sample code of Convert registration and enabling it by default:
```haxe
// Register Convert
static var _ = hxd.fs.Convert.register(new MyFancyConvert());
// Enable it
static var __ = hxd.fs.FileConverter.addConfig({
    "fs.convert": {
        // Converts are identified by output extension of Convert.
        "origext": { convert: "fancyext", priority: 0 },
        // Shorter declaration with default priority 0:
        "otherext": "fancyext"
    }
});
```

## Variables

### configuration

```haxe
var configuration(default, null):String
```

The name of the configuration selecting the `fs.convert.<configuration>` rules.

## Methods

### onConvert

```haxe
dynamic function onConvert(c:Convert):Void
```

Called before each conversion.

### run

```haxe
function run(e:LocalEntry):Void
```

Converts the file of the entry if a rule matches it, unless the cached result is up to date, and makes the entry point to the converted file.
