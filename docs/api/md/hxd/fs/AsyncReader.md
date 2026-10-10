# hxd.fs.AsyncReader

**class** · package [`hxd.fs`](README.md) · module `hxd.fs.AsyncRead` · source [`hxd/fs/AsyncRead.hx`](../../../../../hxd/fs/AsyncRead.hx)

Reads file data asynchronously : a single IO thread is shared by all file systems,
reading the pending requests by priority order.

The completion callback is called in the thread that requested the read, through its event loop
(the main thread loop is run by heaps, other threads need to have an event loop running).

When async reads are not supported (non-threaded target, or ENABLED=false),
the reads are emulated : they are done synchronously at the next event loop of the calling thread,
in requests order, and the callbacks are called the same way.

## Static variables

### ENABLED

```haxe
static var ENABLED:Bool
```

Set to false to emulate all async reads synchronously.

## Static methods

### isAsync

```haxe
static function isAsync():Bool
```

Tells if the reads are really asynchronous (on threaded targets when `ENABLED` is set), or emulated.

### read

```haxe
static function read(entry:FileEntry, out:Bytes, outPos:Int, pos:Int, len:Int, onDone:() -> Void, priority:Float):AsyncRead
```

Requests the read of `len` bytes at `pos` in the file into `out` at `outPos`. `onDone` is called with the number of bytes read.
