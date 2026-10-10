# hxd.snd.webaudio.Context

**class** · package [`hxd.snd.webaudio`](README.md) · source [`hxd/snd/webaudio/Context.hx`](../../../../../../hxd/snd/webaudio/Context.hx) · available on js

Common part between webaudio and OpenAL emulator - AudioContext and masterGain.

## Static variables

### destination

```haxe
static var destination:js.html.audio.AudioNode
```

The node the sources are connected to.

### masterGain

```haxe
static var masterGain:js.html.audio.GainNode
```

The node applying the master volume.

## Static methods

### get

```haxe
static function get():js.html.audio.AudioContext
```

Returns the audio context, created on the first call. Throws if Web Audio is not available.

### getGain

```haxe
static inline function getGain():js.html.audio.GainNode
```

Returns a gain node from the pool.

### putGain

```haxe
static inline function putGain(gain:js.html.audio.GainNode):Void
```

Puts a gain node back in the pool.

### getBuffer

```haxe
static function getBuffer(channels:Int, sampleCount:Int, rate:Int):js.html.audio.AudioBuffer
```

Returns free AudioBuffer instance corresponding to sample count, amount of channels and sample-rate.

### putBuffer

```haxe
static function putBuffer(buf:js.html.audio.AudioBuffer):Void
```

Puts AudioBuufer back to it's pool.
