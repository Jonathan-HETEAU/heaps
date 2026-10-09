# h2d.BlendMode

**enum** · package [`h2d`](README.md) · source [`h2d/BlendMode.hx`](../../../../h2d/BlendMode.hx)

The blending rules when rendering a Tile/Material.

## Constructors

### None

```haxe
None
```

`Out = 1 * Src + 0 * Dst`

### Alpha

```haxe
Alpha
```

`Out = SrcA * Src + (1 - SrcA) * Dst`

### Add

```haxe
Add
```

`Out = SrcA * Src + 1 * Dst`

### AlphaAdd

```haxe
AlphaAdd
```

`Out = Src + (1 - SrcA) * Dst`

### SoftAdd

```haxe
SoftAdd
```

`Out = (1 - Dst) * Src + 1 * Dst`

### Multiply

```haxe
Multiply
```

`Out = Dst * Src + 0 * Dst`

### AlphaMultiply

```haxe
AlphaMultiply
```

`Out = Dst * Src + (1 - SrcA) * Dst`

### Erase

```haxe
Erase
```

`Out = 0 * Src + (1 - Srb) * Dst`

### Screen

```haxe
Screen
```

`Out = 1 * Src + (1 - Srb) * Dst`

### Sub

```haxe
Sub
```

`Out = 1 * Dst - SrcA * Src`

### Max

```haxe
Max
```

The output color is the max of the source and dest colors.
The blend parameters Src and Dst are ignored for this equation.  
`Out = MAX( Src, Dst )`

### Min

```haxe
Min
```

The output color is the min of the source and dest colors.
The blend parameters Src and Dst are ignored for this equation.  
`Out = MAX( Src, Dst )`
