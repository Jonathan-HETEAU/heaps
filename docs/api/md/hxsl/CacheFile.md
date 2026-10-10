# hxsl.CacheFile

**class** · package [`hxsl`](README.md) · source [`hxsl/CacheFile.hx`](../../../../hxsl/CacheFile.hx) · available on hl/sdl, hl/directx

Extends: [`hxsl.Cache`](Cache.md)

A shader cache saving the linked shaders and their compiled code to a file (`FILENAME`), to load them at startup instead of compiling them.

## Constructor

### new

```haxe
function new(allowCompile:Bool, ?recompileRT:Bool = false, ?showProgress:Bool = false):Void
```

Creates the cache and loads the file. If `allowCompile` is set, the shaders missing from the file are compiled; otherwise an error is thrown.

## Static variables

### FILENAME

```haxe
static var FILENAME:String
```

The path of the cache file. The compiled code is saved next to it, with a platform suffix.

## Variables

### allowSave

```haxe
var allowSave:Bool
```

If set, the new shaders are added to the cache file.

## Methods

### getLinkShader

```haxe
override function getLinkShader(vars:Array<Output>, ?vertexOutputName:String = "output.position"):Null<Shader>
```

### onMissingShader

```haxe
dynamic function onMissingShader(shaders:ShaderList):RuntimeShader
```

### onNewShader

```haxe
dynamic function onNewShader(r:RuntimeShader):Void
```

## Inherited members

- from [`hxsl.Cache`](Cache.md): `getLinkShader`, `link`, `makeBatchShader`
