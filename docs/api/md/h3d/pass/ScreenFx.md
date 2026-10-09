# h3d.pass.ScreenFx

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/ScreenFx.hx`](../../../../../h3d/pass/ScreenFx.hx)

Type parameters: `<T>`

Subclasses: [`h3d.pass.ArrayCopy`](ArrayCopy.md), [`h3d.pass.Blur`](Blur.md), [`h3d.pass.Border`](Border.md), [`h3d.pass.ColorMatrix`](ColorMatrix.md), [`h3d.pass.Copy`](Copy.md), [`h3d.pass.CubeCopy`](CubeCopy.md), [`h3d.pass.FXAA`](FXAA.md), [`h3d.pass.Merge`](Merge.md), [`h3d.pass.MipMaps`](MipMaps.md), [`h3d.pass.Outline`](Outline.md), [`h3d.pass.ScalableAO`](ScalableAO.md), [`h3d.pass.Timeout`](Timeout.md)

A full screen pass: renders a quad covering the current target with a screen shader (see `h3d.shader.ScreenShader`).
It is the base of the post processes.

```haxe
var fx = new h3d.pass.ScreenFx(new MyScreenShader());
fx.shader.texture = source;
engine.pushTarget(output);
fx.render();
engine.popTarget();
```

## Constructor

### new

```haxe
function new(shader:h3d.pass.ScreenFx.T, ?output:Array<hxsl.Output>):Void
```

Creates the pass.
- **param** `output` The values written to the render targets (`output.color` by default).

## Static methods

### run

```haxe
static function run(shader:h3d.shader.ScreenShader, output:h3d.mat.Texture, ?layer:Int):Void
```

Renders a screen shader to `output` with a temporary pass.

## Variables

### shader

```haxe
var shader:h3d.pass.ScreenFx.T
```

The main screen shader.

### pass

```haxe
var pass:h3d.mat.Pass
```

The material pass holding the render states (no culling, no depth test by default) and the shaders.

### primitive

```haxe
var primitive:h3d.prim.Primitive
```

The primitive drawn, the full screen quad by default.

## Methods

### addShader

```haxe
inline function addShader(s:addShader.T):addShader.T
```

Adds a shader to the pass.

### removeShader

```haxe
inline function removeShader(s:hxsl.Shader):Bool
```

Removes a shader from the pass.

### getShader

```haxe
inline function getShader(cl:Class<getShader.T>):getShader.T
```

Returns the first shader of class `cl`, or `null`.

### render

```haxe
function render():Void
```

Renders the full screen quad to the current target.

### dispose

```haxe
function dispose():Void
```

Releases the resources of the pass.
