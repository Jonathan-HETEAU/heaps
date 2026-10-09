# h3d.scene.Scene

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Scene.hx`](../../../../../h3d/scene/Scene.hx)

Extends: [`h3d.scene.Object`](Object.md)

Implements: [`hxd.InteractiveScene`](../../hxd/InteractiveScene.md), [`h3d.IDrawable`](../IDrawable.md)

h3d.scene.Scene is the root class for a 3D scene. All root objects are added to it before being drawn on screen.

## Constructor

### new

```haxe
function new(?createRenderer:Bool = true, ?createLightSystem:Bool = true):Void
```

Create a new scene. A default 3D scene is already available in `hxd.App.s3d`

## Variables

### camera

```haxe
var camera:h3d.Camera
```

The scene current camera.

### lightSystem

```haxe
var lightSystem:LightSystem
```

The scene light system. Can be customized.

### renderer

```haxe
var renderer(default, set):Renderer
```

The scene renderer. Can be customized.

### scenePosition

```haxe
var scenePosition:Null<{ ?zoom:Null<Float>, width:Int, offsetY:Float, offsetX:Float, height:Int }>
```

The scene position. Mainly used for subscenes that aren't fullscreen.

### interactiveOffset

```haxe
var interactiveOffset:Float
```

Adjust the position of the ray used to handle interactives.

## Methods

### addEventListener

```haxe
function addEventListener(f:() -> Void):Void
```

Add an event listener that will capture all events not caught by an h2d.Interactive

### removeEventListener

```haxe
function removeEventListener(f:() -> Void):Bool
```

Remove a previously added event listener, return false it was not part of our event listeners.

### syncEventTargets

```haxe
function syncEventTargets():Void
```

Updates the physics shapes of the interactives (only with `-D hlphysics`, otherwise does nothing).
Called automatically before ray casts, at most once per frame.

### rayCastEventTargets

```haxe
function rayCastEventTargets(r:h3d.col.Ray):Array<{ i:Interactive, distance:Float }>
```

Returns the visible interactives hit by the ray `r` (in world space), sorted from the nearest to the farthest.
Only the interactives with the highest `Interactive.priority` among the hits are returned.
`Interactive.hitPoint` is updated with the local hit position; `distance` is the distance from the camera.

### clone

```haxe
override function clone(?o:Object):Scene
```

### dispose

```haxe
function dispose():Void
```

Free the GPU memory for this Scene and its children

### setElapsedTime

```haxe
function setElapsedTime(elapsedTime:Float):Void
```

Before render() or sync() are called, allow to set how much time has elapsed (in seconds) since the last frame in order to update scene animations.
This is managed automatically by hxd.App

### syncOnly

```haxe
function syncOnly(et:Float):Void
```

Synchronize the scene without rendering, updating all objects and animations by the given amount of time, in seconds.

### computeStatic

```haxe
function computeStatic():Void
```

Perform a rendering with `RendererContext.computingStatic=true`, allowing the computation of static shadow maps, etc.

### onContextLost

```haxe
function onContextLost():Void
```

Automatically called when the 3D context is lost

### render

```haxe
function render(engine:h3d.Engine):Void
```

Render the scene on screen. Internal usage only.

### mark

```haxe
dynamic function mark(name:String):Void
```

Called during rendering at the beginning of each named step (forwards to the renderer). Can be overridden for profiling.

### setOutputTarget

```haxe
function setOutputTarget(?engine:h3d.Engine, ?tex:h3d.mat.Texture):Void
```

Temporarily overrides the output render target. This is useful for picture-in-picture rendering,
where the output render target has a different size from the window.
`tex` must have a matching depthBuffer attached.
Call `setOutputTarget()` after `render()` has been called.

### getRenderCamera

```haxe
function getRenderCamera():h3d.Camera
```

Returns the camera of the render context: a copy of `camera` made at the start of each frame,
with the render settings applied (such as reverse depth).

## Inherited members

- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
