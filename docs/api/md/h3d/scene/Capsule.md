# h3d.scene.Capsule

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Capsule.hx`](../../../../../h3d/scene/Capsule.hx)

Extends: [`h3d.scene.Graphics`](Graphics.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

A debug wireframe capsule aligned on the X axis: a cylinder of `length` capped by two half spheres of `radius`.

It has no collider and is meant for visualizing capsule colliders (see `h3d.col.Capsule`).

## Constructor

### new

```haxe
function new(?color:Int = 0xFFFF0000, ?radius:Float = 1.0, ?length:Float = 2.0, ?depth:Bool = true, ?parent:Object):Void
```

Creates a wireframe capsule.
- **param** `color` The line color, in `0xRRGGBB` format (red by default, the alpha byte is ignored).
- **param** `radius` The capsule radius.
- **param** `length` The length of the cylindrical part along the X axis.
- **param** `depth` If `false`, the capsule is always drawn on top of the scene (depth test disabled).
- **param** `parent` An optional parent object.

## Variables

### color

```haxe
var color:Int
```

The line color, in `0xRRGGBB` format. Changes are applied the next time `radius` or `length` is set.

### radius

```haxe
var radius(default, set):Float
```

The capsule radius. Setting it redraws the lines.

### length

```haxe
var length(default, set):Float
```

The length of the cylindrical part along the X axis, excluding the caps. Setting it redraws the lines.

## Methods

### getLocalCollider

```haxe
override function getLocalCollider():Null<h3d.col.Collider>
```

## Inherited members

- from [`h3d.scene.Graphics`](Graphics.md): `is3D`, `clear`, `lineStyle`, `setColorF`, `setColor`, `drawLine`, `moveTo`, `lineTo`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
