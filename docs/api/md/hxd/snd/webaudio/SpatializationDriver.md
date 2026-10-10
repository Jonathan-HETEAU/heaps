# hxd.snd.webaudio.SpatializationDriver

**class** · package [`hxd.snd.webaudio`](README.md) · source [`hxd/snd/webaudio/SpatializationDriver.hx`](../../../../../../hxd/snd/webaudio/SpatializationDriver.hx) · available on js

Extends: [`hxd.snd.EffectDriver`](../EffectDriver.md)

Implements `hxd.snd.effect.Spatialization` with a Web Audio panner node.

## Constructor

### new

```haxe
function new():Void
```

Creates the effect driver.

## Methods

### bind

```haxe
override function bind(e:hxd.snd.effect.Spatialization, source:SourceHandle):Void
```

### apply

```haxe
override function apply(e:hxd.snd.effect.Spatialization, source:SourceHandle):Void
```

### unbind

```haxe
override function unbind(e:hxd.snd.effect.Spatialization, source:SourceHandle):Void
```

## Inherited members

- from [`hxd.snd.EffectDriver`](../EffectDriver.md): `acquire`, `release`, `update`, `bind`, `apply`, `unbind`
