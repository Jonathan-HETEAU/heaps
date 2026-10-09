# hxsl.CacheFile

**class** · package [`hxsl`](README.md) · source [`hxsl/CacheFile.hx`](../../../../hxsl/CacheFile.hx) · available on hl/sdl, hl/directx

Extends: [`hxsl.Cache`](Cache.md)

## Constructor

### new

```haxe
function new(allowCompile:Bool, ?recompileRT:Bool = false, ?showProgress:Bool = false):Void
```

## Static variables

### FILENAME

```haxe
static var FILENAME:String
```

## Variables

### allowSave

```haxe
var allowSave:Bool
```

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
