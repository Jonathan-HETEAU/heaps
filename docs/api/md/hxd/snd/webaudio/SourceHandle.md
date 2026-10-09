# hxd.snd.webaudio.SourceHandle

**class** · package [`hxd.snd.webaudio`](README.md) · module `hxd.snd.webaudio.AudioTypes` · source [`hxd/snd/webaudio/AudioTypes.hx`](../../../../../../hxd/snd/webaudio/AudioTypes.hx) · available on js

## Constructor

### new

```haxe
function new():Void
```

## Variables

### sampleOffset

```haxe
var sampleOffset:Int
```

### playing

```haxe
var playing:Bool
```

### driver

```haxe
var driver:Driver
```

### lowPass

```haxe
var lowPass:js.html.audio.BiquadFilterNode
```

### panner

```haxe
var panner:js.html.audio.PannerNode
```

### gain

```haxe
var gain:js.html.audio.GainNode
```

### destination

```haxe
var destination:js.html.audio.AudioNode
```

### buffers

```haxe
var buffers:Array<BufferPlayback>
```

### pitch

```haxe
var pitch:Float
```

### firstPlay

```haxe
var firstPlay:Bool
```

## Methods

### updateDestination

```haxe
function updateDestination():Void
```

### applyPitch

```haxe
function applyPitch():Void
```
