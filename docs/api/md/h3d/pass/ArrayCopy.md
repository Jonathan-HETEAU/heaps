# h3d.pass.ArrayCopy

**class** · package [`h3d.pass`](README.md) · module `h3d.pass.Copy` · source [`h3d/pass/Copy.hx`](../../../../../h3d/pass/Copy.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

## Constructor

### new

```haxe
function new():Void
```

## Static methods

### run

```haxe
static function run(from:h3d.mat.TextureArray, fromLayer:Int, to:h3d.mat.Texture, ?blend:Null<h3d.mat.BlendMode>, ?pass:h3d.mat.Pass, ?layer:Int):Void
```

## Methods

### apply

```haxe
function apply(from:h3d.mat.TextureArray, fromLayer:Int, to:Null<h3d.mat.Texture>, ?blend:Null<h3d.mat.BlendMode>, ?customPass:h3d.mat.Pass, ?layer:Int):Void
```

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
