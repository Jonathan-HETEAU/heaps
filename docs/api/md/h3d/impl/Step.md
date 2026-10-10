# h3d.impl.Step

**enum** · package [`h3d.impl`](README.md) · module `h3d.impl.RendererFX` · source [`h3d/impl/RendererFX.hx`](../../../../../h3d/impl/RendererFX.hx)

The steps of the rendering at which a `RendererFX` can render.

## Constructors

### MainDraw

```haxe
MainDraw
```

The main draw of the opaque objects.

### Decals

```haxe
Decals
```

The decals.

### Shadows

```haxe
Shadows
```

The shadow maps.

### Lighting

```haxe
Lighting
```

The lighting.

### Forward

```haxe
Forward
```

The forward (non deferred) objects.

### BeforeTonemapping

```haxe
BeforeTonemapping
```

Before the tone mapping, in HDR.

### AfterTonemapping

```haxe
AfterTonemapping
```

After the tone mapping.

### AfterUpscaling

```haxe
AfterUpscaling
```

After the upscaling, at the output resolution.

### Overlay

```haxe
Overlay
```

The overlay objects.

### Debug

```haxe
Debug
```

The debug display.

### Custom

```haxe
Custom(name:String)
```

A step specific to a renderer.
