# h3d.impl.UpscalingBackend

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

## Constructor

### new

```haxe
function new(provider:UpscalingProvider):Void
```

## Variables

### provider

```haxe
var provider(default, null):UpscalingProvider
```

### wanted

```haxe
var wanted(default, null):EnumFlags<UpscalingFeature>
```

### supported

```haxe
var supported(default, null):EnumFlags<UpscalingFeature>
```

## Methods

### beforeCreateDevice

```haxe
function beforeCreateDevice():Void
```

### afterCreateDevice

```haxe
function afterCreateDevice():Void
```

### release

```haxe
function release(unused:EnumFlags<UpscalingFeature>):Void
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

### isAvailable

```haxe
function isAvailable(f:UpscalingFeature):Bool
```

### getName

```haxe
function getName(f:UpscalingFeature):String
```

### getStatus

```haxe
function getStatus(f:UpscalingFeature):String
```

### debug

```haxe
function debug(f:UpscalingFeature):String
```

### getRenderSize

```haxe
function getRenderSize(mode:UpscalingMode, targetWidth:Int, targetHeight:Int):UpscalingSettings
```

### upscale

```haxe
function upscale(inputs:UpscalingInputs, params:UpscalingParams, mode:UpscalingMode):Void
```

### releaseUpscaler

```haxe
function releaseUpscaler():Void
```

### setFrameGenMode

```haxe
function setFrameGenMode(mode:FrameGenMode, numFramesToGenerate:Int, releaseResources:Bool):Bool
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

### setFrameGenUI

```haxe
function setFrameGenUI(hudless:h3d.mat.Texture, ui:h3d.mat.Texture):Void
```

### composesFrameGenUI

```haxe
function composesFrameGenUI():Bool
```

### getHudlessBufferCount

```haxe
function getHudlessBufferCount():Int
```

### setLowLatencyMode

```haxe
function setLowLatencyMode(mode:LowLatencyMode, frameLimitUs:Int):Bool
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
