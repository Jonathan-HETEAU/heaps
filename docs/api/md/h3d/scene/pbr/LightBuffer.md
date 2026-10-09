# h3d.scene.pbr.LightBuffer

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/LightBuffer.hx`](../../../../../../h3d/scene/pbr/LightBuffer.hx)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### defaultForwardShader

```haxe
var defaultForwardShader:h3d.shader.pbr.DefaultForward
```

### shadowHandles

```haxe
var shadowHandles:Array<h3d.mat.TextureHandle>
```

### tightShadowSamplers

```haxe
var tightShadowSamplers:Bool
```

### clusterMaxDistance

```haxe
var clusterMaxDistance:Float
```

### enableClustering

```haxe
var enableClustering:Bool
```

### enableClusterHZB

```haxe
var enableClusterHZB:Bool
```

## Methods

### setBuffers

```haxe
function setBuffers(s:h3d.shader.pbr.DefaultForward):Void
```

### sortLights

```haxe
function sortLights(ctx:h3d.scene.RenderContext):Array<Light>
```

### fillLights

```haxe
function fillLights(lights:Array<Light>, shadows:Bool):Void
```

### sync

```haxe
function sync(ctx:h3d.scene.RenderContext):Void
```

### createClusterDebug

```haxe
function createClusterDebug(?parent:h3d.scene.Object):h3d.scene.Graphics
```

### dispose

```haxe
function dispose():Void
```
