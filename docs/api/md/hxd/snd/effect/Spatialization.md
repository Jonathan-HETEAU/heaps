# hxd.snd.effect.Spatialization

**class** · package [`hxd.snd.effect`](README.md) · source [`hxd/snd/effect/Spatialization.hx`](../../../../../../hxd/snd/effect/Spatialization.hx)

Extends: [`hxd.snd.Effect`](../Effect.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### position

```haxe
var position:h3d.Vector
```

### velocity

```haxe
var velocity:h3d.Vector
```

### direction

```haxe
var direction:h3d.Vector
```

### referenceDistance

```haxe
var referenceDistance:Float
```

### maxDistance

```haxe
var maxDistance:Null<Float>
```

### fadeDistance

```haxe
var fadeDistance:Null<Float>
```

### rollOffFactor

```haxe
var rollOffFactor:Float
```

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
