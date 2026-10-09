# hxd.snd.webaudio.Context

**class** · package [`hxd.snd.webaudio`](README.md) · source [`hxd/snd/webaudio/Context.hx`](../../../../../../hxd/snd/webaudio/Context.hx) · available on js

Common part between webaudio and OpenAL emulator - AudioContext and masterGain.

## Static variables

### destination

```haxe
static var destination:js.html.audio.AudioNode
```

### masterGain

```haxe
static var masterGain:js.html.audio.GainNode
```

## Static methods

### get

```haxe
static function get():js.html.audio.AudioContext
```

### getGain

```haxe
static inline function getGain():js.html.audio.GainNode
```

### putGain

```haxe
static inline function putGain(gain:js.html.audio.GainNode):Void
```

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
