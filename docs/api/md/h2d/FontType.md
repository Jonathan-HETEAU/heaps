# h2d.FontType

**enum** · package [`h2d`](README.md) · module `h2d.Font` · source [`h2d/Font.hx`](../../../../h2d/Font.hx)

The rendering type of the of the `Font` instance.

## Constructors

### BitmapFont

```haxe
BitmapFont
```

A simple raster bitmap font.

### SignedDistanceField

```haxe
SignedDistanceField(channel:SDFChannel, alphaCutoff:Float, smoothing:Float)
```

A Signed Distance Field font data. Each glyph pixel contains the distance to the closest glyph edge instead of actual color.

To render an SDF font, `Text` utilizes `h3d.shader.SignedDistanceField` shader to produce smoothed and scalable text.
Because shader expects texture to use bilinear filtering, Text automatically enables `Drawable.smooth` on itself.

See [Text](https://github.com/HeapsIO/heaps/wiki/Text) manual and [libgdx wiki](https://github.com/libgdx/libgdx/wiki/Distance-field-fonts) for more details.

- **param** `channel` The channel that serves as distance data source.
- **param** `alphaCutoff` The distance value that is considered to be the edge. Usually should be 0.5.
- **param** `smoothing` The smoothing of edge. Lower value lead to sharper edges. Value of -1 sets it to automatic.

### FontGroup

```haxe
FontGroup
```

A font group is a virtual font that contains one or several sub fonts that can be selected with h2d.Text.resolveSubFont.
