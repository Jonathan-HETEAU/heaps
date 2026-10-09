# h3d.shader.ScreenShader

**class** · package [`h3d.shader`](README.md) · source [`h3d/shader/ScreenShader.hx`](../../../../../h3d/shader/ScreenShader.hx)

Extends: [`hxsl.Shader`](../../hxsl/Shader.md)

Subclasses: [`h3d.pass.ColorMatrixShader`](../pass/ColorMatrixShader.md), [`h3d.pass.MergeShader`](../pass/MergeShader.md), [`h3d.pass.TimeoutShader`](../pass/TimeoutShader.md), [`h3d.scene.pbr.CubeToPanorama`](../scene/pbr/CubeToPanorama.md), [`h3d.scene.pbr.DepthCopy`](../scene/pbr/DepthCopy.md), [`h3d.scene.pbr.IrradBase`](../scene/pbr/IrradBase.md), [`h3d.scene.pbr.PanoramaToCube`](../scene/pbr/PanoramaToCube.md), [`h3d.shader.Bloom`](Bloom.md), [`h3d.shader.Blur`](Blur.md), [`h3d.shader.CheckerboardDepth`](CheckerboardDepth.md), [`h3d.shader.CubeMinMaxShader`](CubeMinMaxShader.md), [`h3d.shader.DepthAwareUpsampling`](DepthAwareUpsampling.md), [`h3d.shader.Displacement`](Displacement.md), [`h3d.shader.GenTexture`](GenTexture.md), [`h3d.shader.HZB`](HZB.md), [`h3d.shader.MinMaxShader`](MinMaxShader.md), [`h3d.shader.Outline2D`](Outline2D.md), [`h3d.shader.SAO`](SAO.md), [`h3d.shader.pbr.Distortion`](pbr/Distortion.md), [`h3d.shader.pbr.PerformanceViewer`](pbr/PerformanceViewer.md), [`h3d.shader.pbr.SSRFilter`](pbr/SSRFilter.md), [`h3d.shader.pbr.SSRResolve`](pbr/SSRResolve.md), [`h3d.shader.pbr.Slides`](pbr/Slides.md), [`h3d.shader.pbr.ToneMapping`](pbr/ToneMapping.md)

Base class of the full screen shaders used with `h3d.pass.ScreenFx`: it provides the `calculatedUV` of each pixel of
the screen quad. Extend it and write a `fragment` function.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### flipY

```haxe
var flipY(get, set):Float
```

## Methods

### updateConstants

```haxe
override function updateConstants(globals:hxsl.Globals):Void
```

### getParamValue

```haxe
override function getParamValue(index:Int):Dynamic
```

### getParamFloatValue

```haxe
override function getParamFloatValue(index:Int):Float
```

### setParamIndexValue

```haxe
override function setParamIndexValue(index:Int, val:Dynamic):Void
```

### setParamIndexFloatValue

```haxe
override function setParamIndexFloatValue(index:Int, val:Float):Void
```

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```

## Inherited members

- from [`hxsl.Shader`](../../hxsl/Shader.md): `priority`, `setPriority`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `updateConstants`, `clone`, `toString`
