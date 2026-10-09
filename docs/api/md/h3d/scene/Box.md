# h3d.scene.Box

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Box.hx`](../../../../../h3d/scene/Box.hx)

Extends: [`h3d.scene.Graphics`](Graphics.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

A debug wireframe box, drawn with 12 lines.

The lines are rebuilt automatically during sync whenever `bounds` changes. It has no collider and is meant
for visualizing bounds; use `h3d.prim.Cube` with a `Mesh` for a solid box.

## Constructor

### new

```haxe
function new(?color:Int = 0xFFFF0000, ?bounds:h3d.col.Bounds, ?depth:Bool = true, ?parent:Object):Void
```

Creates a wireframe box.
- **param** `color` The line color, in `0xRRGGBB` format (red by default, the alpha byte is ignored).
- **param** `bounds` The box bounds in local space, or `null` for a unit box centered on the origin.
- **param** `depth` If `false`, the box is always drawn on top of the scene (depth test disabled).
- **param** `parent` An optional parent object.

## Variables

### color

```haxe
var color:Int
```

The line color, in `0xRRGGBB` format. Changes are applied the next time the bounds change.

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The box bounds, in local space. If `null`, a unit box centered on the origin (from -0.5 to 0.5) is drawn.

### thickness

```haxe
var thickness:Float
```

The line thickness. Changes are applied the next time the bounds change.

## Methods

### clone

```haxe
override function clone(?o:Object):Object
```

### getLocalCollider

```haxe
override function getLocalCollider():Null<h3d.col.Collider>
```

## Inherited members

- from [`h3d.scene.Graphics`](Graphics.md): `is3D`, `clear`, `lineStyle`, `setColorF`, `setColor`, `drawLine`, `moveTo`, `lineTo`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
