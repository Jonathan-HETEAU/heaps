# h3d.impl.FrameGenUIMode

**enum** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

How the UI is handled by the frame generation, so that it is not interpolated: `BackBuffer` (the whole back buffer is interpolated), `HudLess` (a copy of the frame without UI is marked with `Upscaling.markFrameGenHudless`), or `UITexture` (the UI is drawn into a separate texture, see `Upscaling.getFrameGenUITarget`).

## Constructors

### BackBuffer

```haxe
BackBuffer
```

The whole back buffer is interpolated, UI included.

### HudLess

```haxe
HudLess
```

A copy of the frame without the UI is marked with `Upscaling.markFrameGenHudless`.

### UITexture

```haxe
UITexture
```

The UI is drawn into a separate texture, see `Upscaling.getFrameGenUITarget`.
