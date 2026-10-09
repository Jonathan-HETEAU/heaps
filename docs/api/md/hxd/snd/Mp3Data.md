# hxd.snd.Mp3Data

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Mp3Data.hx`](../../../../../hxd/snd/Mp3Data.hx)

Extends: [`hxd.snd.Data`](Data.md)

## Constructor

### new

```haxe
function new(bytes:Bytes):Void
```

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
