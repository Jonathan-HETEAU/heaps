# hxd.snd.OggData

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/OggData.hx`](../../../../../hxd/snd/OggData.hx)

Extends: [`hxd.snd.Data`](Data.md)

The decoder of Ogg Vorbis data: native on HashLink, with the `stb_ogg_sound` library on other targets (without it, decoding throws an error).

## Constructor

### new

```haxe
function new(bytes:Bytes):Void
```

Opens the Ogg data.

## Methods

### resample _(hl/sdl, hl/directx only)_

```haxe
override function resample(rate:Int, format:SampleFormat, channels:Int):Data
```

## Inherited members

- from [`hxd.snd.Data`](Data.md): `samples`, `samplingRate`, `sampleFormat`, `channels`, `duration`, `isLoading`, `decode`, `resample`, `resampleBuffer`, `getBytesPerSample`, `load`
