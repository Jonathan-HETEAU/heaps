# hxd.snd.openal.Driver

**class** · package [`hxd.snd.openal`](README.md) · source [`hxd/snd/openal/Driver.hx`](../../../../../../hxd/snd/openal/Driver.hx) · available on hl/sdl, hl/directx

Implements: [`hxd.snd.Driver`](../Driver.md)

The OpenAL sound driver, used on HashLink (with the `hlopenal` library) and on JS with `-D useal` (through an emulator over Web Audio).

## Constructor

### new

```haxe
function new():Void
```

Creates the driver.

## Variables

### device

```haxe
var device(default, null):openal.Device
```

The OpenAL device.

### context

```haxe
var context(default, null):openal.Context
```

The OpenAL context.

### maxAuxiliarySends

```haxe
var maxAuxiliarySends(default, null):Int
```

The number of auxiliary sends per source supported by the device (used by the reverb).

## Methods

### hasFeature

```haxe
function hasFeature(f:hxd.snd.DriverFeature):Bool
```

Tells if the driver supports the feature.

### getTmpBytes

```haxe
function getTmpBytes(size:Int):Bytes
```

Returns temporary bytes of at least the given size.

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

### destroySource

```haxe
function destroySource(source:SourceHandle):Void
```

Releases the source.

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

### createBuffer

```haxe
function createBuffer():BufferHandle
```

Creates a buffer.

### destroyBuffer

```haxe
function destroyBuffer(buffer:BufferHandle):Void
```

Releases the buffer.

### setBufferData

```haxe
function setBufferData(buffer:BufferHandle, data:Bytes, size:Int, format:hxd.snd.SampleFormat, channelCount:Int, samplingRate:Int):Void
```

Fills the buffer with `size` bytes of samples.

### getPlayedSampleCount

```haxe
function getPlayedSampleCount(source:SourceHandle):Int
```

Returns the number of samples played by the source in its current buffer.

### getProcessedBuffers

```haxe
function getProcessedBuffers(source:SourceHandle):Int
```

Returns the number of queued buffers that were played.

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
