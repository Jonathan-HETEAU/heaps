# hxd.net.BinaryLoader

**class** · package [`hxd.net`](README.md) · source [`hxd/net/BinaryLoader.hx`](../../../../../hxd/net/BinaryLoader.hx)

## Constructor

### new

```haxe
function new(url:String):Void
```

## Variables

### url

```haxe
var url(default, null):String
```

## Methods

### onLoaded

```haxe
dynamic function onLoaded(bytes:Bytes):Void
```

### onProgress

```haxe
dynamic function onProgress(cur:Int, max:Int):Void
```

### onError

```haxe
dynamic function onError(msg:String):Void
```

### load

```haxe
function load():Void
```
