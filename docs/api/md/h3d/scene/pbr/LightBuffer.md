# h3d.scene.pbr.LightBuffer

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/LightBuffer.hx`](../../../../../../h3d/scene/pbr/LightBuffer.hx)

Packs the lights of the frame in a GPU buffer read by the forward shader (`h3d.shader.pbr.DefaultForward`), so that
the objects drawn in the forward passes (such as transparent objects) are lit by the PBR lights.

When compute shaders are available, the lights can be sorted into a grid of clusters covering the camera view
(16x9 tiles and 24 depth slices), so that each pixel only evaluates the lights affecting its cluster.
A limited number of lights of each kind can cast shadows in the forward passes.

## Constructor

### new

```haxe
function new():Void
```

Creates the light buffer.

## Variables

### defaultForwardShader

```haxe
var defaultForwardShader:h3d.shader.pbr.DefaultForward
```

The forward lighting shader added to the forward objects which do not already have one.

### shadowHandles

```haxe
var shadowHandles:Array<h3d.mat.TextureHandle>
```

The bindless handles of the shadow maps used in the frame.

### tightShadowSamplers

```haxe
var tightShadowSamplers:Bool
```

If `true` (default on JavaScript), the forward shader declares only the shadow samplers used by the current lights
instead of the maximum count. This saves texture units but compiles more shader variants. Ignored with bindless.

### clusterMaxDistance

```haxe
var clusterMaxDistance:Float
```

If positive, the distance covered by the clusters; farther objects use the last depth slice.
Otherwise the clusters cover the camera range up to `zFar`.

### enableClustering

```haxe
var enableClustering:Bool
```

Enables the light clustering when compute shaders are supported.

### enableClusterHZB

```haxe
var enableClusterHZB:Bool
```

Uses the hierarchical depth buffer to skip the clusters and lights hidden by the opaque geometry.

## Methods

### setBuffers

```haxe
function setBuffers(s:h3d.shader.pbr.DefaultForward):Void
```

Copies the light buffer and counts of the frame to a custom forward shader `s`.

### sortLights

```haxe
function sortLights(ctx:h3d.scene.RenderContext):Array<Light>
```

Returns the lights of the frame enabled for the forward passes (see `Light.enableForward`) and inside the camera
frustum, sorted with the directional lights first, then by distance to the camera target.

### fillLights

```haxe
function fillLights(lights:Array<Light>, shadows:Bool):Void
```

Writes `lights` into the light buffer, within the buffer size and shadow limits.
- **param** `shadows` If `false`, the lights are written without their shadows.

### sync

```haxe
function sync(ctx:h3d.scene.RenderContext):Void
```

Updates the light buffer and the clusters for the current frame. Called by the PBR renderer before the forward passes.

### createClusterDebug

```haxe
function createClusterDebug(?parent:h3d.scene.Object):h3d.scene.Graphics
```

Debug: draws the clusters of the last frame as lines, colored by their number of lights.
Returns `null` if no clusters were built.

### dispose

```haxe
function dispose():Void
```

Releases the GPU buffers.
