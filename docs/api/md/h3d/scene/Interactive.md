# h3d.scene.Interactive

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Interactive.hx`](../../../../../h3d/scene/Interactive.hx)

Extends: [`h3d.scene.Object`](Object.md)

Implements: [`hxd.Interactive`](../../hxd/Interactive.md)

A 3D object receiving mouse, touch and keyboard events through a collision shape.

The `Scene` casts a ray from the cursor through the camera and sends the events to the interactives whose `shape`
is hit, nearest first (see `Scene.rayCastEventTargets` and `priority`).

The shape is expressed in the interactive local space. `Object.getCollider()` returns a world space snapshot of
an object shape, so such an interactive is added at the scene root (it will not follow the object if it moves).
To follow a moving object, add the interactive as its child with a shape in the object local space
(for instance a `h3d.col.Sphere` or `h3d.col.Bounds`), or keep it at the scene root with a `h3d.col.ObjectCollider(obj, localShape)`,
which applies the current object transform to its shape.

```haxe
var mesh = new h3d.scene.Mesh(prim, s3d);
var i = new h3d.scene.Interactive(mesh.getCollider(), s3d); // world space shape, at the scene root
i.onClick = function(e) trace("clicked at local position " + e.relX + "," + e.relY + "," + e.relZ);
```

## Constructor

### new

```haxe
function new(shape:h3d.col.Collider, ?parent:Object):Void
```

Creates an interactive using the given collision shape.
- **param** `shape` The collision shape, see `shape`.
- **param** `parent` An optional parent object.

## Static methods

### setupDebugMaterial

```haxe
static dynamic function setupDebugMaterial(debugObj:Object):Void
```

Sets up the materials of the debug object displayed by `showDebug`: semi transparent, without shadows,
and in wireframe when the driver supports it. Can be replaced to customize the debug display.

## Variables

### shape

```haxe
var shape:h3d.col.Collider
```

The collision shape tested against the mouse ray, relative to this interactive transform (or in world space if `isAbsoluteShape` is set).

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

Cursor used when the Interactive is under the mouse cursor (`Button` by default).

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

Set to `true` when the interactive was emitted (visible and not culled) during the last rendered frame.

## Methods

### getPoint

```haxe
function getPoint(ray:h3d.col.Ray, bestMatch:Bool):Null<h3d.Vector>
```

Returns the world position where `ray` (in world space) hits the shape, or `null` if it does not hit it.
- **param** `bestMatch` If `true`, finds the nearest hit point on complex shapes instead of any hit point (slower).

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

Sets focus on this `Interactive`.
If Interactive was not already focused and it receives focus - `onFocus` event is sent.
Interactive won't become focused if during `onFocus` call it will set `Event.cancel` to `true`.

### blur

```haxe
function blur():Void
```

Removes focus from interactive if it's focused.
If Interactive is currently focused - `onFocusLost` event will be sent.
Interactive won't lose focus if during `onFocusLost` call it will set `Event.cancel` to `true`.

### isOver

```haxe
function isOver():Bool
```

Checks if Interactive is currently hovered by the mouse.

### hasFocus

```haxe
function hasFocus():Bool
```

Checks if Interactive is currently focused.

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

Sent when user moves within the Interactive hitbox area.
See `Interactive.onCheck` for event when user does not move the mouse.

Cancelling the `Event` will prevent interactive from becoming overed,
causing `Interactive.onOut` if it was overed previously.
Interactive would be treated as not overed as long as event is cancelled even if mouse is within the hitbox area.

### onWheel

```haxe
dynamic function onWheel(e:hxd.Event):Void
```

Sent when user scrolls mouse wheel above the Interactive. Wheel delta can be obtained through the `Event.wheelDelta`.

### onFocus

```haxe
dynamic function onFocus(e:hxd.Event):Void
```

Sent when Interactive receives focus during `Interactive.focus` call.

Cancelling the `Event` will prevent the Interactive from becoming focused.

### onFocusLost

```haxe
dynamic function onFocusLost(e:hxd.Event):Void
```

Sent when Interactive lost focus either via `Interactive.blur` call or when user clicks on another Interactive/outside this Interactive hitbox area.

Cancelling the `Event` will prevent the Interactive from losing focus.

### onKeyUp

```haxe
dynamic function onKeyUp(e:hxd.Event):Void
```

Sent when this Interactive is focused and user unpressed a keyboard key.
Unpressed key can be accessed through `Event.keyCode`.

### onKeyDown

```haxe
dynamic function onKeyDown(e:hxd.Event):Void
```

Sent when this Interactive is focused and user pressed a keyboard key.
Pressed key can be accessed through `Event.keyCode`.

### onCheck

```haxe
dynamic function onCheck(e:hxd.Event):Void
```

Sent every frame when user hovers an Interactive but does not move the mouse.
See `Interactive.onMove` for event when user moves the mouse.

Cancelling the `Event` will prevent interactive from becoming overed,
causing `Interactive.onOut` if it was overed previously.
Interactive would be treated as not overed as long as event is cancelled even if mouse is within the hitbox area.

### onTextInput

```haxe
dynamic function onTextInput(e:hxd.Event):Void
```

Sent when this Interactive is focused and user inputs text. Character added can be accessed through `Event.charCode`.

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
