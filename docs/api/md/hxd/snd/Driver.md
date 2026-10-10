# hxd.snd.Driver

**interface** · package [`hxd.snd`](README.md) · source [`hxd/snd/Driver.hx`](../../../../../hxd/snd/Driver.hx)

Implemented by: [`hxd.snd.openal.Driver`](openal/Driver.md), [`hxd.snd.webaudio.Driver`](webaudio/Driver.md)

The interface of the low level sound API used by `hxd.snd.Manager`: OpenAL (`hxd.snd.openal.Driver`) or Web Audio (`hxd.snd.webaudio.Driver`).

## Methods

### hasFeature

```haxe
function hasFeature(d:DriverFeature):Bool
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
function setBufferData(buffer:BufferHandle, data:Bytes, size:Int, format:SampleFormat, channelCount:Int, samplingRate:Int):Void
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
function getEffectDriver(type:String):EffectDriver<Dynamic>
```

Returns the driver of the given effect type, or a driver doing nothing if the effect is not supported.
