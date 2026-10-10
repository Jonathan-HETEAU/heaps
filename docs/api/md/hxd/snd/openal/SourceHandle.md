# hxd.snd.openal.SourceHandle

**class** · package [`hxd.snd.openal`](README.md) · module `hxd.snd.openal.AudioTypes` · source [`hxd/snd/openal/AudioTypes.hx`](../../../../../../hxd/snd/openal/AudioTypes.hx) · available on hl/sdl, hl/directx

An OpenAL sound source, with the auxiliary sends used by its effects.

## Constructor

### new

```haxe
function new():Void
```

Creates a source.

## Variables

### inst

```haxe
var inst:openal.Source
```

The OpenAL source.

### sampleOffset

```haxe
var sampleOffset:Int
```

The number of samples of the buffers already removed from the queue.

### playing

```haxe
var playing:Bool
```

Tells if the source is playing.

## Methods

### acquireAuxiliarySend

```haxe
function acquireAuxiliarySend(effect:hxd.snd.Effect):Int
```

Allocates an auxiliary send for the effect and returns its index.

### getAuxiliarySend

```haxe
function getAuxiliarySend(effect:hxd.snd.Effect):Int
```

Returns the auxiliary send of the effect.

### releaseAuxiliarySend

```haxe
function releaseAuxiliarySend(effect:hxd.snd.Effect):Int
```

Releases the auxiliary send of the effect and returns its index.
