# hxsl.CacheFile2Loader

**class** · package [`hxsl`](README.md) · module `hxsl.CacheFile2` · source [`hxsl/CacheFile2.hx`](../../../../hxsl/CacheFile2.hx) · available on hl/sdl, hl/directx

## Constructor

### new

```haxe
function new(cache:CacheFile2):Void
```

## Variables

### lkInfos

```haxe
var lkInfos:Array<{ vars:Array<Output>, name:String }>
```

### bcMap

```haxe
var bcMap:Map<String, { sign:String, params:BatchInstanceParams }>
```

### rtInfosDefault

```haxe
var rtInfosDefault:Array<{ sl:Array<hxsl._CacheFile2.ShaderListInfo>, sign:String }>
```

### rtInfosBatch

```haxe
var rtInfosBatch:Array<{ sl:Array<hxsl._CacheFile2.ShaderListInfo>, sign:String }>
```

### rtInfosCompute

```haxe
var rtInfosCompute:Array<{ sl:Array<hxsl._CacheFile2.ShaderListInfo>, sign:String }>
```

### bfMap

```haxe
var bfMap:Map<Int, hxd.BufferFormat>
```

## Methods

### run

```haxe
function run(onDone:() -> Void):Void
```
