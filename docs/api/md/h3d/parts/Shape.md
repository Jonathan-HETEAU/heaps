# h3d.parts.Shape

**enum** · package [`h3d.parts`](README.md) · module `h3d.parts.Data` · source [`h3d/parts/Data.hx`](../../../../../h3d/parts/Data.hx)

The volume the particles are emitted from.

## Constructors

### SLine

```haxe
SLine(size:Value)
```

Particles start at a random height along the Z axis, up to `size`, and move along Z.

### SSphere

```haxe
SSphere(radius:Value)
```

A sphere: particles move outwards.

### SCone

```haxe
SCone(radius:Value, angle:Value)
```

A cone around the Z axis, with the given opening angle in radians: particles move away from its apex.

### SDisc

```haxe
SDisc(radius:Value)
```

A disc in the XY plane: particles move outwards.

### SCustom

```haxe
SCustom(initPartPosDir:(Emitter, Particle) -> Void)
```

A custom function setting the initial position and direction of each particle.
