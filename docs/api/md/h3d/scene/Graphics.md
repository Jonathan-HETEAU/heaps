# h3d.scene.Graphics

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Graphics.hx`](../../../../../h3d/scene/Graphics.hx)

Extends: [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.Box`](Box.md), [`h3d.scene.Capsule`](Capsule.md), [`h3d.scene.Sphere`](Sphere.md)

Draws 3D lines with an API similar to `h2d.Graphics`: set a style with `lineStyle`, then `moveTo` / `lineTo`.
Mostly used for debug display (see `Box`, `Sphere` and `Capsule`).

By default lines are drawn in screen space: their width is in pixels whatever the distance.
With `is3D`, consecutive `lineTo` points form polylines whose width is in world units; they are only
tesselated in the XY plane (as seen from above).
Lines are not lit and do not cast shadows.

```haxe
var g = new h3d.scene.Graphics(s3d);
g.lineStyle(2, 0xFF0000);
g.moveTo(0, 0, 0);
g.lineTo(0, 0, 10);
```

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Creates an empty graphics object.

## Variables

### is3D

```haxe
var is3D(default, set):Bool
```

Setting is3D to true will switch from a screen space line (constant size whatever the distance) to a world space line

## Methods

### clear

```haxe
function clear():Void
```

Removes all the lines drawn so far.

### lineStyle

```haxe
function lineStyle(?size:Float = 0., ?color:Int = 0, ?alpha:Float = 1.):Void
```

Sets the style of the next lines.
- **param** `size` The line width: in pixels, or in world units when `is3D` is set. `0` keeps the current width.
- **param** `color` The line color, in `0xRRGGBB` format.
- **param** `alpha` The line opacity, from `0` to `1`.

### setColorF

```haxe
function setColorF(r:Float, g:Float, b:Float, ?a:Float = 1.):Void
```

Sets the color of the next lines with float components, from `0` to `1`.

### setColor

```haxe
function setColor(color:Int, ?alpha:Float = 1.):Void
```

Sets the color of the next lines.
- **param** `color` The color, in `0xRRGGBB` format.
- **param** `alpha` The opacity, from `0` to `1`.

### drawLine

```haxe
inline function drawLine(p1:h3d.col.Point, p2:h3d.col.Point):Void
```

Draws a single line from `p1` to `p2`.

### moveTo

```haxe
function moveTo(x:Float, y:Float, z:Float):Void
```

Moves the pen to the given local position without drawing. With `is3D`, it also ends the current polyline.

### lineTo

```haxe
function lineTo(x:Float, y:Float, z:Float):Void
```

Draws a line from the pen position to the given local position, and moves the pen there.

## Inherited members

- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
