# h3d.mat.PbrProps

**class** · package [`h3d.mat`](README.md) · module `h3d.mat.PbrMaterial` · source [`h3d/mat/PbrMaterial.hx`](../../../../../h3d/mat/PbrMaterial.hx)

The properties of a `PbrMaterial`, stored as `props` and edited in Hide. Call `refreshProps()` after changing them.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### mode

```haxe
var mode:PbrMode
```

Where the material is drawn in the pipeline.

### blend

```haxe
var blend:PbrBlend
```

The blend mode.

### shadows

```haxe
var shadows:Bool
```

Casts and receives shadows.

### culling

```haxe
var culling:PbrCullingMode
```

The faces culled.

### depthTest

```haxe
var depthTest:PbrDepthTest
```

The depth test.

### depthWrite

```haxe
var depthWrite:PbrDepthWrite
```

The depth write.

### colorMask

```haxe
var colorMask:Int
```

The channels written: bits 0 to 3 for red, green, blue and alpha.

### alphaKill

```haxe
var alphaKill:Bool
```

Discards the pixels whose texture alpha is below the threshold.

### emissive

```haxe
var emissive:Float
```

The emissive intensity.

### parallax

```haxe
var parallax:Float
```

If positive, enables parallax mapping with this depth, using the alpha channel of `specularTexture` as height.

### parallaxSteps

```haxe
var parallaxSteps:Int
```

The number of layers used by the parallax mapping.

### invertBasis

```haxe
var invertBasis:Bool
```

Inverts the tangent basis of the parallax mapping.

### textureWrap

```haxe
var textureWrap:Bool
```

Repeats the textures (`Repeat` wrap mode) instead of clamping them.

### enableStencil

```haxe
var enableStencil:Bool
```

Enables the stencil test and operations below.

### stencilCompare

```haxe
var stencilCompare:PbrStencilCompare
```

The stencil test.

### stencilPassOp

```haxe
var stencilPassOp:PbrStencilOp
```

The stencil operation when both the stencil and depth tests pass.

### stencilFailOp

```haxe
var stencilFailOp:PbrStencilOp
```

The stencil operation when the stencil test fails.

### depthFailOp

```haxe
var depthFailOp:PbrStencilOp
```

The stencil operation when the stencil test passes but the depth test fails.

### stencilValue

```haxe
var stencilValue:Int
```

The stencil reference value.

### stencilWriteMask

```haxe
var stencilWriteMask:Int
```

The stencil bits written.

### stencilReadMask

```haxe
var stencilReadMask:Int
```

The stencil bits tested.

### __ref

```haxe
var __ref:String
```

### __refMode

```haxe
var __refMode:String
```

### name

```haxe
var name:String
```

An optional display name of the properties.

### drawOrder

```haxe
var drawOrder:String
```

If set, the pass `layer` (an integer as string): objects of a lower layer are drawn first.

### depthPrepass

```haxe
var depthPrepass:Bool
```

Adds a `"depthPrepass"` pass writing the depth before the main pass (for transparent objects needing correct sorting).

### flipBackFaceNormal

```haxe
var flipBackFaceNormal:Bool
```

Flips the normal of back faces, for double sided materials.

### ignoreCollide

```haxe
var ignoreCollide:Bool
```

The geometry using this material is excluded from the collision data built by the model converter (`hxd.fs.Convert`).

## Methods

### load

```haxe
function load(o:Dynamic):PbrProps
```

### save

```haxe
function save():Dynamic
```
