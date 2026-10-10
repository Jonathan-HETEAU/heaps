# hxd.snd.Effect

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Effect.hx`](../../../../../hxd/snd/Effect.hx)

Subclasses: [`hxd.snd.effect.LowPass`](effect/LowPass.md), [`hxd.snd.effect.Pitch`](effect/Pitch.md), [`hxd.snd.effect.Reverb`](effect/Reverb.md), [`hxd.snd.effect.Spatialization`](effect/Spatialization.md)

The base class of the sound effects (such as `hxd.snd.effect.Spatialization` or `hxd.snd.effect.Reverb`), added to a `Channel` or `ChannelGroup`.

## Constructor

### new

```haxe
function new(type:String):Void
```

Creates an effect, implemented by the effect driver of the given type.

## Methods

### applyAudibleVolumeModifier

```haxe
function applyAudibleVolumeModifier(v:Float):Float
```

Returns the volume heard after the effect, used to sort the channels and virtualize the inaudible ones.

### getVolumeModifier

```haxe
function getVolumeModifier():Float
```

Returns the factor applied to the channel volume by the effect.
