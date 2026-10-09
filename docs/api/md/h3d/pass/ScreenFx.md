# h3d.pass.ScreenFx

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/ScreenFx.hx`](../../../../../h3d/pass/ScreenFx.hx)

Type parameters: `<T>`

Subclasses: [`h3d.pass.ArrayCopy`](ArrayCopy.md), [`h3d.pass.Blur`](Blur.md), [`h3d.pass.Border`](Border.md), [`h3d.pass.ColorMatrix`](ColorMatrix.md), [`h3d.pass.Copy`](Copy.md), [`h3d.pass.CubeCopy`](CubeCopy.md), [`h3d.pass.FXAA`](FXAA.md), [`h3d.pass.Merge`](Merge.md), [`h3d.pass.MipMaps`](MipMaps.md), [`h3d.pass.Outline`](Outline.md), [`h3d.pass.ScalableAO`](ScalableAO.md), [`h3d.pass.Timeout`](Timeout.md)

## Constructor

### new

```haxe
function new(shader:h3d.pass.ScreenFx.T, ?output:Array<hxsl.Output>):Void
```

## Static methods

### run

```haxe
static function run(shader:h3d.shader.ScreenShader, output:h3d.mat.Texture, ?layer:Int):Void
```

## Variables

### shader

```haxe
var shader:h3d.pass.ScreenFx.T
```

### pass

```haxe
var pass:h3d.mat.Pass
```

### primitive

```haxe
var primitive:h3d.prim.Primitive
```

## Methods

### addShader

```haxe
inline function addShader(s:addShader.T):addShader.T
```

### removeShader

```haxe
inline function removeShader(s:hxsl.Shader):Bool
```

### getShader

```haxe
inline function getShader(cl:Class<getShader.T>):getShader.T
```

### render

```haxe
function render():Void
```

### dispose

```haxe
function dispose():Void
```
