# h3d.mat.StencilOp

**enum** · package [`h3d.mat`](README.md) · module `h3d.mat.Data` · source [`h3d/mat/Data.hx`](../../../../../h3d/mat/Data.hx)

An operation applied to the stencil buffer value (see `Stencil`).

## Constructors

### Keep

```haxe
Keep
```

Keeps the current value.

### Zero

```haxe
Zero
```

Sets the value to 0.

### Replace

```haxe
Replace
```

Sets the value to the reference value.

### Increment

```haxe
Increment
```

Increments the value, clamped to the maximum.

### IncrementWrap

```haxe
IncrementWrap
```

Increments the value, wrapping to 0 after the maximum.

### Decrement

```haxe
Decrement
```

Decrements the value, clamped to 0.

### DecrementWrap

```haxe
DecrementWrap
```

Decrements the value, wrapping to the maximum below 0.

### Invert

```haxe
Invert
```

Inverts the bits of the value.
