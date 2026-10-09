# h3d.pass.Shadows

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Shadows.hx`](../../../../../h3d/pass/Shadows.hx)

Extends: [`h3d.pass.Output`](Output.md)

Subclasses: [`h3d.pass.CascadeShadowMap`](CascadeShadowMap.md), [`h3d.pass.CubeShadowMap`](CubeShadowMap.md), [`h3d.pass.DirShadowMap`](DirShadowMap.md), [`h3d.pass.ProjectedShadowMap`](ProjectedShadowMap.md)

The shadow map of a light: renders the `"shadow"` pass of the shadow casters from the light point of view, and provides
the shader applying the shadows to the lit objects. Each light owns one (see `h3d.scene.pbr.Light.shadows`).

Shadows are disabled until `mode` is set:

```haxe
light.shadows.mode = Dynamic;
light.shadows.size = 2048;
light.shadows.samplingKind = PCF;
```

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

Creates the shadow map of `light`.

## Variables

### enabled

```haxe
var enabled(default, set):Bool
```

Enables the shadows of the light.

### mode

```haxe
var mode(default, set):RenderMode
```

How the shadows are computed (`None` by default). Not all lights support all modes.

### size

```haxe
var size(default, set):Int
```

The size of the shadow map texture, in pixels.

### shader

```haxe
var shader(default, null):hxsl.Shader
```

The shader applying the shadows to the lit objects.

### blur

```haxe
var blur:Blur
```

The blur applied to the shadow map (used by soft shadow techniques).

### samplingKind

```haxe
var samplingKind:ShadowSamplingKind
```

How the shadow map is sampled.

### power

```haxe
var power:Float
```

The sharpness of the exponential shadows (`ESM`).

### bias

```haxe
var bias:Float
```

The depth bias subtracted when comparing depths, to avoid shadow acne.

### pcfScale

```haxe
var pcfScale:Float
```

The radius of the `PCF` sampling, in pixels.

### debug

```haxe
var debug:Bool
```

Draws the shadow camera bounds (debug).

## Methods

### dispose

```haxe
override function dispose():Void
```

### getShadowView

```haxe
function getShadowView():h3d.Matrix
```

Returns the view matrix of the shadow camera.

### getShadowProj

```haxe
function getShadowProj():h3d.Matrix
```

Returns the projection matrix of the shadow camera.

### getShadowViewProj

```haxe
function getShadowViewProj():h3d.Matrix
```

Returns the view-projection matrix of the shadow camera.

### getShadowTex

```haxe
function getShadowTex():h3d.mat.Texture
```

Returns the shadow map texture of the last frame.

### loadStaticData

```haxe
function loadStaticData(bytes:Bytes):Bool
```

Loads baked static shadow data. Returns `false` if not supported or invalid.

### saveStaticData

```haxe
function saveStaticData():Bytes
```

Returns the static shadow data to bake, or `null`.

### computeStatic

```haxe
function computeStatic(passes:PassList):Void
```

Renders the static shadows with the given shadow casters.

### hasStaticShadow

```haxe
function hasStaticShadow():Bool
```

Tells if the mode uses static shadows (`Static` or `Mixed`).

### needStaticUpdate

```haxe
function needStaticUpdate():Void
```

* Triggers update of static part of shadows (if any).

## Inherited members

- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
