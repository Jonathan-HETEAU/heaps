# h3d.anim.DataLayout

**enum** · package [`h3d.anim`](README.md) · module `h3d.anim.BufferAnimation` · source [`h3d/anim/BufferAnimation.hx`](../../../../../h3d/anim/BufferAnimation.hx)

The values stored per frame for an object of a `BufferAnimation`.

## Constructors

### Position

```haxe
Position
```

3 floats of position.

### Rotation

```haxe
Rotation
```

3 floats of rotation (the X, Y and Z of a normalized quaternion).

### Scale

```haxe
Scale
```

3 floats of scale.

### UV

```haxe
UV
```

2 floats of UV offset.

### Alpha

```haxe
Alpha
```

1 float of alpha.

### Property

```haxe
Property
```

1 float of a custom property.

### SingleFrame

```haxe
SingleFrame
```

The values do not change: they are stored once instead of once per frame.
