# hxd.snd.OggData

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/OggData.hx`](../../../../../hxd/snd/OggData.hx)

Extends: [`hxd.snd.Data`](Data.md)

## Constructor

### new

```haxe
function new(bytes:Bytes):Void
```

## Methods

### resample _(hl/sdl, hl/directx only)_

```haxe
override function resample(rate:Int, format:SampleFormat, channels:Int):Data
```

## Inherited members

- from [`hxd.snd.Data`](Data.md): `samples`, `samplingRate`, `sampleFormat`, `channels`, `duration`, `isLoading`, `decode`, `resample`, `resampleBuffer`, `getBytesPerSample`, `load`
