# hxsl.CacheFile2

**class** · package [`hxsl`](README.md) · source [`hxsl/CacheFile2.hx`](../../../../hxsl/CacheFile2.hx) · available on hl/sdl, hl/directx

Extends: [`hxsl.Cache`](Cache.md)

Similar to CacheFile, but save only platform-independent RuntimeShader data (shader list).

## Constructor

### new

```haxe
function new(file:String, allowSave:Bool, ?outFile:String):Void
```

Creates the cache for the file (saved to `outFile` if set).

## Static variables

### VERSION

```haxe
static var VERSION:Int
```

The version of the file format.

## Variables

### allowSave

```haxe
var allowSave:Bool
```

If set, the cache file is saved when new shaders are linked (see `saveIfModified`).

## Methods

### saveIfModified

```haxe
function saveIfModified():Void
```

Saves the cache file if new shaders were added.

### dump

```haxe
function dump(path:String, ?withCode:Bool = false):Void
```

Writes a description of the cached shaders to a file, for debugging.

## Inherited members

- from [`hxsl.Cache`](Cache.md): `getLinkShader`, `link`, `makeBatchShader`
