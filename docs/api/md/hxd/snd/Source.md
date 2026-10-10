# hxd.snd.Source

**class** · package [`hxd.snd`](README.md) · module `hxd.snd.Manager` · source [`hxd/snd/Manager.hx`](../../../../../hxd/snd/Manager.hx)

A hardware source of the sound driver, playing a channel.

## Constructor

### new

```haxe
function new(driver:Driver):Void
```

Creates a source with the driver.

## Variables

### id

```haxe
var id(default, null):Int
```

The identifier of the source.

### handle

```haxe
var handle:SourceHandle
```

The driver handle of the source.

### channel

```haxe
var channel:Channel
```

The channel played by the source, or `null` if it is free.

### buffers

```haxe
var buffers:Array<Buffer>
```

The buffers queued on the source.

### volume

```haxe
var volume:Float
```

The volume set on the source.

### playing

```haxe
var playing:Bool
```

Tells if the source is playing.

### start

```haxe
var start:Int
```

The sample position in the sound where the source started playing.

### streamSound

```haxe
var streamSound:hxd.res.Sound
```

The sound being streamed.

### streamBuffer

```haxe
var streamBuffer:Bytes
```

The bytes used to decode the streamed sound.

### streamStart

```haxe
var streamStart:Int
```

The sample position of the streamed part being decoded, which can be decoded over several frames.

### streamPos

```haxe
var streamPos:Int
```

The sample position up to which the streamed part is decoded.

## Methods

### dispose

```haxe
function dispose():Void
```

Releases the source.
