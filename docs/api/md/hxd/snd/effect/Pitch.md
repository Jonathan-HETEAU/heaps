# hxd.snd.effect.Pitch

**class** · package [`hxd.snd.effect`](README.md) · source [`hxd/snd/effect/Pitch.hx`](../../../../../../hxd/snd/effect/Pitch.hx)

Extends: [`hxd.snd.Effect`](../Effect.md)

Changes the pitch (and speed) of the sound.

## Constructor

### new

```haxe
function new(?value:Float = 1.0):Void
```

Creates a pitch effect.

## Variables

### value

```haxe
var value:Float
```

The pitch multiplier: `1` is the normal pitch, `2` one octave higher.

## Inherited members

- from [`hxd.snd.Effect`](../Effect.md): `applyAudibleVolumeModifier`, `getVolumeModifier`
