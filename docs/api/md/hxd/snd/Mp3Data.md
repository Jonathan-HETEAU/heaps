# hxd.snd.Mp3Data

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Mp3Data.hx`](../../../../../hxd/snd/Mp3Data.hx)

Extends: [`hxd.snd.Data`](Data.md)

The decoder of MP3 data: with the native decoder on HashLink, with the browser decoder on JS (asynchronously).

## Constructor

### new

```haxe
function new(bytes:Bytes):Void
```

Reads the MP3 header and prepares the decoding.

## Methods

### isLoading _(js only)_

```haxe
override function isLoading():Bool
```

### load _(js only)_

```haxe
override function load(onEnd:() -> Void):Void
```

## Inherited members

- from [`hxd.snd.Data`](Data.md): `samples`, `samplingRate`, `sampleFormat`, `channels`, `duration`, `isLoading`, `decode`, `resample`, `resampleBuffer`, `getBytesPerSample`, `load`
