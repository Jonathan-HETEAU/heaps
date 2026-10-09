# h3d.mat.Blend

**enum** · package [`h3d.mat`](README.md) · module `h3d.mat.Data` · source [`h3d/mat/Data.hx`](../../../../../h3d/mat/Data.hx)

A blend factor: the value the source (pixel being drawn) or destination (pixel in the target) color is multiplied by
before being combined (see `Pass.blend`).

## Constructors

### One

```haxe
One
```

`1`

### Zero

```haxe
Zero
```

`0`

### SrcAlpha

```haxe
SrcAlpha
```

The source alpha.

### SrcColor

```haxe
SrcColor
```

The source color.

### DstAlpha

```haxe
DstAlpha
```

The destination alpha.

### DstColor

```haxe
DstColor
```

The destination color.

### OneMinusSrcAlpha

```haxe
OneMinusSrcAlpha
```

`1 - source alpha`

### OneMinusSrcColor

```haxe
OneMinusSrcColor
```

`1 - source color`

### OneMinusDstAlpha

```haxe
OneMinusDstAlpha
```

`1 - destination alpha`

### OneMinusDstColor

```haxe
OneMinusDstColor
```

`1 - destination color`

### ConstantColor

```haxe
ConstantColor
```

The constant blend color (WebGL only).

### ConstantAlpha

```haxe
ConstantAlpha
```

The constant blend alpha (WebGL only).

### OneMinusConstantColor

```haxe
OneMinusConstantColor
```

`1 - constant color` (WebGL only).

### OneMinusConstantAlpha

```haxe
OneMinusConstantAlpha
```

`1 - constant alpha` (WebGL only).

### SrcAlphaSaturate

```haxe
SrcAlphaSaturate
```

`min(source alpha, 1 - destination alpha)`
