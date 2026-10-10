# h3d.impl.Upscaling

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

Selects and drives the upscaling technologies of the driver: upscaling of a lower resolution rendering (DLSS, FSR), frame generation, and low latency. Accessed with `Driver.upscaling`.
The static settings must be set before the engine is created.

## Constructor

### new

```haxe
function new(driver:Driver, backends:Array<UpscalingBackend>):Void
```

Creates the upscaling of the driver with the available backends.

## Static variables

### ENABLED

```haxe
static var ENABLED:Bool
```

Enables the upscaling technologies.

### UPSCALER

```haxe
static var UPSCALER:UpscalingProvider
```

The upscaler to use, or `AUTO` to use the first available one of `PRIORITY`.

### FRAME_GEN

```haxe
static var FRAME_GEN:Bool
```

Enables the frame generation.

### FRAME_GEN_PROVIDER

```haxe
static var FRAME_GEN_PROVIDER:UpscalingProvider
```

The frame generation technology to use, or `AUTO`.

### LOW_LATENCY

```haxe
static var LOW_LATENCY:Bool
```

Enables the low latency technology.

### DEBUG

```haxe
static var DEBUG:Bool
```

Enables the debug mode of the backends.

### PRIORITY

```haxe
static var PRIORITY:Array<UpscalingProvider>
```

The order in which the technologies are preferred.

## Methods

### isSupported

```haxe
function isSupported(f:UpscalingFeature):Bool
```

Tells if the feature is supported.

### getName

```haxe
function getName(f:UpscalingFeature):String
```

Returns the name of the implementation of the feature, or `null`.

### getUpscalers

```haxe
function getUpscalers():Array<UpscalingProvider>
```

Returns the available upscalers.

### getUpscaler

```haxe
function getUpscaler():UpscalingProvider
```

Returns the current upscaler, or `null`.

### setUpscaler

```haxe
function setUpscaler(provider:UpscalingProvider):Bool
```

Changes the upscaler. Returns `false` if it is not available.

### getRenderSize

```haxe
function getRenderSize(mode:UpscalingMode, targetWidth:Int, targetHeight:Int):UpscalingSettings
```

Returns the render resolution of the upscaling mode for the output size, or `null` if there is no upscaler.

### upscale

```haxe
function upscale(inputs:UpscalingInputs, params:UpscalingParams, mode:UpscalingMode):Void
```

Upscales the inputs with the current upscaler.

### setFrameGenMode

```haxe
function setFrameGenMode(mode:FrameGenMode, ?numFramesToGenerate:Int = 1, ?releaseResources:Bool = false):Bool
```

Sets the frame generation mode (low latency is enabled with it). Returns `false` if not supported.

### getFrameGenMode

```haxe
function getFrameGenMode():FrameGenMode
```

Returns the frame generation mode.

### getFrameGenSettings

```haxe
function getFrameGenSettings():FrameGenSettings
```

Returns the frame generation state, or `null`.

### prepareFrameGen

```haxe
function prepareFrameGen(inputs:UpscalingInputs, params:UpscalingParams):Void
```

Provides the inputs of the frame generation for the frame.

### setFrameGenUIMode

```haxe
function setFrameGenUIMode(mode:FrameGenUIMode):Void
```

Sets how the UI is handled by the frame generation.

### getFrameGenUIMode

```haxe
function getFrameGenUIMode():FrameGenUIMode
```

Returns how the UI is handled by the frame generation.

### markFrameGenHudless

```haxe
function markFrameGenHudless(?source:h3d.mat.Texture):Void
```

In `HudLess` mode, records the current back buffer (or `source`) as the frame without UI. Call it before drawing the UI.

### getFrameGenUITarget

```haxe
function getFrameGenUITarget():h3d.mat.Texture
```

In `UITexture` mode, returns the texture to draw the UI into, or `null`.

### compositeFrameGenUI

```haxe
function compositeFrameGenUI():Void
```

In `UITexture` mode, composes the UI texture over the frame (unless the frame generation does it).

### setLowLatencyMode

```haxe
function setLowLatencyMode(mode:LowLatencyMode, ?frameLimitUs:Int = 0):Bool
```

Sets the low latency mode, with an optional frame duration limit in microseconds. Returns `false` if not supported.

### getLowLatencyMode

```haxe
function getLowLatencyMode():LowLatencyMode
```

Returns the low latency mode.

### lowLatencySleep

```haxe
function lowLatencySleep():Void
```

Waits to reduce the latency. Called at the start of the frame.

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

### debug

```haxe
function debug(f:UpscalingFeature):String
```

Returns debug information on the feature, including why it is not available.

### beforeCreateDevice

```haxe
function beforeCreateDevice():Void
```

Called by the driver before the device is created, and forwarded to the backends.

### afterCreateDevice

```haxe
function afterCreateDevice():Void
```

Called by the driver after the device is created, and forwarded to the backends.

### afterCreateQueue

```haxe
function afterCreateQueue():Void
```

Called by the driver after the command queue is created, and forwarded to the backends.

### afterCreateSwapChain

```haxe
function afterCreateSwapChain():Void
```

Called by the driver after the swap chain is created, and forwarded to the backends.

### beginFrame

```haxe
function beginFrame():Void
```

Called by the driver at the start of the frame, and forwarded to the backends.

### begin

```haxe
function begin():Void
```

Called by the driver when the frame commands start, and forwarded to the backends.

### beforePresent

```haxe
function beforePresent():Void
```

Called by the driver before the frame is presented, and forwarded to the backends.

### beforeQueuePresent

```haxe
function beforeQueuePresent():Void
```

Called by the driver before the present is queued, and forwarded to the backends.

### afterQueuePresent

```haxe
function afterQueuePresent():Void
```

Called by the driver after the present is queued, and forwarded to the backends.

### beforeResize

```haxe
function beforeResize():Void
```

Called by the driver before the swap chain is resized, and forwarded to the backends.

### releaseResizeResources

```haxe
function releaseResizeResources():Void
```

Called by the driver to release the resources that depend on the swap chain size, and forwarded to the backends.

### afterResize

```haxe
function afterResize():Void
```

Called by the driver after the swap chain is resized, and forwarded to the backends.

### dispose

```haxe
function dispose():Void
```

Releases the backends.
