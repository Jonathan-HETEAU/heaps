# hxsl.Shader

**class** · package [`hxsl`](README.md) · source [`hxsl/Shader.hx`](../../../../hxsl/Shader.hx)

Subclasses: [`h3d.mat.noise.OctaveShader`](../h3d/mat/noise/OctaveShader.md), [`h3d.scene.AnimMeshBatchShader`](../h3d/scene/AnimMeshBatchShader.md), [`h3d.scene.BaseSync`](../h3d/scene/BaseSync.md), [`h3d.shader.AlphaChannel`](../h3d/shader/AlphaChannel.md), [`h3d.shader.AlphaMSDF`](../h3d/shader/AlphaMSDF.md), [`h3d.shader.AlphaMap`](../h3d/shader/AlphaMap.md), [`h3d.shader.AlphaMult`](../h3d/shader/AlphaMult.md), [`h3d.shader.AmbientLight`](../h3d/shader/AmbientLight.md), [`h3d.shader.AnimatedTexture`](../h3d/shader/AnimatedTexture.md), [`h3d.shader.ApplyTransformShader`](../h3d/shader/ApplyTransformShader.md), [`h3d.shader.Base2d`](../h3d/shader/Base2d.md), [`h3d.shader.BaseMesh`](../h3d/shader/BaseMesh.md), [`h3d.shader.Blendshape`](../h3d/shader/Blendshape.md), [`h3d.shader.CascadeShadow`](../h3d/shader/CascadeShadow.md), [`h3d.shader.Checker`](../h3d/shader/Checker.md), [`h3d.shader.ColorAdd`](../h3d/shader/ColorAdd.md), [`h3d.shader.ColorKey`](../h3d/shader/ColorKey.md), [`h3d.shader.ColorMatrix`](../h3d/shader/ColorMatrix.md), [`h3d.shader.ColorMult`](../h3d/shader/ColorMult.md), [`h3d.shader.ColorSpaces`](../h3d/shader/ColorSpaces.md), [`h3d.shader.CubeMap`](../h3d/shader/CubeMap.md), [`h3d.shader.DirLight`](../h3d/shader/DirLight.md), [`h3d.shader.DirShadow`](../h3d/shader/DirShadow.md), [`h3d.shader.DisplacementDisplay`](../h3d/shader/DisplacementDisplay.md), [`h3d.shader.DistanceFade`](../h3d/shader/DistanceFade.md), [`h3d.shader.FixedColor`](../h3d/shader/FixedColor.md), [`h3d.shader.FlipBackFaceNormal`](../h3d/shader/FlipBackFaceNormal.md), [`h3d.shader.GpuParticle`](../h3d/shader/GpuParticle.md), [`h3d.shader.InstanceIndirectBase`](../h3d/shader/InstanceIndirectBase.md), [`h3d.shader.KillAlpha`](../h3d/shader/KillAlpha.md), [`h3d.shader.LineShader`](../h3d/shader/LineShader.md), [`h3d.shader.LinearShadowDepth`](../h3d/shader/LinearShadowDepth.md), [`h3d.shader.NoiseLib`](../h3d/shader/NoiseLib.md), [`h3d.shader.NormalMap`](../h3d/shader/NormalMap.md), [`h3d.shader.Outline`](../h3d/shader/Outline.md), [`h3d.shader.Parallax`](../h3d/shader/Parallax.md), [`h3d.shader.ParticleShader`](../h3d/shader/ParticleShader.md), [`h3d.shader.PointLight`](../h3d/shader/PointLight.md), [`h3d.shader.PointShadow`](../h3d/shader/PointShadow.md), [`h3d.shader.ScreenShader`](../h3d/shader/ScreenShader.md), [`h3d.shader.Shadow`](../h3d/shader/Shadow.md), [`h3d.shader.ShadowSampling`](../h3d/shader/ShadowSampling.md), [`h3d.shader.SignedDistanceField`](../h3d/shader/SignedDistanceField.md), [`h3d.shader.SinusDeform`](../h3d/shader/SinusDeform.md), [`h3d.shader.SkinBase`](../h3d/shader/SkinBase.md), [`h3d.shader.SpecularTexture`](../h3d/shader/SpecularTexture.md), [`h3d.shader.SpotShadow`](../h3d/shader/SpotShadow.md), [`h3d.shader.Texture`](../h3d/shader/Texture.md), [`h3d.shader.Texture2`](../h3d/shader/Texture2.md), [`h3d.shader.UVAnim`](../h3d/shader/UVAnim.md), [`h3d.shader.UVDelta`](../h3d/shader/UVDelta.md), [`h3d.shader.UVScroll`](../h3d/shader/UVScroll.md), [`h3d.shader.Utils`](../h3d/shader/Utils.md), [`h3d.shader.VertexColor`](../h3d/shader/VertexColor.md), [`h3d.shader.VertexColorAlpha`](../h3d/shader/VertexColorAlpha.md), [`h3d.shader.VertexDensity`](../h3d/shader/VertexDensity.md), [`h3d.shader.VolumeDecal`](../h3d/shader/VolumeDecal.md), [`h3d.shader.WhiteAlpha`](../h3d/shader/WhiteAlpha.md), [`h3d.shader.ZCut`](../h3d/shader/ZCut.md), [`h3d.shader.pbr.AlphaMask`](../h3d/shader/pbr/AlphaMask.md), [`h3d.shader.pbr.AlphaMultiply`](../h3d/shader/pbr/AlphaMultiply.md), [`h3d.shader.pbr.BRDF`](../h3d/shader/pbr/BRDF.md), [`h3d.shader.pbr.BaseDecal`](../h3d/shader/pbr/BaseDecal.md), [`h3d.shader.pbr.ClusterCull`](../h3d/shader/pbr/ClusterCull.md), [`h3d.shader.pbr.ClusterLightOcclusion`](../h3d/shader/pbr/ClusterLightOcclusion.md), [`h3d.shader.pbr.CubeLod`](../h3d/shader/pbr/CubeLod.md), [`h3d.shader.pbr.DefaultForward`](../h3d/shader/pbr/DefaultForward.md), [`h3d.shader.pbr.GammaCorrect`](../h3d/shader/pbr/GammaCorrect.md), [`h3d.shader.pbr.LightEvaluation`](../h3d/shader/pbr/LightEvaluation.md), [`h3d.shader.pbr.Performance`](../h3d/shader/pbr/Performance.md), [`h3d.shader.pbr.PropsDefinition`](../h3d/shader/pbr/PropsDefinition.md), [`h3d.shader.pbr.PropsImport`](../h3d/shader/pbr/PropsImport.md), [`h3d.shader.pbr.PropsTexture`](../h3d/shader/pbr/PropsTexture.md), [`h3d.shader.pbr.PropsValues`](../h3d/shader/pbr/PropsValues.md), [`h3d.shader.pbr.SSR`](../h3d/shader/pbr/SSR.md), [`h3d.shader.pbr.StrengthValues`](../h3d/shader/pbr/StrengthValues.md), [`hxsl.BatchShader`](BatchShader.md), [`hxsl.DynamicShader`](DynamicShader.md)

The base class of the shaders, written in HxSL in their `SRC` static variable.
The `hxsl.Macros.buildShader` macro compiles the source and generates a property for each parameter. Shaders are added to materials or passes, and linked together into a `RuntimeShader`.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### priority

```haxe
var priority(default, null):Int
```

The priority of the shader in the shader list: the shaders are sorted by ascending priority. See `setPriority`.

## Methods

### setPriority

```haxe
function setPriority(v:Int):Void
```

Shader priority should only be changed *before* the shader is added to a material.

### getParamValue

```haxe
function getParamValue(index:Int):Dynamic
```

Returns the value of the parameter of the given index. Generated by the macro.

### getParamFloatValue

```haxe
function getParamFloatValue(index:Int):Float
```

Returns the value of the float parameter of the given index. Generated by the macro.

### setParamIndexValue

```haxe
function setParamIndexValue(index:Int, val:Dynamic):Void
```

Sets the value of the parameter of the given index. Generated by the macro.

### setParamIndexFloatValue

```haxe
function setParamIndexFloatValue(index:Int, val:Float):Void
```

Sets the value of the float parameter of the given index. Generated by the macro.

### writeParam

```haxe
function writeParam(index:Int, type:Type, out:ShaderParamBuffer, pos:Int):Void
```

Writes the value of the parameter of the given index in the buffer, at the float position `pos`.

### updateConstants

```haxe
function updateConstants(globals:Globals):Void
```

Computes the shader variant from the values of the constant parameters (and globals). Generated by the macro.

### clone

```haxe
function clone():Shader
```

Returns a copy of the shader with the same parameter values. Generated by the macro.

### toString

```haxe
function toString():String
```

Returns the class name of the shader.
