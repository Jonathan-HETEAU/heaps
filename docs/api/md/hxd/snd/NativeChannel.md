# hxd.snd.NativeChannel

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/NativeChannel.hx`](../../../../../hxd/snd/NativeChannel.hx)

A channel playing generated samples: subclass it and override `onSample` to fill the buffers with stereo float samples.
Supported on JS and with OpenAL on HashLink.

## Constructor

### new

```haxe
function new(bufferSamples:Int):Void
```

Creates the channel and starts playing.

## Variables

### bufferSamples

```haxe
var bufferSamples(default, null):Int
```

The number of samples of each buffer.

## Methods

### stop

```haxe
function stop():Void
```

Stops the channel.
