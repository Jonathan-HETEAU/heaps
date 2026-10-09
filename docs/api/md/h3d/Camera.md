# h3d.Camera

**class** · package [`h3d`](README.md) · source [`h3d/Camera.hx`](../../../../h3d/Camera.hx)

A 3D camera: a position `pos` looking at `target`, with a perspective (or orthographic, see `orthoBounds`)
projection. The default coordinate system has Z up.

Call `update()` after changing its properties to recompute its matrices (done every frame for `Scene.camera`).

```haxe
s3d.camera.pos.set(10, 10, 10);
s3d.camera.target.set(0, 0, 0);
s3d.camera.fovY = 60;
```

## Constructor

### new

```haxe
function new(?fovY:Float = 25., ?zoom:Float = 1., ?screenRatio:Float = 1.333333, ?zNear:Float = 0.02, ?zFar:Float = 4000., ?rightHanded:Bool = false):Void
```

Creates a camera at `(2, 3, 4)` looking at the origin, with Z up.
- **param** `fovY` The vertical field of view, in degrees.

## Variables

### zoom

```haxe
var zoom:Float
```

A zoom factor applied to the projection (`1` by default).

### screenRatio

```haxe
var screenRatio:Float
```

The screenRatio represents the W/H screen ratio.

### fovY

```haxe
var fovY:Float
```

The vertical FieldOfView, in degrees.
Usually cameras are using an horizontal FOV, but the value will change depending on the screen ratio.
For instance a 4:3 screen will have a lower horizontal FOV than a 16:9 one, however the vertical FOV remains constant.
Use setFovX to initialize fovY based on an horizontal FOV and an initial screen ratio.

### zNear

```haxe
var zNear:Float
```

The distance of the near clipping plane: closer objects are not drawn.

### zFar

```haxe
var zFar:Float
```

The distance of the far clipping plane: farther objects are not drawn.

### orthoBounds

```haxe
var orthoBounds:h3d.col.Bounds
```

Set orthographic bounds.

### rightHanded

```haxe
var rightHanded:Bool
```

Uses a right-handed coordinate system instead of the default left-handed one.

### mproj

```haxe
var mproj:Matrix
```

The projection matrix, computed by `update`.

### mcam

```haxe
var mcam:Matrix
```

The view matrix (world to camera space), computed by `update`.

### m

```haxe
var m:Matrix
```

The view-projection matrix (`mcam * mproj`), computed by `update`.

### pos

```haxe
var pos:Vector
```

The camera position.

### up

```haxe
var up:Vector
```

up is used for the lookAt matrix.
it is not the actual up axis of the camera.
use getUp instead.

### target

```haxe
var target:Vector
```

The point the camera looks at.

### viewX

```haxe
var viewX:Float
```

A horizontal offset of the projection center, in screen units (`-1` to `1`), to shift the view without moving the camera.

### viewY

```haxe
var viewY:Float
```

A vertical offset of the projection center, in screen units (`-1` to `1`).

### follow

```haxe
var follow:{ target:h3d.scene.Object, pos:h3d.scene.Object }
```

If set, `update` places the camera at the absolute position of `follow.pos` looking at `follow.target`
(for instance cameras animated in a model). An animated `FOVY` property of `follow.pos` also sets `fovY`.

### frustum

```haxe
var frustum(default, null):h3d.col.Frustum
```

The view frustum, computed by `update`, used for culling.

### jitterOffsetX

```haxe
var jitterOffsetX:Float
```

A sub-pixel horizontal offset of the projection, used by temporal anti-aliasing.

### jitterOffsetY

```haxe
var jitterOffsetY:Float
```

A sub-pixel vertical offset of the projection, used by temporal anti-aliasing.

### reverseDepth

```haxe
var reverseDepth:Bool
```

Uses a reversed depth range (near at 1, far at 0) for better precision. Set by the render context.

## Methods

### setFovX

```haxe
function setFovX(fovX:Float, withRatio:Float):Void
```

Set the vertical fov based on a given horizontal fov (in degrees) for a specified screen ratio.

### getFovX

```haxe
function getFovX():Float
```

Calculate the current horizontal fov (in degrees).

### clone

```haxe
function clone():Camera
```

Returns a copy of the camera.

### getInverseViewProj

```haxe
function getInverseViewProj():Matrix
```

Returns the inverse of the camera matrix view and projection. Cache the result until the next update().

### getInverseProj

```haxe
function getInverseProj():Matrix
```

Returns the inverse of the camera matrix projection. Cache the result until the next update().

### getInverseView

```haxe
function getInverseView():Matrix
```

Returns the inverse of the camera matrix view only. Cache the result until the next update().

### getForward

```haxe
inline function getForward():Vector
```

Returns the forward of the camera. Cache the result until the next update().

### getRight

```haxe
inline function getRight():Vector
```

Returns the right of the camera. Cache the result until the next update().

### getUp

```haxe
inline function getUp():Vector
```

Returns the up of the camera. Cache the result until the next update().

### setCubeMap

```haxe
function setCubeMap(face:Int, ?position:Vector):Void
```

Setup camera for cubemap rendering on the given face.

### unproject

```haxe
function unproject(screenX:Float, screenY:Float, camZ:Float):Vector
```

Transforms a 2D screen position into the 3D one according to the current camera.
The screenX and screenY values must be in the [-1,1] range.
The camZ value represents the normalized z in the frustum in the [0,1] range.
[unproject] can be used to get the ray from the camera position to a given screen position by using two different camZ values.
For instance the 3D ray between unproject(0,0,0) and unproject(0,0,1) is the center axis of the 3D frustum.

### rayFromScreen

```haxe
function rayFromScreen(pixelX:Float, pixelY:Float, ?sceneWidth:Int = -1, ?sceneHeight:Int = -1):h3d.col.Ray
```

Returns the ray going from the camera through the given screen pixel, in world space (for picking).
- **param** `sceneWidth` The width of the screen, the engine width by default.
- **param** `sceneHeight` The height of the screen, the engine height by default.

### update

```haxe
function update():Void
```

Recomputes the matrices and the frustum from the camera properties.

### getFrustumCorners

```haxe
function getFrustumCorners(?zMax:Float = 1., ?zMin:Float = 0.):Array<Vector>
```

Returns the 8 corners of the view frustum in world space: the 4 corners at depth `zMin`, then the 4 at depth `zMax`
(depths from `0` near to `1` far).

### lostUp

```haxe
function lostUp():Bool
```

Tells if the camera position direction is aligned with the `up` vector, in which case the view orientation is undefined.

### getViewDirection

```haxe
function getViewDirection(dx:Float, dy:Float, ?dz:Float = 0.):Vector
```

Returns the normalized direction of the camera space vector (`dx`, `dy`, `dz`), transformed by the view matrix.

### movePosAxis

```haxe
function movePosAxis(dx:Float, dy:Float, ?dz:Float = 0.):Void
```

Moves the camera position along its view axes.

### moveTargetAxis

```haxe
function moveTargetAxis(dx:Float, dy:Float, ?dz:Float = 0.):Void
```

Moves the camera target along its view axes.

### forward

```haxe
function forward(?speed:Float = 1.):Void
```

Moves the camera 2.5% closer to its target (multiplied by `speed`).

### backward

```haxe
function backward(?speed:Float = 1.):Void
```

Moves the camera 2.5% farther from its target (multiplied by `speed`).

### setTransform

```haxe
function setTransform(m:Matrix):Void
```

Places the camera at the position of `m`, looking along its X axis.

### projectInline

```haxe
inline function projectInline(x:Float, y:Float, z:Float, screenWidth:Float, screenHeight:Float, ?snapToPixel:Bool = true):Vector
```

Project a 3D point into the 2D screen. Make sure to update() the camera if it's been moved before using that.

### project

```haxe
function project(x:Float, y:Float, z:Float, screenWidth:Float, screenHeight:Float, ?snapToPixel:Bool = true, ?p:Vector):Null<Vector>
```

Returns the screen position, in pixels, of the world position (`x`, `y`, `z`). Its `z` is the projected depth.
- **param** `snapToPixel` Rounds the result to integer pixels.
- **param** `p` An optional vector to store the result in.

### distanceToDepth

```haxe
function distanceToDepth(dist:Float):Float
```

Converts a distance from the camera to the depth buffer value (taking `reverseDepth` into account).

### depthToDistance

```haxe
function depthToDistance(depth:Float):Float
```

Converts a depth buffer value to a distance from the camera.

### load

```haxe
function load(cam:Camera):Void
```

Copies all the properties of `cam`.
