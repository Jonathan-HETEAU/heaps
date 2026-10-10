# hxd.fs.Convert

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/Convert.hx`](../../../../../hxd/fs/Convert.hx)

Subclasses: [`hxd.fs.Command`](Command.md), [`hxd.fs.CompressIMG`](CompressIMG.md), [`hxd.fs.ConvertBinJSON`](ConvertBinJSON.md), [`hxd.fs.ConvertFBX2HMD`](ConvertFBX2HMD.md), [`hxd.fs.ConvertFNT2BFNT`](ConvertFNT2BFNT.md), [`hxd.fs.ConvertSVGToMSDF`](ConvertSVGToMSDF.md), [`hxd.fs.ConvertTGA2PNG`](ConvertTGA2PNG.md), [`hxd.fs.ConvertWAV2MP3`](ConvertWAV2MP3.md), [`hxd.fs.ConvertWAV2OGG`](ConvertWAV2OGG.md), [`hxd.fs.DummyConvert`](DummyConvert.md)

A resource file conversion, such as FBX to HMD. Subclasses implement `convert` and are registered with `Convert.register`.
The conversions applied to the files are selected by the `fs.convert` rules of the `props.json` files (see `FileConverter`).

## Constructor

### new

```haxe
function new(sourceExts:String, destExt:String):Void
```

Creates a conversion from the comma separated `sourceExts` (`null` for any) to `destExt`.

## Static methods

### register

```haxe
static function register(c:Convert):Int
```

Registers a conversion. The last registered conversion for an extension has priority, which allows overriding the defaults.

## Variables

### sourceExts

```haxe
var sourceExts(default, null):Array<String>
```

The extensions of the files this conversion accepts, or `null` for any file.

### destExt

```haxe
var destExt(default, null):String
```

The extension of the converted files, which also identifies the conversion in the rules.

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

The parameters of the conversion, set by the rule.

### localParams

```haxe
var localParams:Dynamic
```

The parameters computed from the file content by `computeLocalParams`.

### srcPath

```haxe
var srcPath(get, null):String
```

The path of the file to convert.

### dstPath

```haxe
var dstPath:String
```

The path of the converted file to write.

### baseDir

```haxe
var baseDir:String
```

The root directory of the resources.

### originalFilename

```haxe
var originalFilename:String
```

The path of the original resource file, relative to `baseDir`.

### srcBytes

```haxe
var srcBytes(get, null):Bytes
```

The content of the file to convert, read on demand.

### hash

```haxe
var hash:String
```

The calculated hash for the input source file content.

## Methods

### setSource

```haxe
function setSource(path:String):Void
```

Sets the file to convert.

### cleanup

```haxe
function cleanup():Void
```

Clears the state of the conversion after it ran.

### convert

```haxe
function convert():Void
```

Converts `srcPath` and writes the result to `dstPath`.

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

Returns the parameters that depend on the file content (see `hasLocalParams` and `getLocalContext`).
