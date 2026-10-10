# hxd.snd.webaudio.PitchDriver

**class** · package [`hxd.snd.webaudio`](README.md) · source [`hxd/snd/webaudio/PitchDriver.hx`](../../../../../../hxd/snd/webaudio/PitchDriver.hx) · available on js

Extends: [`hxd.snd.EffectDriver`](../EffectDriver.md)

Implements `hxd.snd.effect.Pitch` with the playback rate of the Web Audio buffers.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### apply

```haxe
override function apply(e:hxd.snd.effect.Pitch, source:SourceHandle):Void
```

### unbind

```haxe
override function unbind(e:hxd.snd.effect.Pitch, source:SourceHandle):Void
```

## Inherited members

- from [`hxd.snd.EffectDriver`](../EffectDriver.md): `acquire`, `release`, `update`, `bind`, `apply`, `unbind`
