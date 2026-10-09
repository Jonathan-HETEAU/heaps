# h3d.pass.CascadeShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/CascadeShadowMap.hx`](../../../../../h3d/pass/CascadeShadowMap.hx)

Extends: [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

## Variables

### cascadeViewProj

```haxe
var cascadeViewProj:h3d.Matrix
```

### params

```haxe
var params:Array<CascadeParams>
```

### distributionPower

```haxe
var distributionPower:Float
```

### minPixelSize

```haxe
var minPixelSize:Int
```

### firstCascadeSize

```haxe
var firstCascadeSize:Float
```

### castingMaxDist

```haxe
var castingMaxDist:Float
```

### transitionFraction

```haxe
var transitionFraction:Float
```

### cascade

```haxe
var cascade(default, set):Int
```

### highPrecision

```haxe
var highPrecision:Bool
```

### debugShader

```haxe
var debugShader:Bool
```

### maxDist

```haxe
var maxDist:Float
```

Clamp the zFar of the frustum of the camera for bounds calculation

## Methods

### set_cascade

```haxe
function set_cascade(v:Int):Int
```

### getShadowTex

```haxe
override function getShadowTex():hxsl.TextureArray
```

### needStaticUpdate

```haxe
override function needStaticUpdate():Void
```

### calcCascadeMatrices

```haxe
function calcCascadeMatrices():Void
```

### getCascadeView

```haxe
function getCascadeView(i:Int):h3d.Matrix
```

### getCascadeProj

```haxe
function getCascadeProj(i:Int):h3d.Matrix
```

### getCascadeViewProj

```haxe
function getCascadeViewProj(i:Int):h3d.Matrix
```

### getCascadeOffset

```haxe
function getCascadeOffset(i:Int):h3d.Vector4
```

### getCascadeScale

```haxe
function getCascadeScale(i:Int):h3d.Vector4
```

### getShadowView

```haxe
override function getShadowView():h3d.Matrix
```

### getShadowProj

```haxe
override function getShadowProj():h3d.Matrix
```

### getShadowViewProj

```haxe
override function getShadowViewProj():h3d.Matrix
```

### customCullPasses

```haxe
dynamic function customCullPasses(passes:PassList, frustum:h3d.col.Frustum, i:Int, minSize:Float):Void
```

### draw

```haxe
override function draw(passes:PassList, ?sort:() -> Void):Void
```

## Inherited members

- from [`h3d.pass.Shadows`](Shadows.md): `enabled`, `mode`, `size`, `shader`, `blur`, `samplingKind`, `power`, `bias`, `pcfScale`, `dispose`, `getShadowView`, `getShadowProj`, `getShadowViewProj`, `getShadowTex`, `loadStaticData`, `saveStaticData`, `computeStatic`, `hasStaticShadow`, `needStaticUpdate`, `debug`
- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
