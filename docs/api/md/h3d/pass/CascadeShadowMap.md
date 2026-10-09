# h3d.pass.CascadeShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/CascadeShadowMap.hx`](../../../../../h3d/pass/CascadeShadowMap.hx)

Extends: [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

Cascaded shadow maps of a directional light: the view frustum is split in `cascade` ranges of distance, each with its
own shadow map, so that near shadows get more resolution than far ones. Used by `h3d.scene.pbr.DirLight` with `cascade = true`.

The first cascade covers `firstCascadeSize` units from the camera, the others share the remaining distance up to
`maxDist` (or the camera far plane), distributed by `distributionPower`.

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

Creates the cascaded shadow map of `light`.

## Variables

### cascadeViewProj

```haxe
var cascadeViewProj:h3d.Matrix
```

The view-projection matrix shared by the cascades.

### params

```haxe
var params:Array<CascadeParams>
```

The depth bias settings of each cascade.

### distributionPower

```haxe
var distributionPower:Float
```

How the distances of the cascades after the first one are distributed: `1` is linear, higher values give more
resolution to the near cascades.

### minPixelSize

```haxe
var minPixelSize:Int
```

The minimum size, in shadow map pixels, of an object to be drawn in the cascades after the first one.

### firstCascadeSize

```haxe
var firstCascadeSize:Float
```

The distance from the camera covered by the first cascade.

### castingMaxDist

```haxe
var castingMaxDist:Float
```

If positive, how far beyond the cascade bounds (towards the light) shadow casters are drawn. Otherwise `maxDist`
or the camera far plane is used.

### transitionFraction

```haxe
var transitionFraction:Float
```

The fraction of each cascade blended with the next one, to hide the transitions (`0` to disable).

### cascade

```haxe
var cascade(default, set):Int
```

The number of cascades.

### highPrecision

```haxe
var highPrecision:Bool
```

Uses a 32-bit depth buffer instead of a 16-bit one when rendering the cascades.

### debugShader

```haxe
var debugShader:Bool
```

Colors each cascade differently (debug).

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

Computes the shadow camera of each cascade from the current camera.

### getCascadeView

```haxe
function getCascadeView(i:Int):h3d.Matrix
```

Returns the view matrix of the cascade `i`.

### getCascadeProj

```haxe
function getCascadeProj(i:Int):h3d.Matrix
```

Returns the projection matrix of the cascade `i`.

### getCascadeViewProj

```haxe
function getCascadeViewProj(i:Int):h3d.Matrix
```

Returns the view-projection matrix of the cascade `i`.

### getCascadeOffset

```haxe
function getCascadeOffset(i:Int):h3d.Vector4
```

Returns the offset from the shared shadow space to the cascade `i`.

### getCascadeScale

```haxe
function getCascadeScale(i:Int):h3d.Vector4
```

Returns the scale from the shared shadow space to the cascade `i`.

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

Removes from `passes` the shadow casters which do not need to be drawn in the cascade `i`: by default, the objects
smaller than `minSize` in the cascades after the first one. Can be replaced for custom culling.

### draw

```haxe
override function draw(passes:PassList, ?sort:() -> Void):Void
```

## Inherited members

- from [`h3d.pass.Shadows`](Shadows.md): `enabled`, `mode`, `size`, `shader`, `blur`, `samplingKind`, `power`, `bias`, `pcfScale`, `dispose`, `getShadowView`, `getShadowProj`, `getShadowViewProj`, `getShadowTex`, `loadStaticData`, `saveStaticData`, `computeStatic`, `hasStaticShadow`, `needStaticUpdate`, `debug`
- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
