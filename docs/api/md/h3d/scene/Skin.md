# h3d.scene.Skin

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Skin.hx`](../../../../../h3d/scene/Skin.hx)

Extends: [`h3d.scene.MultiMaterial`](MultiMaterial.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.SubSkin`](SubSkin.md)

## Constructor

### new

```haxe
function new(s:Null<h3d.anim.Skin>, ?mat:Array<Null<h3d.mat.Material>>, ?parent:Object):Void
```

## Static variables

### FIXED_DT

```haxe
static var FIXED_DT:Float
```

### MIN_SHADER_BONES

```haxe
static var MIN_SHADER_BONES:Int
```

## Variables

### MAX_SHADER_BONES

```haxe
final MAX_SHADER_BONES:Int
```

### accumulator

```haxe
var accumulator:Float
```

### showJoints

```haxe
var showJoints:Bool
```

### enableRetargeting

```haxe
var enableRetargeting:Bool
```

### prevEnableRetargeting

```haxe
var prevEnableRetargeting:Bool
```

## Methods

### clone

```haxe
override function clone(?o:Object):Skin
```

### getCurrentSkeletonBounds

```haxe
function getCurrentSkeletonBounds():h3d.col.Bounds
```

### getObjectByName

```haxe
override function getObjectByName(name:String):Object
```

### getLocalCollider

```haxe
override function getLocalCollider():h3d.col.Collider
```

### getGlobalCollider

```haxe
override function getGlobalCollider():h3d.col.Collider
```

### getSkinData

```haxe
function getSkinData():h3d.anim.Skin
```

### getJointRelPosition

```haxe
function getJointRelPosition(name:String, ?additive:Bool = false):Null<h3d.Matrix>
```

### setJointRelPosition

```haxe
function setJointRelPosition(name:String, pos:h3d.Matrix, ?additive:Bool = false):Void
```

### setSkinData

```haxe
function setSkinData(s:h3d.anim.Skin, ?shaderInit:Bool = true):Void
```

## Inherited members

- from [`h3d.scene.MultiMaterial`](MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
