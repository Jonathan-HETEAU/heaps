# h3d.scene.MultiMaterial

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/MultiMaterial.hx`](../../../../../h3d/scene/MultiMaterial.hx)

Extends: [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.parts.GpuParticles`](../parts/GpuParticles.md), [`h3d.scene.MeshBatch`](MeshBatch.md), [`h3d.scene.Skin`](Skin.md)

A `Mesh` using several materials, one per material group of its primitive.

The primitive must split its indexes per material (for instance a `h3d.prim.HMDModel` loaded from a model
with several materials): each material `i` is drawn with the indexes of group `i`.

## Constructor

### new

```haxe
function new(prim:h3d.prim.Primitive, ?mats:Array<Null<h3d.mat.Material>>, ?parent:Object):Void
```

Creates a multi-material mesh.
- **param** `prim` The primitive to draw, with one index group per material.
- **param** `mats` The materials. If `null`, a single default material is created.
- **param** `parent` An optional parent object.

## Variables

### materials

```haxe
var materials:Array<h3d.mat.Material>
```

The materials, indexed by primitive material group. `null` entries are not drawn.
`Mesh.material` refers to the first one.

## Methods

### getMeshMaterials

```haxe
override function getMeshMaterials():Array<h3d.mat.Material>
```

### clone

```haxe
override function clone(?o:Object):MultiMaterial
```

### getMaterialByName

```haxe
override function getMaterialByName(name:String):h3d.mat.Material
```

### getMaterials

```haxe
override function getMaterials(?a:Array<h3d.mat.Material>, ?recursive:Bool = true):Null<Array<h3d.mat.Material>>
```

## Inherited members

- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
