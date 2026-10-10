# hxd.net.BinaryLoader

**class** · package [`hxd.net`](README.md) · source [`hxd/net/BinaryLoader.hx`](../../../../../hxd/net/BinaryLoader.hx)

Loads binary data from a URL (JS only).

## Constructor

### new

```haxe
function new(url:String):Void
```

Creates a loader for the URL.

## Variables

### url

```haxe
var url(default, null):String
```

The URL to load.

## Methods

### onLoaded

```haxe
dynamic function onLoaded(bytes:Bytes):Void
```

Called with the data when it is loaded.

### onProgress

```haxe
dynamic function onProgress(cur:Int, max:Int):Void
```

Called during the loading with the number of bytes loaded and the total.

### onError

```haxe
dynamic function onError(msg:String):Void
```

Called when the loading fails. Throws the message by default.

### load

```haxe
function load():Void
```

Starts the loading.
