# hxsl.CacheFile2Loader

**class** · package [`hxsl`](README.md) · module `hxsl.CacheFile2` · source [`hxsl/CacheFile2.hx`](../../../../hxsl/CacheFile2.hx) · available on hl/sdl, hl/directx

Loads the shader lists of a `CacheFile2` and links them, possibly in a thread (with `-D heaps_mt_hxsl_cache`).

## Constructor

### new

```haxe
function new(cache:CacheFile2):Void
```

Creates a loader for the cache.

## Variables

### lkInfos

```haxe
var lkInfos:Array<{ vars:Array<Output>, name:String }>
```

The link shaders read from the file.

### bcMap

```haxe
var bcMap:Map<String, { sign:String, params:BatchInstanceParams }>
```

The batch shaders read from the file.

### rtInfosDefault

```haxe
var rtInfosDefault:Array<{ sl:Array<hxsl._CacheFile2.ShaderListInfo>, sign:String }>
```

The default shader lists read from the file.

### rtInfosBatch

```haxe
var rtInfosBatch:Array<{ sl:Array<hxsl._CacheFile2.ShaderListInfo>, sign:String }>
```

The batch shader lists read from the file.

### rtInfosCompute

```haxe
var rtInfosCompute:Array<{ sl:Array<hxsl._CacheFile2.ShaderListInfo>, sign:String }>
```

The compute shader lists read from the file.

### bfMap

```haxe
var bfMap:Map<Int, hxd.BufferFormat>
```

The buffer formats read from the file.

## Methods

### run

```haxe
function run(onDone:() -> Void):Void
```

Links all the shader lists, then calls `onDone`.
