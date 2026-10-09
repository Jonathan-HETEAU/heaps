# h3d.scene.Skin

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Skin.hx`](../../../../../h3d/scene/Skin.hx)

Extends: [`h3d.scene.MultiMaterial`](MultiMaterial.md) → [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.scene.SubSkin`](SubSkin.md)

A skinned mesh: a mesh deformed by a skeleton of joints (bones), driven by skeletal animations.

Skins are created when loading a model with a skeleton (see `hxd.res.Model.toHmd` and `h3d.prim.ModelCache`),
and animated with `Object.playAnimation`. The skinning is performed on the GPU by `h3d.shader.Skin`.
Use `getObjectByName` with a joint name to get an object following that joint.

## Constructor

### new

```haxe
function new(s:Null<h3d.anim.Skin>, ?mat:Array<Null<h3d.mat.Material>>, ?parent:Object):Void
```

Creates a skinned mesh.
- **param** `s` The skin data (skeleton and skinned primitive), or `null` to set it later with `setSkinData`.
- **param** `mat` The materials.
- **param** `parent` An optional parent object.

## Static variables

### FIXED_DT

```haxe
static var FIXED_DT:Float
```

The fixed time step, in seconds, of the dynamic joints simulation.

### MIN_SHADER_BONES

```haxe
static var MIN_SHADER_BONES:Int
```

The minimum number of bones allocated in the skinning shader (the actual size is the next power of two of the
number of bones, which limits the number of shader variants).

## Variables

### MAX_SHADER_BONES

```haxe
final MAX_SHADER_BONES:Int
```

The maximum number of bones per skinning draw. Skins with more bones must be split per material (see `h3d.anim.Skin.splitJoints`).

### accumulator

```haxe
var accumulator:Float
```

The time accumulated for the dynamic joints simulation, consumed by steps of `FIXED_DT`.

### showJoints

```haxe
var showJoints:Bool
```

Displays the skeleton joints and bones with lines (debug).

### enableRetargeting

```haxe
var enableRetargeting:Bool
```

When enabled, joints flagged for retargeting keep their bind pose translation instead of the animated one,
which allows playing an animation made for a skeleton with different proportions.

### prevEnableRetargeting

```haxe
var prevEnableRetargeting:Bool
```

The value of `enableRetargeting` at the last joints sync.

## Methods

### clone

```haxe
override function clone(?o:Object):Skin
```

### getCurrentSkeletonBounds

```haxe
function getCurrentSkeletonBounds():h3d.col.Bounds
```

Returns the bounds of the current positions of the bound joints, in world space.

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

Returns the skin data: the skeleton and the skinned primitive.

### getJointRelPosition

```haxe
function getJointRelPosition(name:String, ?additive:Bool = false):Null<h3d.Matrix>
```

Returns the current transform of joint `name` relative to its parent, or `null` if the joint does not exist.
- **param** `additive` If `true`, returns the additive pose of the joint instead (or `null` if none).

### setJointRelPosition

```haxe
function setJointRelPosition(name:String, pos:h3d.Matrix, ?additive:Bool = false):Void
```

Overrides the transform of joint `name` relative to its parent. Animations overwrite it when they update the joint.
- **param** `additive` If `true`, sets a transform applied on top of the animated pose instead, which is kept
until set to `null`.

### setSkinData

```haxe
function setSkinData(s:h3d.anim.Skin, ?shaderInit:Bool = true):Void
```

Sets the skin data (skeleton and skinned primitive) and reallocates the joint states.
- **param** `shaderInit` If `true`, (re)creates the skinning shader of the materials.

## Inherited members

- from [`h3d.scene.MultiMaterial`](MultiMaterial.md): `materials`, `getMeshMaterials`, `clone`, `getMaterialByName`, `getMaterials`
- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
