# h3d.pass.Merge

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Merge.hx`](../../../../../h3d/pass/Merge.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Interpolates between two textures (or two layers) into an output texture.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Static methods

### run

```haxe
static function run(tex1:h3d.mat.Texture, tex2:h3d.mat.Texture, t:Float, output:h3d.mat.Texture):Void
```

Renders the interpolation between `tex1` and `tex2` into `output` using a shared instance.

## Methods

### apply

```haxe
function apply(tex1:h3d.mat.Texture, tex2:h3d.mat.Texture, t:Float, output:h3d.mat.Texture):Void
```

Renders the interpolation between `tex1` and `tex2` (`t` from `0` to `1`) into `output`.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
