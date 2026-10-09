# h3d.scene.Mesh

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Mesh.hx`](../../../../../h3d/scene/Mesh.hx)

Extends: [`h3d.scene.Object`](Object.md)

Subclasses: [`h3d.parts.Particles`](../parts/Particles.md), [`h3d.scene.Graphics`](Graphics.md), [`h3d.scene.MultiMaterial`](MultiMaterial.md), [`h3d.scene.Trail`](Trail.md), [`h3d.scene.pbr.Decal`](pbr/Decal.md)

h3d.scene.Mesh is the base class for all 3D objects displayed on screen.
Unlike Object base class, all properties of Mesh only apply to the current object and are not inherited by its children.

## Constructor

### new

```haxe
function new(primitive:h3d.prim.Primitive, ?material:h3d.mat.Material, ?parent:Object):Void
```

Creates a new mesh with given primitive, material and parent object.
If material is not specified, a new default material is created for the current renderer.

## Static methods

### screenRatio

```haxe
static function screenRatio(absPos:h3d.Matrix, bounds:h3d.col.Bounds, camera:h3d.Camera):Float
```

Computes the approximate size of `bounds` on screen, relative to the screen size (`1.0` means the bounding
sphere covers the screen height or width). Used to select the level of detail of meshes.
- **param** `absPos` The absolute transform of the object.
- **param** `bounds` The local bounds of the object.
- **param** `camera` The camera rendering the object.

## Variables

### primitive

```haxe
var primitive(default, set):h3d.prim.Primitive
```

The primitive of the mesh: the list of vertexes and indices necessary to display the mesh.

### material

```haxe
var material:h3d.mat.Material
```

The material of the mesh: the properties used to display it (texture, color, shaders, etc.)

### inheritLod

```haxe
var inheritLod:Bool
```

When enabled, the lod level is inherited by children objects.

### blendshapeInstance

```haxe
var blendshapeInstance(default, null):h3d.prim.BlendshapeInstance
```

Instance of the blendshape of the mesh: the list of weights for the different shapes

### forcedLod

```haxe
var forcedLod:Int
```

Allow user to force a specific lod index. If set to -1, forced lod will be ignored.

## Methods

### getMeshMaterials

```haxe
function getMeshMaterials():Array<h3d.mat.Material>
```

Return all materials for the current object.

### clone

```haxe
override function clone(?o:Object):Object
```

### getLocalCollider

```haxe
override function getLocalCollider():h3d.col.Collider
```

### getMaterialByName

```haxe
override function getMaterialByName(name:String):h3d.mat.Material
```

### getMaterials

```haxe
override function getMaterials(?a:Array<h3d.mat.Material>, ?recursive:Bool = true):Null<Array<h3d.mat.Material>>
```

### getLodIndex

```haxe
function getLodIndex():Int
```

Returns the level of detail currently used to draw this mesh: `forcedLod` if set (not `-1`), otherwise the LOD
selected by the primitive from the screen ratio computed during the last frame.

### setBlendshapeWeight

```haxe
function setBlendshapeWeight(name:String, weight:Float):Void
```

Sets the weight of the blend shape (morph target) `name`. The primitive must be a `h3d.prim.HMDModel` with blend shapes.

### setBlendshapeWeights

```haxe
function setBlendshapeWeights(weights:Array<Float>):Void
```

Sets the weights of all the blend shapes at once, in the order returned by `getBlenshapeNames`.

### getBlenshapeNames

```haxe
function getBlenshapeNames():Array<String>
```

Returns the names of the blend shapes of the primitive, or an empty array if it has none.

### hasBlendshapes

```haxe
function hasBlendshapes():Bool
```

Tells if the primitive of this mesh has blend shapes (morph targets).

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
