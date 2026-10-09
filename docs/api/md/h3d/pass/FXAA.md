# h3d.pass.FXAA

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/FXAA.hx`](../../../../../h3d/pass/FXAA.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Fast approximate anti-aliasing: smooths the edges of an image as a post process.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Methods

### apply

```haxe
function apply(texture:h3d.mat.Texture):Void
```

Draws `texture` to the current target with anti-aliasing.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
