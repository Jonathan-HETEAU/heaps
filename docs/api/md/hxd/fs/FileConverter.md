# hxd.fs.FileConverter

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/FileConverter.hx`](../../../../../hxd/fs/FileConverter.hx) · available on hl/sdl, hl/directx

## Constructor

### new

```haxe
function new(baseDir:String, configuration:String):Void
```

## Static variables

### FILE_TIME_PRECISION

```haxe
static final FILE_TIME_PRECISION:Int
```

### CACHE_SAVE_MAX_PENDING

```haxe
static var CACHE_SAVE_MAX_PENDING:Int
```

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

## Methods

### onConvert

```haxe
dynamic function onConvert(c:Convert):Void
```

### run

```haxe
function run(e:LocalEntry):Void
```
