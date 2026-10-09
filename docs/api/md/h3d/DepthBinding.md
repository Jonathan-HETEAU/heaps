# h3d.DepthBinding

**enum** · package [`h3d`](README.md) · module `h3d.Engine` · source [`h3d/Engine.hx`](../../../../h3d/Engine.hx)

How the depth buffer is bound when rendering to a target (see `Engine.pushTarget`).

## Constructors

### ReadWrite

```haxe
ReadWrite
```

The depth buffer of the target is tested and written.

### ReadOnly

```haxe
ReadOnly
```

The depth buffer of the target is tested but not written.

### DepthOnly

```haxe
DepthOnly
```

Only a depth buffer is bound, without color target.

### NotBound

```haxe
NotBound
```

No depth buffer is bound.
