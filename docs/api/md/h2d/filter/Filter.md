# h2d.filter.Filter

**class** · package [`h2d.filter`](README.md) · source [`h2d/filter/Filter.hx`](../../../../../h2d/filter/Filter.hx)

Subclasses: [`h2d.filter.AbstractMask`](AbstractMask.md), [`h2d.filter.Blur`](Blur.md), [`h2d.filter.ColorMatrix`](ColorMatrix.md), [`h2d.filter.Displacement`](Displacement.md), [`h2d.filter.Group`](Group.md), [`h2d.filter.Nothing`](Nothing.md), [`h2d.filter.Outline`](Outline.md), [`h2d.filter.Shader`](Shader.md), [`h2d.filter.ToneMapping`](ToneMapping.md)

The base filter class, you can extend it in order to define your own filters, although ShaderFilter will be the most straightforward way to define simple custom filter.

Keep in mind that filters use internal Object resolution to render its content, hence scaling of the filtered object would not increase the rendering resolution.
For example, 20x20px `Bitmap` with `scale = 2` will render onto 20x20 filter texture if filter is attached to it directly,
but if filter is attached to the parent of that bitmap, filter will render 40x40 texture.
Another thing to be aware of, is that `Scene.scaleMode` does not affect filter resolution either,
and upscaling contents with `scaleMode` would not upscale the resolution of filtered content.

Filters limit their render area dictated by bound object boundaries, `Filter.autoBounds` and `Filter.boundsExtend` variables and `Filter.getBounds` method.
See their respective docs for details.

For optimization purposes, rendering boundaries are clipped by scene viewport and nothing will be rendered offscreen.

## Static variables

### defaultUseScreenResolution

```haxe
static var defaultUseScreenResolution:Bool
```

Defines default value for `Filter.useResolutionScaling`.

## Variables

### autoBounds

```haxe
var autoBounds:Bool
```

When enabled, rendering bounds of the filter will be expanded by `Filter.boundsExtend` in all directions.
Otherwise filter should provide custom bounds through `Filter.getBounds` call.
Default : true.

### boundsExtend

```haxe
var boundsExtend:Float
```

Rendering texture boundaries extent. Increases the rendering area by twice the `Filter.boundsExtend` value.
Automatically applied to object bounds when `autoBounds = true` or `Filter.getBounds` is not overridden.
Does not affect boundaries when `autoBounds = true` and `boundsExtend` is less than 0.

### smooth

```haxe
var smooth:Bool
```

When enabled, filters on not Object which are not Drawable will use bilinear filtering when displayed
and some filter will also use bilinear filtering on intermediate textures.

### enable

```haxe
var enable(get, set):Bool
```

When filter is disabled, attached object will render as usual.

### resolutionScale

```haxe
var resolutionScale(default, set):Float
```

Custom rendering resolution scaling of the filter.

Stacks with additional scaling from `Filter.useResolutionScaling` if enabled.

### useScreenResolution

```haxe
var useScreenResolution(default, set):Bool
```

Use the screen resolution to upscale/downscale the filter rendering resolution.

Stacks with additional scaling from `Filter.resolutionScale` if enabled.

## Methods

### sync

```haxe
function sync(ctx:h2d.RenderContext, s:h2d.Object):Void
```

Used to sync data for rendering.

### bind

```haxe
function bind(s:h2d.Object):Void
```

Sent when filter is bound to an Object `s`.
If Object was not yet allocated, method will be called when it's added to allocated Scene.

### unbind

```haxe
function unbind(s:h2d.Object):Void
```

Sent when filter was unbound from an Object `s`.
Method won't be called if Object was not yet allocated.

### getBounds

```haxe
function getBounds(s:h2d.Object, bounds:h2d.col.Bounds, scale:h2d.col.Point):Void
```

Method should populate `bounds` with rendering boundaries of the Filter for Object `s`.
Initial `bounds` contents are undefined and it's recommended to either clear them or call `s.getBounds(s, bounds)`.
Only used when `Filter.autoBounds` is `false`.

By default uses given Object bounds and extends them with `Filter.boundsExtend`.
Compared to `autoBounds = true`, negative `boundsExtend` are still applied, causing rendering area to shrink.

- **param** `s` The Object instance to which the filter is applied.
- **param** `bounds` The Bounds instance which should be populated by the filter boundaries.
- **param** `scale` Contains the desired rendering resolution scaling which should be accounted when constructing the bounds.
Can be edited to override provided scale values.

### draw

```haxe
function draw(ctx:h2d.RenderContext, input:h2d.Tile):h2d.Tile
```

Renders the filter onto Texture in `input` Tile.
