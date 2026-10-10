# hxd.snd.Data

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Data.hx`](../../../../../hxd/snd/Data.hx)

Subclasses: [`hxd.snd.LoadingData`](LoadingData.md), [`hxd.snd.Mp3Data`](Mp3Data.md), [`hxd.snd.OggData`](OggData.md), [`hxd.snd.WavData`](WavData.md)

Decoded audio data: the base class of the decoders of each file format.

## Static methods

### formatBytes

```haxe
static inline function formatBytes(format:SampleFormat):Int
```

Returns the size of a sample of one channel in bytes.

## Variables

### samples

```haxe
var samples(default, null):Int
```

The number of samples (per channel).

### samplingRate

```haxe
var samplingRate(default, null):Int
```

The number of samples per second.

### sampleFormat

```haxe
var sampleFormat(default, null):SampleFormat
```

The format of the samples.

### channels

```haxe
var channels(default, null):Int
```

The number of channels (1 for mono, 2 for stereo).

### duration

```haxe
var duration(get, null):Float
```

The duration, in seconds.

## Methods

### isLoading

```haxe
function isLoading():Bool
```

Tells if the data is still loading: the number of samples might not be known yet.

### decode

```haxe
function decode(out:Bytes, outPos:Int, sampleStart:Int, sampleCount:Int):Void
```

Decodes `sampleCount` samples from `sampleStart` into `out` at `outPos`. The samples after the end are filled with silence.

### resample

```haxe
function resample(rate:Int, format:SampleFormat, channels:Int):Data
```

Returns the data converted to the given rate, format and number of channels (or this data if it already matches).

### resampleBuffer

```haxe
function resampleBuffer(out:Bytes, outPos:Int, input:Bytes, inPos:Int, rate:Int, format:SampleFormat, channels:Int, samples:Int):Void
```

Converts `samples` samples of `input` (in the format of this data) to the given rate, format and number of channels, into `out`.

### getBytesPerSample

```haxe
function getBytesPerSample():Int
```

Returns the size of a sample in bytes, for all channels.

### load

```haxe
function load(onEnd:() -> Void):Void
```

Some platforms might require some data to be loaded before we can start decoding.
Use load() and wait for onEnd to make sure that the sound data and the correct number of samples is available.
onEnd() might be called back immediately if the data is already available.
