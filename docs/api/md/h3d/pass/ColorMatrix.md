# h3d.pass.ColorMatrix

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/ColorMatrix.hx`](../../../../../h3d/pass/ColorMatrix.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Transforms the colors of a texture by a color matrix (see the `color*` methods of `h3d.Matrix`).

## Constructor

### new

```haxe
function new(?m:h3d.Matrix):Void
```

Creates the pass with the matrix `m` (identity by default).

## Variables

### matrix

```haxe
var matrix(get, set):h3d.Matrix
```

The color matrix.

### maskPower

```haxe
var maskPower(get, set):Float
```

The power applied to the mask value.

## Methods

### apply

```haxe
function apply(src:h3d.mat.Texture, out:h3d.mat.Texture, ?mask:h3d.mat.Texture, ?maskMatrix:h2d.col.Matrix):Void
```

Renders `src` transformed by the matrix into `out`.
- **param** `mask` An optional texture whose red channel limits where the matrix is applied.
- **param** `maskMatrix` An optional transform of the mask coordinates.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
