# hxd.snd.webaudio.SourceHandle

**class** · package [`hxd.snd.webaudio`](README.md) · module `hxd.snd.webaudio.AudioTypes` · source [`hxd/snd/webaudio/AudioTypes.hx`](../../../../../../hxd/snd/webaudio/AudioTypes.hx) · available on js

A Web Audio sound source: the chain of nodes (effects and gain) the buffers are played through.

## Constructor

### new

```haxe
function new():Void
```

Creates a source.

## Variables

### sampleOffset

```haxe
var sampleOffset:Int
```

The number of samples of the buffers already removed from the queue.

### playing

```haxe
var playing:Bool
```

Tells if the source is playing.

### driver

```haxe
var driver:Driver
```

The driver of the source.

### lowPass

```haxe
var lowPass:js.html.audio.BiquadFilterNode
```

The node of the low pass effect, if used.

### panner

```haxe
var panner:js.html.audio.PannerNode
```

The node of the spatialization effect, if used.

### gain

```haxe
var gain:js.html.audio.GainNode
```

The node applying the volume.

### destination

```haxe
var destination:js.html.audio.AudioNode
```

The first node of the chain, where the buffers are connected.

### buffers

```haxe
var buffers:Array<BufferPlayback>
```

The queued buffers.

### pitch

```haxe
var pitch:Float
```

The playback rate set by the pitch effect.

### firstPlay

```haxe
var firstPlay:Bool
```

Tells if no buffer was played yet: the first one is faded in to avoid a click.

## Methods

### updateDestination

```haxe
function updateDestination():Void
```

Rebuilds the chain of nodes after an effect node was added or removed, and restarts the playing buffers.

### applyPitch

```haxe
function applyPitch():Void
```

Applies the new `pitch` to the queued buffers, rescheduling them.
