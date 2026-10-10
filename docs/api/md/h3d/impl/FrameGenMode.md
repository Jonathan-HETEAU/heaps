# h3d.impl.FrameGenMode

**enum** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

The frame generation mode.

## Constructors

### Off

```haxe
Off
```

No frame generation.

### On

```haxe
On
```

Frame generation enabled.

### Auto

```haxe
Auto
```

Frame generation enabled when the backend decides it is beneficial.

### Dynamic

```haxe
Dynamic
```

The backend adapts the number of generated frames (see `dynamicSupported`).
