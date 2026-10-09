# hxd.fs.Convert

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/Convert.hx`](../../../../../hxd/fs/Convert.hx)

Subclasses: [`hxd.fs.Command`](Command.md), [`hxd.fs.CompressIMG`](CompressIMG.md), [`hxd.fs.ConvertBinJSON`](ConvertBinJSON.md), [`hxd.fs.ConvertFBX2HMD`](ConvertFBX2HMD.md), [`hxd.fs.ConvertFNT2BFNT`](ConvertFNT2BFNT.md), [`hxd.fs.ConvertSVGToMSDF`](ConvertSVGToMSDF.md), [`hxd.fs.ConvertTGA2PNG`](ConvertTGA2PNG.md), [`hxd.fs.ConvertWAV2MP3`](ConvertWAV2MP3.md), [`hxd.fs.ConvertWAV2OGG`](ConvertWAV2OGG.md), [`hxd.fs.DummyConvert`](DummyConvert.md)

## Constructor

### new

```haxe
function new(sourceExts:String, destExt:String):Void
```

## Static methods

### register

```haxe
static function register(c:Convert):Int
```

## Variables

### sourceExts

```haxe
var sourceExts(default, null):Array<String>
```

### destExt

```haxe
var destExt(default, null):String
```

### version

```haxe
var version(default, null):Int
```

Major version of the Convert.
When incremented, all files processed by this Convert would be rebuilt.

### params

```haxe
var params:Dynamic
```

### localParams

```haxe
var localParams:Dynamic
```

### srcPath

```haxe
var srcPath(get, null):String
```

### dstPath

```haxe
var dstPath:String
```

### baseDir

```haxe
var baseDir:String
```

### originalFilename

```haxe
var originalFilename:String
```

### srcBytes

```haxe
var srcBytes(get, null):Bytes
```

### hash

```haxe
var hash:String
```

## Methods

### setSource

```haxe
function setSource(path:String):Void
```

### cleanup

```haxe
function cleanup():Void
```

### convert

```haxe
function convert():Void
```

### hasLocalParams

```haxe
function hasLocalParams():Bool
```

A function that should return quickly if the convert might have local params or not.
Do not have access to: srcBytes, hash.

### getLocalContext

```haxe
function getLocalContext():Dynamic
```

Context will be cached and passed to computeLocalParams next time if file hash has not changed.
This function will be called after each call to computeLocalParams for refresh the cache.

### computeLocalParams

```haxe
function computeLocalParams(context:Dynamic):Dynamic
```
