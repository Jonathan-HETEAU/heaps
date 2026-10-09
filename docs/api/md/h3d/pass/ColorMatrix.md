# h3d.pass.ColorMatrix

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/ColorMatrix.hx`](../../../../../h3d/pass/ColorMatrix.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

## Constructor

### new

```haxe
function new(?m:h3d.Matrix):Void
```

## Variables

### matrix

```haxe
var matrix(get, set):h3d.Matrix
```

### maskPower

```haxe
var maskPower(get, set):Float
```

## Methods

### apply

```haxe
function apply(src:h3d.mat.Texture, out:h3d.mat.Texture, ?mask:h3d.mat.Texture, ?maskMatrix:h2d.col.Matrix):Void
```

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
