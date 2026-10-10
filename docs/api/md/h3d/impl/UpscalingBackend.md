# h3d.impl.UpscalingBackend

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

The base class of the implementations of an upscaling technology (DLSS, FSR) for a driver. Its methods do nothing: each backend overrides them.

## Constructor

### new

```haxe
function new(provider:UpscalingProvider):Void
```

Creates the backend.

## Variables

### provider

```haxe
var provider(default, null):UpscalingProvider
```

The technology of the backend.

### wanted

```haxe
var wanted(default, null):EnumFlags<UpscalingFeature>
```

The features requested.

### supported

```haxe
var supported(default, null):EnumFlags<UpscalingFeature>
```

The features supported by the hardware.

## Methods

### beforeCreateDevice

```haxe
function beforeCreateDevice():Void
```

Called by the driver before the device is created.

### afterCreateDevice

```haxe
function afterCreateDevice():Void
```

Called by the driver after the device is created.

### release

```haxe
function release(unused:EnumFlags<UpscalingFeature>):Void
```

Releases the resources of the unused features.

### afterCreateQueue

```haxe
function afterCreateQueue():Void
```

Called by the driver after the command queue is created.

### afterCreateSwapChain

```haxe
function afterCreateSwapChain():Void
```

Called by the driver after the swap chain is created.

### beginFrame

```haxe
function beginFrame():Void
```

Called by the driver at the start of the frame.

### begin

```haxe
function begin():Void
```

Called by the driver when the frame commands start.

### beforePresent

```haxe
function beforePresent():Void
```

Called by the driver before the frame is presented.

### beforeQueuePresent

```haxe
function beforeQueuePresent():Void
```

Called by the driver before the present is queued.

### afterQueuePresent

```haxe
function afterQueuePresent():Void
```

Called by the driver after the present is queued.

### beforeResize

```haxe
function beforeResize():Void
```

Called by the driver before the swap chain is resized.

### releaseResizeResources

```haxe
function releaseResizeResources():Void
```

Called by the driver to release the resources that depend on the swap chain size.

### afterResize

```haxe
function afterResize():Void
```

Called by the driver after the swap chain is resized.

### dispose

```haxe
function dispose():Void
```

Releases the resources.

### isAvailable

```haxe
function isAvailable(f:UpscalingFeature):Bool
```

Tells if the feature is available.

### getName

```haxe
function getName(f:UpscalingFeature):String
```

Returns the name of the implementation of the feature.

### getStatus

```haxe
function getStatus(f:UpscalingFeature):String
```

Returns the status of the feature, for debugging.

### debug

```haxe
function debug(f:UpscalingFeature):String
```

Returns debug information on the feature.

### getRenderSize

```haxe
function getRenderSize(mode:UpscalingMode, targetWidth:Int, targetHeight:Int):UpscalingSettings
```

Returns the render resolution of the upscaling mode, for the output size.

### upscale

```haxe
function upscale(inputs:UpscalingInputs, params:UpscalingParams, mode:UpscalingMode):Void
```

Upscales the inputs.

### releaseUpscaler

```haxe
function releaseUpscaler():Void
```

Releases the resources of the upscaler.

### setFrameGenMode

```haxe
function setFrameGenMode(mode:FrameGenMode, numFramesToGenerate:Int, releaseResources:Bool):Bool
```

Sets the frame generation mode. Returns `false` if not supported.

### getFrameGenMode

```haxe
function getFrameGenMode():FrameGenMode
```

Returns the frame generation mode.

### getFrameGenSettings

```haxe
function getFrameGenSettings():FrameGenSettings
```

Returns the frame generation state.

### prepareFrameGen

```haxe
function prepareFrameGen(inputs:UpscalingInputs, params:UpscalingParams):Void
```

Provides the inputs of the frame generation for the frame.

### setFrameGenUI

```haxe
function setFrameGenUI(hudless:h3d.mat.Texture, ui:h3d.mat.Texture):Void
```

Provides the frame without UI and the UI texture to the frame generation.

### composesFrameGenUI

```haxe
function composesFrameGenUI():Bool
```

Tells if the frame generation composes the UI texture itself.

### getHudlessBufferCount

```haxe
function getHudlessBufferCount():Int
```

Returns the number of hudless buffers needed.

### setLowLatencyMode

```haxe
function setLowLatencyMode(mode:LowLatencyMode, frameLimitUs:Int):Bool
```

Sets the low latency mode, with an optional frame duration limit in microseconds. Returns `false` if not supported.

### lowLatencySleep

```haxe
function lowLatencySleep():Void
```

Waits to reduce the latency, at the start of the frame.

### latencyMarker

```haxe
function latencyMarker(m:LatencyMarker):Void
```

Reports a point of the frame to the low latency technology.

### isFlashIndicatorDriverControlled

```haxe
function isFlashIndicatorDriverControlled():Bool
```

Tells if the latency flash indicator is controlled by the graphics driver.
