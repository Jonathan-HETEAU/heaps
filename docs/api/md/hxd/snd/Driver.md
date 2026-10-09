# hxd.snd.Driver

**interface** · package [`hxd.snd`](README.md) · source [`hxd/snd/Driver.hx`](../../../../../hxd/snd/Driver.hx)

Implemented by: [`hxd.snd.openal.Driver`](openal/Driver.md), [`hxd.snd.webaudio.Driver`](webaudio/Driver.md)

## Methods

### hasFeature

```haxe
function hasFeature(d:DriverFeature):Bool
```

### setMasterVolume

```haxe
function setMasterVolume(value:Float):Void
```

### setListenerParams

```haxe
function setListenerParams(position:h3d.Vector, direction:h3d.Vector, up:h3d.Vector, ?velocity:h3d.Vector):Void
```

### createSource

```haxe
function createSource():SourceHandle
```

### playSource

```haxe
function playSource(source:SourceHandle):Void
```

### stopSource

```haxe
function stopSource(source:SourceHandle):Void
```

### setSourceVolume

```haxe
function setSourceVolume(source:SourceHandle, value:Float):Void
```

### destroySource

```haxe
function destroySource(source:SourceHandle):Void
```

### createBuffer

```haxe
function createBuffer():BufferHandle
```

### setBufferData

```haxe
function setBufferData(buffer:BufferHandle, data:Bytes, size:Int, format:SampleFormat, channelCount:Int, samplingRate:Int):Void
```

### destroyBuffer

```haxe
function destroyBuffer(buffer:BufferHandle):Void
```

### queueBuffer

```haxe
function queueBuffer(source:SourceHandle, buffer:BufferHandle, sampleStart:Int, endOfStream:Bool):Void
```

### unqueueBuffer

```haxe
function unqueueBuffer(source:SourceHandle, buffer:BufferHandle):Void
```

### getProcessedBuffers

```haxe
function getProcessedBuffers(source:SourceHandle):Int
```

### getPlayedSampleCount

```haxe
function getPlayedSampleCount(source:SourceHandle):Int
```

### update

```haxe
function update():Void
```

### dispose

```haxe
function dispose():Void
```

### getEffectDriver

```haxe
function getEffectDriver(type:String):EffectDriver<Dynamic>
```
