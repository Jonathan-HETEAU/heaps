# hxd.snd.Data

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Data.hx`](../../../../../hxd/snd/Data.hx)

Subclasses: [`hxd.snd.LoadingData`](LoadingData.md), [`hxd.snd.Mp3Data`](Mp3Data.md), [`hxd.snd.OggData`](OggData.md), [`hxd.snd.WavData`](WavData.md)

## Static methods

### formatBytes

```haxe
static inline function formatBytes(format:SampleFormat):Int
```

## Variables

### samples

```haxe
var samples(default, null):Int
```

### samplingRate

```haxe
var samplingRate(default, null):Int
```

### sampleFormat

```haxe
var sampleFormat(default, null):SampleFormat
```

### channels

```haxe
var channels(default, null):Int
```

### duration

```haxe
var duration(get, null):Float
```

## Methods

### isLoading

```haxe
function isLoading():Bool
```

### decode

```haxe
function decode(out:Bytes, outPos:Int, sampleStart:Int, sampleCount:Int):Void
```

### resample

```haxe
function resample(rate:Int, format:SampleFormat, channels:Int):Data
```

### resampleBuffer

```haxe
function resampleBuffer(out:Bytes, outPos:Int, input:Bytes, inPos:Int, rate:Int, format:SampleFormat, channels:Int, samples:Int):Void
```

### getBytesPerSample

```haxe
function getBytesPerSample():Int
```

### load

```haxe
function load(onEnd:() -> Void):Void
```

Some platforms might require some data to be loaded before we can start decoding.
Use load() and wait for onEnd to make sure that the sound data and the correct number of samples is available.
onEnd() might be called back immediately if the data is already available.
