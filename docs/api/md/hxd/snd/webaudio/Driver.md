# hxd.snd.webaudio.Driver

**class** · package [`hxd.snd.webaudio`](README.md) · source [`hxd/snd/webaudio/Driver.hx`](../../../../../../hxd/snd/webaudio/Driver.hx) · available on js

Implements: [`hxd.snd.Driver`](../Driver.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### ctx

```haxe
var ctx:js.html.audio.AudioContext
```

### masterGain

```haxe
var masterGain(get, null):js.html.audio.GainNode
```

### destination

```haxe
var destination(get, set):js.html.audio.AudioNode
```

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

### hasFeature

```haxe
function hasFeature(d:hxd.snd.DriverFeature):Bool
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
function setBufferData(buffer:BufferHandle, data:Bytes, size:Int, format:hxd.snd.SampleFormat, channelCount:Int, samplingRate:Int):Void
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
function getEffectDriver(type:String):hxd.snd.EffectDriver<Dynamic>
```
