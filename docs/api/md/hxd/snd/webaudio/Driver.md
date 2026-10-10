# hxd.snd.webaudio.Driver

**class** · package [`hxd.snd.webaudio`](README.md) · source [`hxd/snd/webaudio/Driver.hx`](../../../../../../hxd/snd/webaudio/Driver.hx) · available on js

Implements: [`hxd.snd.Driver`](../Driver.md)

The Web Audio sound driver, used on JS (unless `-D useal` is set).

## Constructor

### new

```haxe
function new():Void
```

Creates the driver.

## Variables

### ctx

```haxe
var ctx:js.html.audio.AudioContext
```

The audio context.

### masterGain

```haxe
var masterGain(get, null):js.html.audio.GainNode
```

The node applying the master volume.

### destination

```haxe
var destination(get, set):js.html.audio.AudioNode
```

The node the sources are connected to.

## Methods

### getBuffer

```haxe
inline function getBuffer(channels:Int, sampleCount:Int, rate:Int):js.html.audio.AudioBuffer
```

Returns free AudioBuffer instance corresponding to sample count, amount of channels and sample-rate.

### putBuffer

```haxe
inline function putBuffer(buf:js.html.audio.AudioBuffer):Void
```

Puts AudioBuufer back to it's pool.

### getGain

```haxe
inline function getGain():js.html.audio.GainNode
```

Returns free Gain node

### putGain

```haxe
inline function putGain(gain:js.html.audio.GainNode):Void
```

Puts a gain node back in the pool.

### hasFeature

```haxe
function hasFeature(d:hxd.snd.DriverFeature):Bool
```

Tells if the driver supports the feature.

### setMasterVolume

```haxe
function setMasterVolume(value:Float):Void
```

Sets the global volume.

### setListenerParams

```haxe
function setListenerParams(position:h3d.Vector, direction:h3d.Vector, up:h3d.Vector, ?velocity:h3d.Vector):Void
```

Sets the position, orientation and velocity of the listener.

### createSource

```haxe
function createSource():SourceHandle
```

Creates a source.

### playSource

```haxe
function playSource(source:SourceHandle):Void
```

Starts playing the buffers queued on the source.

### stopSource

```haxe
function stopSource(source:SourceHandle):Void
```

Stops the source.

### setSourceVolume

```haxe
function setSourceVolume(source:SourceHandle, value:Float):Void
```

Sets the volume of the source.

### destroySource

```haxe
function destroySource(source:SourceHandle):Void
```

Releases the source.

### createBuffer

```haxe
function createBuffer():BufferHandle
```

Creates a buffer.

### setBufferData

```haxe
function setBufferData(buffer:BufferHandle, data:Bytes, size:Int, format:hxd.snd.SampleFormat, channelCount:Int, samplingRate:Int):Void
```

Fills the buffer with `size` bytes of samples.

### destroyBuffer

```haxe
function destroyBuffer(buffer:BufferHandle):Void
```

Releases the buffer.

### queueBuffer

```haxe
function queueBuffer(source:SourceHandle, buffer:BufferHandle, sampleStart:Int, endOfStream:Bool):Void
```

Queues the buffer on the source, starting at the sample `sampleStart`. `endOfStream` tells if it is the last buffer of the sound.

### unqueueBuffer

```haxe
function unqueueBuffer(source:SourceHandle, buffer:BufferHandle):Void
```

Removes the buffer from the queue of the source.

### getProcessedBuffers

```haxe
function getProcessedBuffers(source:SourceHandle):Int
```

Returns the number of queued buffers that were played.

### getPlayedSampleCount

```haxe
function getPlayedSampleCount(source:SourceHandle):Int
```

Returns the number of samples played by the source in its current buffer.

### update

```haxe
function update():Void
```

Called on each update of the manager.

### dispose

```haxe
function dispose():Void
```

Releases the driver.

### getEffectDriver

```haxe
function getEffectDriver(type:String):hxd.snd.EffectDriver<Dynamic>
```

Returns the driver of the given effect type, or a driver doing nothing if the effect is not supported.
