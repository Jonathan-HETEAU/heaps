# hxd.snd.effect.LowPass

**class** · package [`hxd.snd.effect`](README.md) · source [`hxd/snd/effect/LowPass.hx`](../../../../../../hxd/snd/effect/LowPass.hx)

Extends: [`hxd.snd.Effect`](../Effect.md)

A low pass filter, attenuating the high frequencies.

## Constructor

### new

```haxe
function new():Void
```

Creates an unfiltered low pass effect.

## Variables

### gainHF

```haxe
var gainHF:Float
```

The gain of the high frequencies, from `0` (removed) to `1` (unfiltered).

## Inherited members

- from [`hxd.snd.Effect`](../Effect.md): `applyAudibleVolumeModifier`, `getVolumeModifier`
