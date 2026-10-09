# h3d.pass.Copy

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Copy.hx`](../../../../../h3d/pass/Copy.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Copies a texture to another texture (or to the current target), with an optional blend mode.

```haxe
h3d.pass.Copy.run(source, destination);
```

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Static methods

### run

```haxe
static function run(from:h3d.mat.Texture, to:h3d.mat.Texture, ?blend:Null<h3d.mat.BlendMode>, ?pass:h3d.mat.Pass, ?layer:Int, ?toMip:Int, ?fromMip:Int):Void
```

Copies `from` to `to` using a shared instance, or a direct GPU copy when no option is given.

## Methods

### apply

```haxe
function apply(from:hxsl.Texture, to:Null<h3d.mat.Texture>, ?blend:Null<h3d.mat.BlendMode>, ?customPass:h3d.mat.Pass, ?layer:Int, ?toMip:Int, ?fromMip:Int):Void
```

Copies `from` to `to` (or to the current target if `to` is `null`).
- **param** `blend` The blend mode used to draw.
- **param** `customPass` A pass whose render states are used instead.
- **param** `layer` The layer of `to` to draw to.
- **param** `toMip` The mip level of `to` to draw to.
- **param** `fromMip` The mip level of `from` to read.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
