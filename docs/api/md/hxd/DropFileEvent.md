# hxd.DropFileEvent

**class** · package [`hxd`](README.md) · source [`hxd/DropFileEvent.hx`](../../../../hxd/DropFileEvent.hx)

The drag&drop operation event.

- **see** `hxd.Window.addDragAndDropTarget`
- **see** `hxd.Window.removeDragAndDropTarget`

## Constructor

### new

```haxe
function new(files:Array<DroppedFile>, dx:Int, dy:Int):Void
```

## Variables

### files

```haxe
var files(default, null):ReadOnlyArray<DroppedFile>
```

The list of the files that were dropped.

Only guaranteed to be populated when `kind == Drop`.

### file

```haxe
var file(get, null):Null<DroppedFile>
```

The first dropped file. Alias to `files[0]`.

### dropX

```haxe
var dropX(default, null):Int
```

The X position inside the window at which the file was dropped.

### dropY

```haxe
var dropY(default, null):Int
```

The Y position inside the window at which the file was dropped.
