# hxd.snd.openal.SpatializationDriver

**class** · package [`hxd.snd.openal`](README.md) · source [`hxd/snd/openal/SpatializationDriver.hx`](../../../../../../hxd/snd/openal/SpatializationDriver.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.snd.EffectDriver`](../EffectDriver.md)

Implements `hxd.snd.effect.Spatialization` with the OpenAL source position.

## Constructor

### new

```haxe
function new(driver:hxd.snd.Driver):Void
```

Creates the effect driver.

## Methods

### bind

```haxe
override function bind(e:hxd.snd.effect.Spatialization, s:SourceHandle):Void
```

### apply

```haxe
override function apply(e:hxd.snd.effect.Spatialization, s:SourceHandle):Void
```

### unbind

```haxe
override function unbind(e:hxd.snd.effect.Spatialization, s:SourceHandle):Void
```

## Inherited members

- from [`hxd.snd.EffectDriver`](../EffectDriver.md): `acquire`, `release`, `update`, `bind`, `apply`, `unbind`
