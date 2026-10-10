# hxd.snd.effect.Spatialization

**class** · package [`hxd.snd.effect`](README.md) · source [`hxd/snd/effect/Spatialization.hx`](../../../../../../hxd/snd/effect/Spatialization.hx)

Extends: [`hxd.snd.Effect`](../Effect.md)

Positions the sound in 3D, relative to `Manager.listener`: the volume decreases with the distance.

## Constructor

### new

```haxe
function new():Void
```

Creates the effect at the origin.

## Variables

### position

```haxe
var position:h3d.Vector
```

The position of the sound.

### velocity

```haxe
var velocity:h3d.Vector
```

The velocity of the sound, for the Doppler effect.

### direction

```haxe
var direction:h3d.Vector
```

The direction of the sound.

### referenceDistance

```haxe
var referenceDistance:Float
```

The distance under which the volume is not attenuated.

### maxDistance

```haxe
var maxDistance:Null<Float>
```

The distance after which the volume is no longer attenuated, or `null` for no limit.

### fadeDistance

```haxe
var fadeDistance:Null<Float>
```

If set, the volume also fades linearly to `0` over this distance, after `maxDistance` (or `referenceDistance`).

### rollOffFactor

```haxe
var rollOffFactor:Float
```

How fast the volume is attenuated with the distance (inverse distance model).

## Methods

### getVolumeModifier

```haxe
override function getVolumeModifier():Float
```

### applyAudibleVolumeModifier

```haxe
override function applyAudibleVolumeModifier(v:Float):Float
```

## Inherited members

- from [`hxd.snd.Effect`](../Effect.md): `applyAudibleVolumeModifier`, `getVolumeModifier`
