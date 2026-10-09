# hxsl.CacheFile2

**class** · package [`hxsl`](README.md) · source [`hxsl/CacheFile2.hx`](../../../../hxsl/CacheFile2.hx) · available on hl/sdl, hl/directx

Extends: [`hxsl.Cache`](Cache.md)

Similar to CacheFile, but save only platform-independent RuntimeShader data (shader list).

## Constructor

### new

```haxe
function new(file:String, allowSave:Bool, ?outFile:String):Void
```

## Static variables

### VERSION

```haxe
static var VERSION:Int
```

## Variables

### allowSave

```haxe
var allowSave:Bool
```

## Methods

### saveIfModified

```haxe
function saveIfModified():Void
```

### dump

```haxe
function dump(path:String, ?withCode:Bool = false):Void
```

## Inherited members

- from [`hxsl.Cache`](Cache.md): `getLinkShader`, `link`, `makeBatchShader`
