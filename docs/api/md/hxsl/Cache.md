# hxsl.Cache

**class** · package [`hxsl`](README.md) · source [`hxsl/Cache.hx`](../../../../hxsl/Cache.hx)

Subclasses: [`hxsl.CacheFile`](CacheFile.md), [`hxsl.CacheFile2`](CacheFile2.md)

## Static methods

### get

```haxe
static function get():Cache
```

### set

```haxe
static function set(c:Cache):Void
```

### clear

```haxe
static function clear():Void
```

## Methods

### getLinkShader

```haxe
function getLinkShader(vars:Array<Output>, ?vertexOutputName:String = "output.position"):Null<Shader>
```

Creates a shader that generate the output requested.

### link

```haxe
function link(shaders:ShaderList, mode:LinkMode):RuntimeShader
```

### makeBatchShader

```haxe
function makeBatchShader(rt:RuntimeShader, shaders:ShaderList, params:BatchInstanceParams):BatchShader
```
