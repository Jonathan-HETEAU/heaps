# hxd.snd.openal.LowPassDriver

**class** · package [`hxd.snd.openal`](README.md) · source [`hxd/snd/openal/LowPassDriver.hx`](../../../../../../hxd/snd/openal/LowPassDriver.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.snd.EffectDriver`](../EffectDriver.md)

Implements `hxd.snd.effect.LowPass` with an OpenAL EFX filter.

## Constructor

### new

```haxe
function new(driver:Driver):Void
```

Creates the effect driver.

## Methods

### acquire

```haxe
override function acquire():Void
```

### release

```haxe
override function release():Void
```

### update

```haxe
override function update(e:hxd.snd.effect.LowPass):Void
```

### apply

```haxe
override function apply(e:hxd.snd.effect.LowPass, source:SourceHandle):Void
```

### unbind

```haxe
override function unbind(e:hxd.snd.effect.LowPass, source:SourceHandle):Void
```

## Inherited members

- from [`hxd.snd.EffectDriver`](../EffectDriver.md): `acquire`, `release`, `update`, `bind`, `apply`, `unbind`
