# h3d.mat.Pass

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Pass.hx`](../../../../../h3d/mat/Pass.hx)

## Constructor

### new

```haxe
function new(name:String, ?shaders:hxsl.ShaderList, ?parent:Pass):Void
```

## Static variables

### enableLights_bits

```haxe
static inline var enableLights_bits:Int = 1
```

### enableLights_offset

```haxe
static inline var enableLights_offset:Int = 0
```

### enableLights_mask

```haxe
static inline var enableLights_mask:Int = 1
```

### dynamicParameters_bits

```haxe
static inline var dynamicParameters_bits:Int = 1
```

### dynamicParameters_offset

```haxe
static inline var dynamicParameters_offset:Int = 1
```

### dynamicParameters_mask

```haxe
static inline var dynamicParameters_mask:Int = 2
```

### isStatic_bits

```haxe
static inline var isStatic_bits:Int = 1
```

### isStatic_offset

```haxe
static inline var isStatic_offset:Int = 2
```

### isStatic_mask

```haxe
static inline var isStatic_mask:Int = 4
```

### culled_bits

```haxe
static inline var culled_bits:Int = 1
```

### culled_offset

```haxe
static inline var culled_offset:Int = 3
```

### culled_mask

```haxe
static inline var culled_mask:Int = 8
```

### batchMode_bits

```haxe
static inline var batchMode_bits:Int = 1
```

### batchMode_offset

```haxe
static inline var batchMode_offset:Int = 4
```

### batchMode_mask

```haxe
static inline var batchMode_mask:Int = 16
```

### culling_bits

```haxe
static inline var culling_bits:Int = 2
```

### culling_offset

```haxe
static inline var culling_offset:Int = 0
```

### culling_mask

```haxe
static inline var culling_mask:Int = 3
```

### depthWrite_bits

```haxe
static inline var depthWrite_bits:Int = 1
```

### depthWrite_offset

```haxe
static inline var depthWrite_offset:Int = 2
```

### depthWrite_mask

```haxe
static inline var depthWrite_mask:Int = 4
```

### depthClamp_bits

```haxe
static inline var depthClamp_bits:Int = 1
```

### depthClamp_offset

```haxe
static inline var depthClamp_offset:Int = 3
```

### depthClamp_mask

```haxe
static inline var depthClamp_mask:Int = 8
```

### depthTest_bits

```haxe
static inline var depthTest_bits:Int = 3
```

### depthTest_offset

```haxe
static inline var depthTest_offset:Int = 4
```

### depthTest_mask

```haxe
static inline var depthTest_mask:Int = 112
```

### blendSrc_bits

```haxe
static inline var blendSrc_bits:Int = 4
```

### blendSrc_offset

```haxe
static inline var blendSrc_offset:Int = 7
```

### blendSrc_mask

```haxe
static inline var blendSrc_mask:Int = 1920
```

### blendDst_bits

```haxe
static inline var blendDst_bits:Int = 4
```

### blendDst_offset

```haxe
static inline var blendDst_offset:Int = 11
```

### blendDst_mask

```haxe
static inline var blendDst_mask:Int = 30720
```

### blendAlphaSrc_bits

```haxe
static inline var blendAlphaSrc_bits:Int = 4
```

### blendAlphaSrc_offset

```haxe
static inline var blendAlphaSrc_offset:Int = 15
```

### blendAlphaSrc_mask

```haxe
static inline var blendAlphaSrc_mask:Int = 491520
```

### blendAlphaDst_bits

```haxe
static inline var blendAlphaDst_bits:Int = 4
```

### blendAlphaDst_offset

```haxe
static inline var blendAlphaDst_offset:Int = 19
```

### blendAlphaDst_mask

```haxe
static inline var blendAlphaDst_mask:Int = 7864320
```

### blendOp_bits

```haxe
static inline var blendOp_bits:Int = 3
```

### blendOp_offset

```haxe
static inline var blendOp_offset:Int = 23
```

### blendOp_mask

```haxe
static inline var blendOp_mask:Int = 58720256
```

### blendAlphaOp_bits

```haxe
static inline var blendAlphaOp_bits:Int = 3
```

### blendAlphaOp_offset

```haxe
static inline var blendAlphaOp_offset:Int = 26
```

### blendAlphaOp_mask

```haxe
static inline var blendAlphaOp_mask:Int = 469762048
```

### wireframe_bits

```haxe
static inline var wireframe_bits:Int = 1
```

### wireframe_offset

```haxe
static inline var wireframe_offset:Int = 29
```

### wireframe_mask

```haxe
static inline var wireframe_mask:Int = 536870912
```

### reserved_bits

```haxe
static inline var reserved_bits:Int = 1
```

### reserved_offset

```haxe
static inline var reserved_offset:Int = 30
```

### reserved_mask

```haxe
static inline var reserved_mask:Int = 1073741824
```

## Static methods

### bitsToFields

```haxe
static function bitsToFields(bits:Int):Array<{ value:String, name:String }>
```

### getEnableLights

```haxe
static inline function getEnableLights(v:Int):Int
```

### getDynamicParameters

```haxe
static inline function getDynamicParameters(v:Int):Int
```

### getIsStatic

```haxe
static inline function getIsStatic(v:Int):Int
```

### getCulled

```haxe
static inline function getCulled(v:Int):Int
```

### getBatchMode

```haxe
static inline function getBatchMode(v:Int):Int
```

### getCulling

```haxe
static inline function getCulling(v:Int):Int
```

### getDepthWrite

```haxe
static inline function getDepthWrite(v:Int):Int
```

### getDepthClamp

```haxe
static inline function getDepthClamp(v:Int):Int
```

### getDepthTest

```haxe
static inline function getDepthTest(v:Int):Int
```

### getBlendSrc

```haxe
static inline function getBlendSrc(v:Int):Int
```

### getBlendDst

```haxe
static inline function getBlendDst(v:Int):Int
```

### getBlendAlphaSrc

```haxe
static inline function getBlendAlphaSrc(v:Int):Int
```

### getBlendAlphaDst

```haxe
static inline function getBlendAlphaDst(v:Int):Int
```

### getBlendOp

```haxe
static inline function getBlendOp(v:Int):Int
```

### getBlendAlphaOp

```haxe
static inline function getBlendAlphaOp(v:Int):Int
```

### getWireframe

```haxe
static inline function getWireframe(v:Int):Int
```

### getReserved

```haxe
static inline function getReserved(v:Int):Int
```

## Variables

### name

```haxe
var name(default, null):String
```

### enableLights

```haxe
var enableLights(default, set):Bool
```

### dynamicParameters

```haxe
var dynamicParameters(default, set):Bool
```

Inform the pass system that the parameters will be modified in object draw() command,
so they will be manually uploaded by calling RenderContext.uploadParams.

### isStatic

```haxe
var isStatic(default, set):Bool
```

Mark the pass as static, this will allow some renderers or shadows to filter it
when rendering static/dynamic parts.

### culled

```haxe
var culled(default, set):Bool
```

### culling

```haxe
var culling(default, set):Face
```

### depthWrite

```haxe
var depthWrite(default, set):Bool
```

### depthClamp

```haxe
var depthClamp(default, set):Bool
```

### depthTest

```haxe
var depthTest(default, set):Compare
```

### blendSrc

```haxe
var blendSrc(default, set):Blend
```

### blendDst

```haxe
var blendDst(default, set):Blend
```

### blendAlphaSrc

```haxe
var blendAlphaSrc(default, set):Blend
```

### blendAlphaDst

```haxe
var blendAlphaDst(default, set):Blend
```

### blendOp

```haxe
var blendOp(default, set):Operation
```

### blendAlphaOp

```haxe
var blendAlphaOp(default, set):Operation
```

### wireframe

```haxe
var wireframe(default, set):Bool
```

### colorMask

```haxe
var colorMask:Int
```

### layer

```haxe
var layer:Int
```

### stencil

```haxe
var stencil:Stencil
```

## Methods

### load

```haxe
function load(p:Pass):Void
```

### setPassName

```haxe
function setPassName(name:String):Void
```

### blend

```haxe
inline function blend(src:Blend, dst:Blend):Void
```

### setBlendMode

```haxe
function setBlendMode(b:BlendMode):Void
```

### depth

```haxe
function depth(write:Bool, test:Compare, ?clamp:Bool = false):Void
```

### setColorMask

```haxe
function setColorMask(r:Bool, g:Bool, b:Bool, a:Bool):Void
```

### setColorChannel

```haxe
function setColorChannel(c:hxsl.Channel):Void
```

### setColorMaski

```haxe
function setColorMaski(r:Bool, g:Bool, b:Bool, a:Bool, i:Int):Void
```

### addShader

```haxe
function addShader(s:addShader.T):addShader.T
```

### removeShader

```haxe
function removeShader(s:hxsl.Shader):Bool
```

### removeShaders

```haxe
function removeShaders(t:Class<removeShaders.T>):Void
```

### getShader

```haxe
function getShader(t:Class<getShader.T>):getShader.T
```

### getShaderByName

```haxe
function getShaderByName(name:String):hxsl.Shader
```

### getShaders

```haxe
inline function getShaders():hxsl._ShaderList.ShaderIterator
```

### clone

```haxe
function clone(?parent:Pass):Pass
```
