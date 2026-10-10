# hxd.snd.effect.Reverb

**class** · package [`hxd.snd.effect`](README.md) · source [`hxd/snd/effect/Reverb.hx`](../../../../../../hxd/snd/effect/Reverb.hx)

Extends: [`hxd.snd.Effect`](../Effect.md)

An I3DL2 environmental reverb. Volumes are in millibels (mB): `0` is the full volume, `-10000` is silent.
Only supported by the OpenAL driver.

## Constructor

### new

```haxe
function new(?preset:ReverbPreset):Void
```

Creates a reverb with the given preset (`ReverbPreset.DEFAULT` by default).

## Variables

### wetDryMix

```haxe
var wetDryMix:Float
```

The amount of reverberated sound mixed with the original sound, from `0` to `100` %.

### room

```haxe
var room:Float
```

The volume of the room effect, from `-10000` to `0` mB.

### roomHF

```haxe
var roomHF:Float
```

The attenuation of the high frequencies of the room effect, from `-10000` to `0` mB.

### roomRolloffFactor

```haxe
var roomRolloffFactor:Float
```

The attenuation of the reverb with the distance, from `0` to `10`.

### decayTime

```haxe
var decayTime:Float
```

The decay time of the reverb, from `0.1` to `20` seconds.

### decayHFRatio

```haxe
var decayHFRatio:Float
```

The ratio of the high frequencies decay time to `decayTime`, from `0.1` to `2`.

### reflections

```haxe
var reflections:Float
```

The volume of the early reflections, from `-10000` to `1000` mB.

### reflectionsDelay

```haxe
var reflectionsDelay:Float
```

The delay of the early reflections, from `0` to `0.3` seconds.

### reverb

```haxe
var reverb:Float
```

The volume of the late reverberation, from `-10000` to `2000` mB.

### reverbDelay

```haxe
var reverbDelay:Float
```

The delay of the late reverberation after the early reflections, from `0` to `0.1` seconds.

### diffusion

```haxe
var diffusion:Float
```

The echo density of the late reverberation, from `0` to `100` %.

### density

```haxe
var density:Float
```

The modal density of the late reverberation, from `0` to `100` %.

### hfReference

```haxe
var hfReference:Float
```

The reference frequency of the high frequencies, from `20` to `20000` Hz.

## Methods

### loadPreset

```haxe
function loadPreset(preset:ReverbPreset):Void
```

Sets the parameters from the preset (except `wetDryMix`).

## Inherited members

- from [`hxd.snd.Effect`](../Effect.md): `applyAudibleVolumeModifier`, `getVolumeModifier`
