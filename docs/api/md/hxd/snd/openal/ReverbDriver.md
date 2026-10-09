# hxd.snd.openal.ReverbDriver

**class** · package [`hxd.snd.openal`](README.md) · source [`hxd/snd/openal/ReverbDriver.hx`](../../../../../../hxd/snd/openal/ReverbDriver.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.snd.EffectDriver`](../EffectDriver.md)

## Constructor

### new

```haxe
function new(driver:Driver):Void
```

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
override function update(e:hxd.snd.effect.Reverb):Void
```

### bind

```haxe
override function bind(e:hxd.snd.effect.Reverb, s:SourceHandle):Void
```

### apply

```haxe
override function apply(e:hxd.snd.effect.Reverb, s:SourceHandle):Void
```

### unbind

```haxe
override function unbind(e:hxd.snd.effect.Reverb, s:SourceHandle):Void
```

## Inherited members

- from [`hxd.snd.EffectDriver`](../EffectDriver.md): `acquire`, `release`, `update`, `bind`, `apply`, `unbind`
