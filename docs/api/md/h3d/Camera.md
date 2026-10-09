# h3d.Camera

**class** · package [`h3d`](README.md) · source [`h3d/Camera.hx`](../../../../h3d/Camera.hx)

## Constructor

### new

```haxe
function new(?fovY:Float = 25., ?zoom:Float = 1., ?screenRatio:Float = 1.333333, ?zNear:Float = 0.02, ?zFar:Float = 4000., ?rightHanded:Bool = false):Void
```

## Variables

### zoom

```haxe
var zoom:Float
```

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

### zFar

```haxe
var zFar:Float
```

### orthoBounds

```haxe
var orthoBounds:h3d.col.Bounds
```

Set orthographic bounds.

### rightHanded

```haxe
var rightHanded:Bool
```

### mproj

```haxe
var mproj:Matrix
```

### mcam

```haxe
var mcam:Matrix
```

### m

```haxe
var m:Matrix
```

### pos

```haxe
var pos:Vector
```

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

### viewX

```haxe
var viewX:Float
```

### viewY

```haxe
var viewY:Float
```

### follow

```haxe
var follow:{ target:h3d.scene.Object, pos:h3d.scene.Object }
```

### frustum

```haxe
var frustum(default, null):h3d.col.Frustum
```

### jitterOffsetX

```haxe
var jitterOffsetX:Float
```

### jitterOffsetY

```haxe
var jitterOffsetY:Float
```

### reverseDepth

```haxe
var reverseDepth:Bool
```

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

### update

```haxe
function update():Void
```

### getFrustumCorners

```haxe
function getFrustumCorners(?zMax:Float = 1., ?zMin:Float = 0.):Array<Vector>
```

### lostUp

```haxe
function lostUp():Bool
```

### getViewDirection

```haxe
function getViewDirection(dx:Float, dy:Float, ?dz:Float = 0.):Vector
```

### movePosAxis

```haxe
function movePosAxis(dx:Float, dy:Float, ?dz:Float = 0.):Void
```

### moveTargetAxis

```haxe
function moveTargetAxis(dx:Float, dy:Float, ?dz:Float = 0.):Void
```

### forward

```haxe
function forward(?speed:Float = 1.):Void
```

### backward

```haxe
function backward(?speed:Float = 1.):Void
```

### setTransform

```haxe
function setTransform(m:Matrix):Void
```

### projectInline

```haxe
inline function projectInline(x:Float, y:Float, z:Float, screenWidth:Float, screenHeight:Float, ?snapToPixel:Bool = true):Vector
```

Project a 3D point into the 2D screen. Make sure to update() the camera if it's been moved before using that.

### project

```haxe
function project(x:Float, y:Float, z:Float, screenWidth:Float, screenHeight:Float, ?snapToPixel:Bool = true, ?p:Vector):Null<Vector>
```

### distanceToDepth

```haxe
function distanceToDepth(dist:Float):Float
```

### depthToDistance

```haxe
function depthToDistance(depth:Float):Float
```

### load

```haxe
function load(cam:Camera):Void
```
