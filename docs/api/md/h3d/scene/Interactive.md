# h3d.scene.Interactive

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Interactive.hx`](../../../../../h3d/scene/Interactive.hx)

Extends: [`h3d.scene.Object`](Object.md)

Implements: [`hxd.Interactive`](../../hxd/Interactive.md)

## Constructor

### new

```haxe
function new(shape:h3d.col.Collider, ?parent:Object):Void
```

## Static methods

### setupDebugMaterial

```haxe
static dynamic function setupDebugMaterial(debugObj:Object):Void
```

## Variables

### shape

```haxe
var shape:h3d.col.Collider
```

### preciseShape

```haxe
var preciseShape:Null<h3d.col.Collider>
```

If several interactive conflicts, the preciseShape (if defined) can be used to distinguish between the two.

### priority

```haxe
var priority:Int
```

In case of conflicting shapes, usually the one in front of the camera is prioritized, unless you set an higher priority.

### cursor

```haxe
var cursor(default, set):Null<hxd.Cursor>
```

### cancelEvents

```haxe
var cancelEvents:Bool
```

Set the default `cancel` mode (see `hxd.Event`), default to false.

### propagateEvents

```haxe
var propagateEvents:Bool
```

Set the default `propagate` mode (see `hxd.Event`), default to false.

### enableRightButton

```haxe
var enableRightButton:Bool
```

When enabled, interacting with secondary mouse buttons (right button/wheel) will cause `onPush`, `onClick`, `onRelease` and `onReleaseOutside` callbacks.
Otherwise those callbacks will only be triggered with primary mouse button (left button).

### allowMultiClick

```haxe
var allowMultiClick:Bool
```

When enabled, allows to receive several onClick events the same frame.

### bestMatch

```haxe
var bestMatch:Bool
```

Is it required to find the best hit point in a complex mesh or any hit possible point will be enough (default = false, faster).

### showDebug

```haxe
var showDebug(get, set):Bool
```

When set, will display the debug object of the shape (using makeDebugObj)

### isAbsoluteShape

```haxe
var isAbsoluteShape:Bool
```

*  Tells if our shapes are in absolute space (for example ObjectCollider) or relative to the interactive transform.

### emittedLastFrame

```haxe
var emittedLastFrame:Bool
```

## Methods

### getPoint

```haxe
function getPoint(ray:h3d.col.Ray, bestMatch:Bool):Null<h3d.Vector>
```

### set_showDebug

```haxe
function set_showDebug(val:Bool):Bool
```

### preventClick

```haxe
function preventClick():Void
```

This can be called during or after a push event in order to prevent the release from triggering a click.

### focus

```haxe
function focus():Void
```

### blur

```haxe
function blur():Void
```

### isOver

```haxe
function isOver():Bool
```

### hasFocus

```haxe
function hasFocus():Bool
```

### onOver

```haxe
dynamic function onOver(e:hxd.Event):Void
```

Sent when mouse enters Interactive hitbox area.
`event.propagate` and `event.cancel` are ignored during `onOver`.
Propagation can be set with `onMove` event, as well as cancelling `onMove` will prevent `onOver`.

### onOut

```haxe
dynamic function onOut(e:hxd.Event):Void
```

Sent when mouse exits Interactive hitbox area.
`event.propagate` and `event.cancel` are ignored during `onOut`.

### onPush

```haxe
dynamic function onPush(e:hxd.Event):Void
```

Sent when Interactive is pressed by user.

### onRelease

```haxe
dynamic function onRelease(e:hxd.Event):Void
```

Sent on multiple conditions.
A. Always sent if user releases mouse while it is inside Interactive hitbox area.
    This happends regardless if that Interactive was pressed prior or not.
B. Sent before `onReleaseOutside` if this Interactive was pressed, but released outside it's bounds.
For first case `event.kind` will be `ERelease`, for second case - `EReleaseOutside`.
See `onClick` and `onReleaseOutside` functions for separate events that trigger only when user interacts with this particular Interactive.

### onReleaseOutside

```haxe
dynamic function onReleaseOutside(e:hxd.Event):Void
```

Sent when user presses Interactive, moves mouse outside and releases it.
This event fired only on Interactive that user pressed, but released mouse after moving it outside of Interactive hitbox area.

### onClick

```haxe
dynamic function onClick(e:hxd.Event):Void
```

Sent when Interactive is clicked by user.
This event fired only on Interactive that user pressed and released when mouse is inside Interactive hitbox area.

### onMove

```haxe
dynamic function onMove(e:hxd.Event):Void
```

### onWheel

```haxe
dynamic function onWheel(e:hxd.Event):Void
```

### onFocus

```haxe
dynamic function onFocus(e:hxd.Event):Void
```

### onFocusLost

```haxe
dynamic function onFocusLost(e:hxd.Event):Void
```

### onKeyUp

```haxe
dynamic function onKeyUp(e:hxd.Event):Void
```

### onKeyDown

```haxe
dynamic function onKeyDown(e:hxd.Event):Void
```

### onCheck

```haxe
dynamic function onCheck(e:hxd.Event):Void
```

### onTextInput

```haxe
dynamic function onTextInput(e:hxd.Event):Void
```

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
