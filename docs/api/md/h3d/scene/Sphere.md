# h3d.scene.Sphere

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Sphere.hx`](../../../../../h3d/scene/Sphere.hx)

Extends: [`h3d.scene.Graphics`](Graphics.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

A debug wireframe sphere, drawn as three orthogonal circles of 32 segments.

It is meant for visualizing positions, radii or colliders: it has no collider itself and is not a solid mesh
(use `h3d.prim.Sphere` with a `Mesh` for that).

## Constructor

### new

```haxe
function new(?color:Int = 0xFFFF0000, ?radius:Float = 1.0, ?depth:Bool = true, ?parent:Object):Void
```

Creates a wireframe sphere.
- **param** `color` The line color, in `0xRRGGBB` format (red by default, the alpha byte is ignored).
- **param** `radius` The sphere radius.
- **param** `depth` If `false`, the sphere is always drawn on top of the scene (depth test disabled).
- **param** `parent` An optional parent object.

## Variables

### color

```haxe
var color:Int
```

The line color, in `0xRRGGBB` format. Changes are applied the next time `radius` is set.

### radius

```haxe
var radius(default, set):Float
```

The sphere radius. Setting it redraws the lines.

## Methods

### getLocalCollider

```haxe
override function getLocalCollider():Null<h3d.col.Collider>
```

## Inherited members

- from [`h3d.scene.Graphics`](Graphics.md): `is3D`, `clear`, `lineStyle`, `setColorF`, `setColor`, `drawLine`, `moveTo`, `lineTo`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
