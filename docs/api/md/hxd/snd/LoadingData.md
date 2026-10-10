# hxd.snd.LoadingData

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/LoadingData.hx`](../../../../../hxd/snd/LoadingData.hx)

Extends: [`hxd.snd.Data`](Data.md)

The data of a sound that is not loaded yet: decoding it throws until `load` completes.

## Constructor

### new

```haxe
function new(snd:hxd.res.Sound):Void
```

Creates the data for the sound.

## Methods

### decode

```haxe
override function decode(out:Bytes, outPos:Int, sampleStart:Int, sampleCount:Int):Void
```

### load

```haxe
override function load(onEnd:() -> Void):Void
```

## Inherited members

- from [`hxd.snd.Data`](Data.md): `samples`, `samplingRate`, `sampleFormat`, `channels`, `duration`, `isLoading`, `decode`, `resample`, `resampleBuffer`, `getBytesPerSample`, `load`
