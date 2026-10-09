# h3d.impl.Upscaling

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

## Constructor

### new

```haxe
function new(driver:Driver, backends:Array<UpscalingBackend>):Void
```

## Static variables

### ENABLED

```haxe
static var ENABLED:Bool
```

### UPSCALER

```haxe
static var UPSCALER:UpscalingProvider
```

### FRAME_GEN

```haxe
static var FRAME_GEN:Bool
```

### FRAME_GEN_PROVIDER

```haxe
static var FRAME_GEN_PROVIDER:UpscalingProvider
```

### LOW_LATENCY

```haxe
static var LOW_LATENCY:Bool
```

### DEBUG

```haxe
static var DEBUG:Bool
```

### PRIORITY

```haxe
static var PRIORITY:Array<UpscalingProvider>
```

## Methods

### isSupported

```haxe
function isSupported(f:UpscalingFeature):Bool
```

### getName

```haxe
function getName(f:UpscalingFeature):String
```

### getUpscalers

```haxe
function getUpscalers():Array<UpscalingProvider>
```

### getUpscaler

```haxe
function getUpscaler():UpscalingProvider
```

### setUpscaler

```haxe
function setUpscaler(provider:UpscalingProvider):Bool
```

### getRenderSize

```haxe
function getRenderSize(mode:UpscalingMode, targetWidth:Int, targetHeight:Int):UpscalingSettings
```

### upscale

```haxe
function upscale(inputs:UpscalingInputs, params:UpscalingParams, mode:UpscalingMode):Void
```

### setFrameGenMode

```haxe
function setFrameGenMode(mode:FrameGenMode, ?numFramesToGenerate:Int = 1, ?releaseResources:Bool = false):Bool
```

### getFrameGenMode

```haxe
function getFrameGenMode():FrameGenMode
```

### getFrameGenSettings

```haxe
function getFrameGenSettings():FrameGenSettings
```

### prepareFrameGen

```haxe
function prepareFrameGen(inputs:UpscalingInputs, params:UpscalingParams):Void
```

### setFrameGenUIMode

```haxe
function setFrameGenUIMode(mode:FrameGenUIMode):Void
```

### getFrameGenUIMode

```haxe
function getFrameGenUIMode():FrameGenUIMode
```

### markFrameGenHudless

```haxe
function markFrameGenHudless(?source:h3d.mat.Texture):Void
```

### getFrameGenUITarget

```haxe
function getFrameGenUITarget():h3d.mat.Texture
```

### compositeFrameGenUI

```haxe
function compositeFrameGenUI():Void
```

### setLowLatencyMode

```haxe
function setLowLatencyMode(mode:LowLatencyMode, ?frameLimitUs:Int = 0):Bool
```

### getLowLatencyMode

```haxe
function getLowLatencyMode():LowLatencyMode
```

### lowLatencySleep

```haxe
function lowLatencySleep():Void
```

### latencyMarker

```haxe
function latencyMarker(m:LatencyMarker):Void
```

### isFlashIndicatorDriverControlled

```haxe
function isFlashIndicatorDriverControlled():Bool
```

### debug

```haxe
function debug(f:UpscalingFeature):String
```

### beforeCreateDevice

```haxe
function beforeCreateDevice():Void
```

### afterCreateDevice

```haxe
function afterCreateDevice():Void
```

### afterCreateQueue

```haxe
function afterCreateQueue():Void
```

### afterCreateSwapChain

```haxe
function afterCreateSwapChain():Void
```

### beginFrame

```haxe
function beginFrame():Void
```

### begin

```haxe
function begin():Void
```

### beforePresent

```haxe
function beforePresent():Void
```

### beforeQueuePresent

```haxe
function beforeQueuePresent():Void
```

### afterQueuePresent

```haxe
function afterQueuePresent():Void
```

### beforeResize

```haxe
function beforeResize():Void
```

### releaseResizeResources

```haxe
function releaseResizeResources():Void
```

### afterResize

```haxe
function afterResize():Void
```

### dispose

```haxe
function dispose():Void
```
