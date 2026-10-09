# h3d.mat.Compare

**enum** · package [`h3d.mat`](README.md) · module `h3d.mat.Data` · source [`h3d/mat/Data.hx`](../../../../../h3d/mat/Data.hx)

A comparison function, used by the depth test (see `Pass.depthTest`) and the stencil test. The test passes when the
new value compared to the stored value matches the function.

## Constructors

### Always

```haxe
Always
```

The test always passes.

### Never

```haxe
Never
```

The test never passes.

### Equal

```haxe
Equal
```

Passes if the values are equal.

### NotEqual

```haxe
NotEqual
```

Passes if the values are different.

### Greater

```haxe
Greater
```

Passes if the new value is greater.

### GreaterEqual

```haxe
GreaterEqual
```

Passes if the new value is greater or equal.

### Less

```haxe
Less
```

Passes if the new value is lower.

### LessEqual

```haxe
LessEqual
```

Passes if the new value is lower or equal.
