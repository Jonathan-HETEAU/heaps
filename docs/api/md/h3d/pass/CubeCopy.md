# h3d.pass.CubeCopy

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/CubeCopy.hx`](../../../../../h3d/pass/CubeCopy.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Copies the 6 faces of a cube texture to another cube texture.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Static methods

### run

```haxe
static function run(from:h3d.mat.Texture, to:h3d.mat.Texture, ?blend:Null<h3d.mat.BlendMode>, ?mip:Int = 0):Void
```

Copies the faces of `from` to `to` using a shared instance (or a direct GPU copy when possible).

## Methods

### apply

```haxe
function apply(from:hxsl.Texture, to:Null<h3d.mat.Texture>, ?blend:Null<h3d.mat.BlendMode>, ?mip:Int = 0):Void
```

Copies the faces of `from` to the mip level `mip` of `to`, with an optional blend mode.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
