# h3d.pass.ArrayCopy

**class** · package [`h3d.pass`](README.md) · module `h3d.pass.Copy` · source [`h3d/pass/Copy.hx`](../../../../../h3d/pass/Copy.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Copies a layer of a texture array to a texture.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Static methods

### run

```haxe
static function run(from:h3d.mat.TextureArray, fromLayer:Int, to:h3d.mat.Texture, ?blend:Null<h3d.mat.BlendMode>, ?pass:h3d.mat.Pass, ?layer:Int):Void
```

Copies a layer of a texture array using a shared instance.

## Methods

### apply

```haxe
function apply(from:h3d.mat.TextureArray, fromLayer:Int, to:Null<h3d.mat.Texture>, ?blend:Null<h3d.mat.BlendMode>, ?customPass:h3d.mat.Pass, ?layer:Int):Void
```

Copies the layer `fromLayer` of `from` to the layer `layer` of `to` (or to the current target if `to` is `null`).

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
