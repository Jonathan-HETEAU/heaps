# h3d.impl.UpscalingParams

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

The camera and frame parameters of the upscaler and the frame generation.

## Constructor

### new

```haxe
function new():Void
```

Creates the parameters.

## Variables

### cameraViewToClip

```haxe
var cameraViewToClip:h3d.Matrix
```

The projection matrix.

### clipToCameraView

```haxe
var clipToCameraView:h3d.Matrix
```

The inverse projection matrix.

### clipToPrevClip

```haxe
var clipToPrevClip:h3d.Matrix
```

The matrix from the clip space of the frame to the clip space of the previous frame.

### prevClipToClip

```haxe
var prevClipToClip:h3d.Matrix
```

The matrix from the clip space of the previous frame to the clip space of the frame.

### jitterOffsetX

```haxe
var jitterOffsetX:Float
```

The X subpixel jitter of the projection, in pixels.

### jitterOffsetY

```haxe
var jitterOffsetY:Float
```

The Y subpixel jitter of the projection, in pixels.

### mvecScaleX

```haxe
var mvecScaleX:Float
```

The X scale converting the motion vectors to pixels.

### mvecScaleY

```haxe
var mvecScaleY:Float
```

The Y scale converting the motion vectors to pixels.

### cameraPos

```haxe
var cameraPos:h3d.Vector
```

The camera position.

### cameraUp

```haxe
var cameraUp:h3d.Vector
```

The camera up direction.

### cameraRight

```haxe
var cameraRight:h3d.Vector
```

The camera right direction.

### cameraFwd

```haxe
var cameraFwd:h3d.Vector
```

The camera forward direction.

### cameraNear

```haxe
var cameraNear:Float
```

The camera near plane distance.

### cameraFar

```haxe
var cameraFar:Float
```

The camera far plane distance.

### cameraFOV

```haxe
var cameraFOV:Float
```

The camera vertical field of view, in radians.

### cameraAspectRatio

```haxe
var cameraAspectRatio:Float
```

The camera aspect ratio.

### motionVectorsInvalidValue

```haxe
var motionVectorsInvalidValue:Float
```

The value of the motion vectors where they are invalid.

### depthInverted

```haxe
var depthInverted:Bool
```

Tells if the depth is inverted (`1` near, `0` far).

### cameraMotionIncluded

```haxe
var cameraMotionIncluded:Bool
```

Tells if the motion vectors include the camera motion.

### reset

```haxe
var reset:Bool
```

Resets the history of the upscaler (after a camera cut).

### orthographicProjection

```haxe
var orthographicProjection:Bool
```

Tells if the projection is orthographic.

### motionVectorsDilated

```haxe
var motionVectorsDilated:Bool
```

Tells if the motion vectors are dilated.

### motionVectorsJittered

```haxe
var motionVectorsJittered:Bool
```

Tells if the motion vectors include the jitter.

### colorBufferHDR

```haxe
var colorBufferHDR:Bool
```

Tells if the color is in HDR.

### autoExposure

```haxe
var autoExposure:Bool
```

Lets the upscaler compute the exposure.
