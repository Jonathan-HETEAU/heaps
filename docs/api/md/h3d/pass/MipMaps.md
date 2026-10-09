# h3d.pass.MipMaps

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/MipMaps.hx`](../../../../../h3d/pass/MipMaps.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Generates the mip levels of a texture with shaders (each level averages 2x2 pixels of the previous one).

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Static methods

### generate

```haxe
static function generate(from:h3d.mat.Texture):Void
```

Generates the mip levels of `from` using a shared instance.

## Methods

### apply

```haxe
function apply(from:h3d.mat.Texture):Void
```

Generates the mip levels of `from`.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
