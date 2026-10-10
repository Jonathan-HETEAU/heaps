# hxd.DroppedFile

**class** · package [`hxd`](README.md) · module `hxd.DropFileEvent` · source [`hxd/DropFileEvent.hx`](../../../../hxd/DropFileEvent.hx)

The information about the dropped file.

## Constructor

### new

```haxe
function new(file:String):Void
```

Creates a dropped file of the given path.

## Variables

### file

```haxe
var file(default, null):String
```

The dropped file name/path.

### native _(js only)_

```haxe
var native(default, null):js.html.File
```

The native JS data transfer file.

## Methods

### getBytes

```haxe
function getBytes(callback:(data:Bytes) -> Void):Void
```

Retrieve the dropped file contents asynchronously and pass it to `callback`.
