# hxd.fs.AsyncRead

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/AsyncRead.hx`](../../../../../hxd/fs/AsyncRead.hx)

A pending asynchronous read, returned by `FileEntry.readBytesAsync`.
The `out` bytes must not be accessed until the read is done.

## Variables

### entry

```haxe
var entry(default, null):FileEntry
```

### out

```haxe
var out(default, null):Bytes
```

### outPos

```haxe
var outPos(default, null):Int
```

### pos

```haxe
var pos(default, null):Int
```

### len

```haxe
var len(default, null):Int
```

### priority

```haxe
var priority:Float
```

Requests with higher priority are read first. Can be modified while the request is pending.

### state

```haxe
var state(default, null):AsyncReadState
```

### bytesRead

```haxe
var bytesRead(default, null):Int
```

Number of bytes read, once the read is done.

## Methods

### cancel

```haxe
function cancel():Void
```

Cancel the read : the onDone callback will not be called.
If the read was already in progress, the `out` bytes might still be written until it completes.
