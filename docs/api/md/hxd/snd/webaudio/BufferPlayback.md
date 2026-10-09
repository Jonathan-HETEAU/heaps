# hxd.snd.webaudio.BufferPlayback

**class** · package [`hxd.snd.webaudio`](README.md) · module `hxd.snd.webaudio.AudioTypes` · source [`hxd/snd/webaudio/AudioTypes.hx`](../../../../../../hxd/snd/webaudio/AudioTypes.hx) · available on js

## Constructor

### new

```haxe
function new():Void
```

## Variables

### buffer

```haxe
var buffer:BufferHandle
```

### node

```haxe
var node:js.html.audio.AudioBufferSourceNode
```

### offset

```haxe
var offset:Float
```

### dirty

```haxe
var dirty:Bool
```

### consumed

```haxe
var consumed:Bool
```

### starts

```haxe
var starts:Float
```

### ends

```haxe
var ends:Float
```

### currentSample

```haxe
var currentSample(get, null):Int
```

## Methods

### set

```haxe
function set(buf:BufferHandle, grainOffset:Float):Void
```

### start

```haxe
function start(ctx:js.html.audio.AudioContext, source:SourceHandle, time:Float):Float
```

### readjust

```haxe
function readjust(time:Float, source:SourceHandle):Float
```

### restart

```haxe
function restart(source:SourceHandle):Void
```

### stop

```haxe
function stop(?immediate:Bool = true):Void
```

### clear

```haxe
function clear():Void
```
