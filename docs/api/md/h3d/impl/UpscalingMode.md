# h3d.impl.UpscalingMode

**enum** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

The quality mode of the upscaler: the lower the quality, the smaller the render resolution.

## Constructors

### Off

```haxe
Off
```

No upscaling: rendered at full resolution.

### NativeAA

```haxe
NativeAA
```

Rendered at full resolution, with the upscaler used as anti-aliasing (DLAA).

### Quality

```haxe
Quality
```

The highest quality upscaling.

### Balanced

```haxe
Balanced
```

Balanced quality and performance.

### Performance

```haxe
Performance
```

Favors performance over quality.

### UltraPerformance

```haxe
UltraPerformance
```

The lowest render resolution.
