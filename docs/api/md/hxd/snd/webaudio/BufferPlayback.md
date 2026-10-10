# hxd.snd.webaudio.BufferPlayback

**class** · package [`hxd.snd.webaudio`](README.md) · module `hxd.snd.webaudio.AudioTypes` · source [`hxd/snd/webaudio/AudioTypes.hx`](../../../../../../hxd/snd/webaudio/AudioTypes.hx) · available on js

A buffer queued on a Web Audio source, with its scheduled play times.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty playback.

## Variables

### buffer

```haxe
var buffer:BufferHandle
```

The buffer.

### node

```haxe
var node:js.html.audio.AudioBufferSourceNode
```

The node playing the buffer.

### offset

```haxe
var offset:Float
```

The start offset in the buffer, in seconds.

### dirty

```haxe
var dirty:Bool
```

Tells if the playback was started: the node can't be started again.

### consumed

```haxe
var consumed:Bool
```

Tells if the buffer was played completely.

### starts

```haxe
var starts:Float
```

The context time when the playback starts.

### ends

```haxe
var ends:Float
```

The context time when the playback ends.

### currentSample

```haxe
var currentSample(get, null):Int
```

The number of samples played.

## Methods

### set

```haxe
function set(buf:BufferHandle, grainOffset:Float):Void
```

Sets the buffer to play, starting at `grainOffset` seconds.

### start

```haxe
function start(ctx:js.html.audio.AudioContext, source:SourceHandle, time:Float):Float
```

Schedules the playback at the context time `time`, and returns its end time.

### readjust

```haxe
function readjust(time:Float, source:SourceHandle):Float
```

Updates the playback after a pitch change, and returns its end time.

### restart

```haxe
function restart(source:SourceHandle):Void
```

Restarts the playback with a new node, at the current position.

### stop

```haxe
function stop(?immediate:Bool = true):Void
```

Stops the playback.

### clear

```haxe
function clear():Void
```

Releases the buffer and node.
