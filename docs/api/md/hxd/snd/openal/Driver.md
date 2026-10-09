# hxd.snd.openal.Driver

**class** · package [`hxd.snd.openal`](README.md) · source [`hxd/snd/openal/Driver.hx`](../../../../../../hxd/snd/openal/Driver.hx) · available on hl/sdl, hl/directx

Implements: [`hxd.snd.Driver`](../Driver.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### device

```haxe
var device(default, null):openal.Device
```

### context

```haxe
var context(default, null):openal.Context
```

### maxAuxiliarySends

```haxe
var maxAuxiliarySends(default, null):Int
```

## Methods

### hasFeature

```haxe
function hasFeature(f:hxd.snd.DriverFeature):Bool
```

### getTmpBytes

```haxe
function getTmpBytes(size:Int):Bytes
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

### destroySource

```haxe
function destroySource(source:SourceHandle):Void
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

### createBuffer

```haxe
function createBuffer():BufferHandle
```

### destroyBuffer

```haxe
function destroyBuffer(buffer:BufferHandle):Void
```

### setBufferData

```haxe
function setBufferData(buffer:BufferHandle, data:Bytes, size:Int, format:hxd.snd.SampleFormat, channelCount:Int, samplingRate:Int):Void
```

### getPlayedSampleCount

```haxe
function getPlayedSampleCount(source:SourceHandle):Int
```

### getProcessedBuffers

```haxe
function getProcessedBuffers(source:SourceHandle):Int
```

### queueBuffer

```haxe
function queueBuffer(source:SourceHandle, buffer:BufferHandle, sampleStart:Int, endOfStream:Bool):Void
```

### unqueueBuffer

```haxe
function unqueueBuffer(source:SourceHandle, buffer:BufferHandle):Void
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
function getEffectDriver(type:String):hxd.snd.EffectDriver<Dynamic>
```
