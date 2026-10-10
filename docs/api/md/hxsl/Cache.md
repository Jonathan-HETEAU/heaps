# hxsl.Cache

**class** · package [`hxsl`](README.md) · source [`hxsl/Cache.hx`](../../../../hxsl/Cache.hx)

Subclasses: [`hxsl.CacheFile`](CacheFile.md), [`hxsl.CacheFile2`](CacheFile2.md)

Links lists of shaders into `RuntimeShader`s and caches the results.

## Static methods

### get

```haxe
static function get():Cache
```

Returns the cache, created on the first call.

### set

```haxe
static function set(c:Cache):Void
```

Sets the cache (such as a `CacheFile` loading precompiled shaders).

### clear

```haxe
static function clear():Void
```

Removes the cache: a new one is created on the next `get`.

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

Returns the shader linking the shaders of the list (with their current variants), created and cached on the first call.

### makeBatchShader

```haxe
function makeBatchShader(rt:RuntimeShader, shaders:ShaderList, params:BatchInstanceParams):BatchShader
```

Returns a shader reading the per instance parameters of the linked shader from a buffer, to draw many instances in one call (see `h3d.scene.MeshBatch`).
