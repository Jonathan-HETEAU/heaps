# h3d.scene.Object

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Object.hx`](../../../../../h3d/scene/Object.hx)

Subclasses: [`h3d.col.SkinColliderDebugObj`](../col/SkinColliderDebugObj.md), [`h3d.scene.AnimMeshBatcher`](AnimMeshBatcher.md), [`h3d.scene.Batcher`](Batcher.md), [`h3d.scene.CameraController`](CameraController.md), [`h3d.scene.HierarchicalWorld`](HierarchicalWorld.md), [`h3d.scene.Interactive`](Interactive.md), [`h3d.scene.Joint`](Joint.md), [`h3d.scene.Light`](Light.md), [`h3d.scene.Mesh`](Mesh.md), [`h3d.scene.Scene`](Scene.md), [`h3d.scene.World`](World.md)

h3d.scene.Object is the base 3D class that all scene tree elements inherit from.
It can be used to create a virtual container that does not display anything but can contain other objects
so the various transforms are inherited to its children.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new empty object, and adds it to the parent object if not null.

## Variables

### currentAnimation

```haxe
var currentAnimation(default, null):h3d.anim.Animation
```

### parent

```haxe
var parent(default, null):Object
```

The parent object in the scene tree.

### numChildren

```haxe
var numChildren(get, null):Int
```

How many immediate children this object has.

### visible

```haxe
var visible(get, set):Bool
```

Is the object and its children are displayed on screen (default true).

### culled

```haxe
var culled(get, set):Bool
```

Inform that the object is not to be displayed and his animation doesn't have to be sync. Unlike visible, this doesn't apply to children unless inheritCulled is set to true.

### alwaysSyncAnimation

```haxe
var alwaysSyncAnimation(get, set):Bool
```

When an object is not visible or culled, its animation does not get synchronized unless you set alwaysSyncAnimation=true

### inheritCulled

```haxe
var inheritCulled(get, set):Bool
```

When enabled, the culled flag and culling collider is inherited by children objects.

### ignoreBounds

```haxe
var ignoreBounds(get, set):Bool
```

When enabled, the object bounds are ignored when using getBounds()

### forceBounds

```haxe
var forceBounds(get, set):Bool
```

When enabled, the object bounds are included even if it's not visible when using getBounds()

### ignoreCollide

```haxe
var ignoreCollide(get, set):Bool
```

When enabled, the object is ignored when using getCollider()

### modelRoot

```haxe
var modelRoot(get, set):Bool
```

Tag the object as a model root

### ignoreParentTransform

```haxe
var ignoreParentTransform(get, set):Bool
```

When enabled, the object will not follow its parent transform

### lightCameraCenter

```haxe
var lightCameraCenter(get, set):Bool
```

When selecting the lights to apply to this object, we will use the camera target as reference
instead of the object absolute position. This is useful for very large objects so they can get good lighting.
(this is only relevant in forward rendering)

### fixedPosition

```haxe
var fixedPosition(get, set):Bool
```

When set, the object and all its children will not sync() unless this root object position has been changed.
This allows to optimize cpu cost of static objects having many children.
When set, changes on position during sync() won't be applied.

### alwaysSync

```haxe
var alwaysSync(get, set):Bool
```

When unset, the object and all its children will not sync() if this root object or one of its parent is culled or not visible.
This allows to optimize cpu cost of objects having many children.

### drawn

```haxe
var drawn(get, set):Bool
```

When set, the object has been drawn during previous frame. Useful for temporal effects such as temporal antialiasing.

### cullingCollider

```haxe
var cullingCollider(default, set):h3d.col.Collider
```

When set, collider shape will be used for automatic frustum culling.
If `inheritCulled` is true, collider will be inherited to children unless they have their own collider set.

### x

```haxe
var x(default, set):Float
```

The x position of the object relative to its parent.

### y

```haxe
var y(default, set):Float
```

The y position of the object relative to its parent.

### z

```haxe
var z(default, set):Float
```

The z position of the object relative to its parent.

### scaleX

```haxe
var scaleX(default, set):Float
```

The amount of scaling along the X axis of this object (default 1.0)

### scaleY

```haxe
var scaleY(default, set):Float
```

The amount of scaling along the Y axis of this object (default 1.0)

### scaleZ

```haxe
var scaleZ(default, set):Float
```

The amount of scaling along the Z axis of this object (default 1.0)

### follow

```haxe
var follow(default, set):Object
```

Follow a given object or joint as if it was our parent. Ignore defaultTransform when set.

### followPositionOnly

```haxe
var followPositionOnly(get, set):Bool
```

When follow is set, only follow the position and ignore both scale and rotation.

### defaultTransform

```haxe
var defaultTransform(default, set):h3d.Matrix
```

This is an additional optional transformation that is performed before other local transformations.
It is used by the animation system.

### name

```haxe
var name:Null<String>
```

The name of the object, can be used to retrieve an object within a tree by using `getObjectByName` (default null)

## Methods

### playAnimation

```haxe
function playAnimation(a:h3d.anim.Animation):h3d.anim.Animation
```

Create an animation instance bound to the object, set it as currentAnimation and play it.

### switchToAnimation

```haxe
function switchToAnimation(a:h3d.anim.Animation):h3d.anim.Animation
```

Change the current animation. This animation should be an instance that was previously created by playAnimation.

### stopAnimation

```haxe
function stopAnimation(?recursive:Bool = false):Void
```

Stop the current animation. If recursive is set to true, all children will also stop their animation

### applyAnimationTransform

```haxe
function applyAnimationTransform(?recursive:Bool = true):Void
```

When an object is loaded, its position scale and rotation will always be set to the default values (0 for position/rotation and 1 for scale).
If it's part of a group/scene or if it's animated, then its position/rotation/scale will be stored into the defaultTransform matrix.
Calling this function will reset the defaultTransform to null and instead initialize x/y/z/rotation/scale properties.
This will not change the actual position of the object but allows you to move the object more freely on your own.
Do not use on an object that is currently being animated, since it will set again defaultTransform and apply twice the transformation.

### getObjectsCount

```haxe
function getObjectsCount():Int
```

Return the total number of children, recursively.

### getMaterialByName

```haxe
function getMaterialByName(name:String):h3d.mat.Material
```

Search for a material recursively by name, return it or null if not found.

### contains

```haxe
function contains(o:Object):Bool
```

Tells if the object is contained into this object children, recursively.

### find

```haxe
function find(f:() -> Null<find.T>):Null<find.T>
```

Find a single object in the tree by calling `f` on each and returning the first not-null value returned, or null if not found.

### findAll

```haxe
function findAll(f:() -> Null<findAll.T>, ?arr:Array<findAll.T>):Array<findAll.T>
```

Find several objects in the tree by calling `f` on each and returning all the not-null values returned.

### getMaterials

```haxe
function getMaterials(?a:Array<h3d.mat.Material>, ?recursive:Bool = true):Null<Array<h3d.mat.Material>>
```

Return all materials in the tree.

### localToGlobal

```haxe
function localToGlobal(?pt:Null<h3d.col.Point>):Null<h3d.col.Point>
```

Convert a local position (or [0,0] if pt is null) relative to the object origin into an absolute global position, applying all the inherited transforms.

### globalToLocal

```haxe
function globalToLocal(pt:h3d.col.Point):h3d.col.Point
```

Convert an absolute global position into a local position relative to the object origin, applying all the inherited transforms.

### getInvPos

```haxe
function getInvPos():h3d.Matrix
```

Returns the updated inverse position matrix. Please note that this is not a copy and should not be modified.

### getBounds

```haxe
function getBounds(?b:h3d.col.Bounds, ?relativeTo:Object):Null<h3d.col.Bounds>
```

Return the bounds of this object and all its children, in absolute global coordinates or relative to the
object being used as parameter.

### getMeshes

```haxe
function getMeshes(?out:Array<Mesh>):Null<Array<Mesh>>
```

Return all meshes part of this tree

### getMeshByName

```haxe
function getMeshByName(name:String):Mesh
```

Search for an mesh recursively by name, return null if not found.

### getObjectByName

```haxe
function getObjectByName(name:String):Object
```

Search for an object recursively by name, return null if not found.

### clone

```haxe
function clone(?o:Object):Object
```

Make a copy of the object and all its children.

### addChild

```haxe
function addChild(o:Object):Void
```

Add a child object at the end of the children list.

### addChildAt

```haxe
function addChildAt(o:Object, pos:Int):Void
```

Insert a child object at the specified position of the children list.

### iterVisibleMeshes

```haxe
function iterVisibleMeshes(callb:() -> Void):Void
```

Iterate on all mesh that are currently visible and not culled in the tree. Call `callb` for each mesh found.

### removeChild

```haxe
function removeChild(o:Object):Void
```

Remove the given object from our immediate children list if it's part of it.

### removeChildren

```haxe
function removeChildren():Void
```

Remove all children from our immediate children list

### remove

```haxe
inline function remove():Void
```

Same as parent.removeChild(this), but does nothing if parent is null.
In order to capture add/removal from scene, you can override onAdd/onRemove/onParentChanged

### getScene

```haxe
function getScene():Scene
```

Return the Scene this object is part of, or null if not added to a Scene.

### getAbsPos

```haxe
function getAbsPos():h3d.Matrix
```

Returns the updated absolute position matrix. Please note that this is not a copy so it should not be modified.

### getRelPos

```haxe
function getRelPos(obj:Object):h3d.Matrix
```

Returns the position matrix relative to another scene object

### isMesh

```haxe
inline function isMesh():Bool
```

Tell if the object is a Mesh.

### toMesh

```haxe
function toMesh():Mesh
```

If the object is a Mesh, return the corresponding Mesh. If not, throw an exception.

### getCollider

```haxe
function getCollider():h3d.col.Collider
```

Build and return the global absolute recursive collider for the object.
Returns null if no collider was found or if ignoreCollide was set to true.

### getGlobalCollider

```haxe
function getGlobalCollider():h3d.col.Collider
```

Same as getLocalCollider, but returns an absolute collider instead of a local one.

### getLocalCollider

```haxe
function getLocalCollider():h3d.col.Collider
```

Build and returns the local relative not-recursive collider for the object, or null if this object does not have a collider.
Does not check for ignoreCollide.

### getPosition

```haxe
inline function getPosition():h3d.Vector
```

Return the (x,y,z) position relative to the object parent.

### setPosition

```haxe
inline function setPosition(x:Float, y:Float, z:Float):Void
```

Set the position of the object relative to its parent.

### setTransform

```haxe
function setTransform(mat:h3d.Matrix):Void
```

### getTransform

```haxe
function getTransform(?mat:h3d.Matrix):h3d.Matrix
```

Returns the local position, scale and rotation of the object relative to its parent.

### rotate

```haxe
function rotate(rx:Float, ry:Float, rz:Float, ?qTmp:h3d.Quat):Void
```

Rotate around the current rotation axis by the specified angles (in radian).

### setRotation

```haxe
function setRotation(rx:Float, ry:Float, rz:Float):Void
```

Set the rotation using the specified angles (in radian).

### setRotationAxis

```haxe
function setRotationAxis(ax:Float, ay:Float, az:Float, angle:Float):Void
```

Set the rotation using the specified axis and angle of rotation around it (in radian).

### setDirection

```haxe
function setDirection(v:h3d.Vector, ?up:h3d.Vector):Void
```

Set the rotation using the specified look at direction

### getLocalDirection

```haxe
function getLocalDirection():h3d.Vector
```

Return the direction in which the object rotation is currently oriented to

### getRotationQuat

```haxe
function getRotationQuat():h3d.Quat
```

Return the quaternion representing the current object rotation.
Dot not modify as it's not a copy.

### setRotationQuat

```haxe
function setRotationQuat(q:h3d.Quat):Void
```

Set the quaternion representing the current object rotation.
Dot not modify the value afterwards as no copy is made.

### scale

```haxe
inline function scale(v:Float):Void
```

Scale uniformly the object by the given factor.

### setScale

```haxe
inline function setScale(v:Float):Void
```

Set the uniform scale for the object.

### toString

```haxe
function toString():String
```

Return both class name and object name if any.

### getChildAt

```haxe
inline function getChildAt(n:Int):Object
```

Return the `n`th element among our immediate children list, or null if there is no.

### getChildIndex

```haxe
function getChildIndex(o:Object):Int
```

Return the index of the object `o` within our immediate children list, or `-1` if it is not part of our children list.

### iterator

```haxe
inline function iterator():hxd.impl.ArrayIterator_h3d_scene_Object
```

Return an iterator over this object immediate children
