# h2d.ScaleMode

**enum** · package [`h2d`](README.md) · module `h2d.Scene` · source [`h2d/Scene.hx`](../../../../h2d/Scene.hx)

Scaling mode of the 2D Scene.

Set via `Scene.scaleMode`.

See ScaleMode2D sample for usage showcase.

## Constructors

### Resize

```haxe
Resize
```

Matches scene size to window size. `width` and `height` of Scene will match window size. Default scaling mode.

### Stretch

```haxe
Stretch(width:Int, height:Int)
```

Sets constant Scene size and stretches it to cover entire window. This behavior is same as old `setFixedSize` method.

- **param** `width` The width of the internal Scene viewport.
- **param** `height` The height of the internal Scene viewport.

### LetterBox

```haxe
LetterBox(width:Int, height:Int, ?integerScale:Bool, ?horizontalAlign:ScaleModeAlign, ?verticalAlign:ScaleModeAlign)
```

Sets constant Scene size and upscales it with preserving the aspect-ratio to fit the window.

With `800x600` window, `LetterBox(320, 260)` will result in center-aligned Scene of size `320x260` upscaled to fit into the window.
With same window but setting of `LetterBox(320, 260, true, Left, Top)` would result in the same Scene internal size,
upscaled to `640x480` resolution and anchored to the top-left corner of the window.

Note that while it's called LetterBox, there is no viewport rendering clipping apart from the out-of-bounds culling in `RenderContext.drawTile` / `Object.emitTile`.

- **param** `width` The width of the internal Scene viewport.
- **param** `height` The height of the internal Scene viewport.
- **param** `integerScale` When enabled, upscaling is performed only with integer increments (1x, 2x, 3x, etc) and can be used to achieve pixel-perfect scaling.
While enabled, the Scene won't be downscaled when internal viewport is larger than the window size and will remain at 1x zoom. Default: `false`.
- **param** `horizontalAlign` The horizontal viewport anchoring rule. Accepted values are `Left`, `Center` and `Right`. Default: `Center`.
- **param** `verticalAlign` The vertical viewport anchoring rule. Accepted values are `Top`, `Center` and `Bottom`. Default: `Center`.

### Fixed

```haxe
Fixed(width:Int, height:Int, zoom:Float, ?horizontalAlign:ScaleModeAlign, ?verticalAlign:ScaleModeAlign)
```

Sets constant Scene size, scale and alignment. Does not perform any adaptation to the window size apart from alignment.

With `800x600` window, `Fixed(200, 150, 2, Left, Center)` will result in the Scene size of `200x150`, and visually upscaled to `400x300`, and aligned to a middle-left of the window.

- **param** `width` The width of the internal Scene viewport.
- **param** `height` The height of the internal Scene viewport.
- **param** `zoom` The scaling multiplier of internal viewport when rendering onto the screen.
- **param** `horizontalAlign` The horizontal viewport anchoring rule. Accepted values are `Left`, `Center` and `Right`. Default: `Center`.
- **param** `verticalAlign` The vertical viewport anchoring rule. Accepted values are `Top`, `Center` and `Bottom`. Default: `Center`.

### Zoom

```haxe
Zoom(level:Float)
```

Upscales/downscales the Scene internal viewport according to `level` and matches Scene size to `ceil(window size / level)`.

With `800x600` window, `Zoom(2)` will result in the `400x300` Scene size upscaled to fill the entire window.

### AutoZoom

```haxe
AutoZoom(minWidth:Int, minHeight:Int, ?integerScaling:Bool)
```

Ensures that the Scene size will be of the minimum specified size.

Automatically calculates zoom level based on provided size according to `min(window width / min width, window height / min height)`, then applies same scaling as `Zoom(level)`.
The behavior is similar to `LetterBox`, however instead of constant internal viewport size, Scene size will change to cover the entire window.

`minWidth` or `minHeight` can be set to `0` in order to force scaling adjustment account only for either horizontal of vertical window size.
If both are `0`, results are undefined.

With `800x600` window, `AutoZoom(320, 260, false)` will result in the Scene size of `347x260`. `AutoZoom(320, 260, true)` will result in the size of `400x300`.

- **param** `minWidth` The minimum width of the internal Scene viewport.
- **param** `minHeight` The minimum height of the internal Scene viewport.
- **param** `integerScale` When enabled, upscaling is performed only with integer increments (1x, 2x, 3x, etc) and can be used to achieve pixel-perfect scaling.
While enabled, the Scene won't be downscaled when internal viewport is larger than the window size and will remain at 1x zoom. Default: `false`.

### Custom

```haxe
Custom(width:Int, height:Int, scaleW:Float, scaleH:Float)
```

Custom mode.
