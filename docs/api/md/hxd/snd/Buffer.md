# hxd.snd.Buffer

**class** · package [`hxd.snd`](README.md) · module `hxd.snd.Manager` · source [`hxd/snd/Manager.hx`](../../../../../hxd/snd/Manager.hx)

A driver buffer containing the samples of a sound, or a part of a streamed sound.

## Constructor

### new

```haxe
function new(driver:Driver):Void
```

Creates a buffer with the driver.

## Variables

### handle

```haxe
var handle:BufferHandle
```

The driver handle of the buffer.

### sound

```haxe
var sound:hxd.res.Sound
```

The sound of the samples.

### isEnd

```haxe
var isEnd:Bool
```

Tells if the buffer contains the end of the sound.

### isStream

```haxe
var isStream:Bool
```

Tells if the buffer is a part of a streamed sound.

### refs

```haxe
var refs:Int
```

The number of sources using the buffer.

### lastStop

```haxe
var lastStop:Float
```

The time when the buffer was last released.

### start

```haxe
var start:Int
```

The position of the first sample of the buffer in the sound.

### end

```haxe
var end:Int
```

The position after the last sample of the buffer in the sound.

### samples

```haxe
var samples:Int
```

The number of samples.

### sampleRate

```haxe
var sampleRate:Int
```

The sample rate.

## Methods

### dispose

```haxe
function dispose():Void
```

Releases the buffer.
