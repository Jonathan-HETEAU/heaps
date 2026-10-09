# h3d.parts.Value

**enum** · package [`h3d.parts`](README.md) · module `h3d.parts.Data` · source [`h3d/parts/Data.hx`](../../../../../h3d/parts/Data.hx)

A value of a particle property, evaluated at a time `t` (the fraction of the particle life, or of the emitter loop,
from `0` to `1`).

## Constructors

### VConst

```haxe
VConst(v:Float)
```

A constant `v`.

### VLinear

```haxe
VLinear(start:Float, len:Float)
```

`start + len * t`

### VPow

```haxe
VPow(start:Float, len:Float, pow:Float)
```

`start + len * t ^ pow`

### VSin

```haxe
VSin(freq:Float, ampl:Float, offset:Float)
```

`sin(t * freq) * ampl + offset`

### VCos

```haxe
VCos(freq:Float, ampl:Float, offset:Float)
```

`cos(t * freq) * ampl + offset`

### VPoly

```haxe
VPoly(values:Array<Float>, points:Array<Float>)
```

A polynomial of coefficients `values` (from degree 0); `points` are the control points it was computed from (for editors).

### VRandom

```haxe
VRandom(start:Float, len:Float, converge:Converge)
```

A random value between `start` and `start + len`, chosen per particle.

### VCustom

```haxe
VCustom(p:() -> Float)
```

A value computed by a function of the particle.
