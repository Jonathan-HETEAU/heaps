# h3d.parts.Value

**enum** · package [`h3d.parts`](README.md) · module `h3d.parts.Data` · source [`h3d/parts/Data.hx`](../../../../../h3d/parts/Data.hx)

## Constructors

### VConst

```haxe
VConst(v:Float)
```

### VLinear

```haxe
VLinear(start:Float, len:Float)
```

### VPow

```haxe
VPow(start:Float, len:Float, pow:Float)
```

### VSin

```haxe
VSin(freq:Float, ampl:Float, offset:Float)
```

### VCos

```haxe
VCos(freq:Float, ampl:Float, offset:Float)
```

### VPoly

```haxe
VPoly(values:Array<Float>, points:Array<Float>)
```

### VRandom

```haxe
VRandom(start:Float, len:Float, converge:Converge)
```

### VCustom

```haxe
VCustom(p:() -> Float)
```
