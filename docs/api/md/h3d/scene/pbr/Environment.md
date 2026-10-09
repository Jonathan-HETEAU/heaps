# h3d.scene.pbr.Environment

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/Environment.hx`](../../../../../../h3d/scene/pbr/Environment.hx)

The environment lighting of the PBR renderer (image based lighting): the sky texture and the diffuse and specular
lighting textures computed from it, used for the indirect lighting and the reflections.

```haxe
var env = new h3d.scene.pbr.Environment(hxd.Res.sky.toTexture());
env.compute();
cast(s3d.renderer, h3d.scene.pbr.Renderer).env = env;
```

## Constructor

### new

```haxe
function new(src:h3d.mat.Texture, ?diffSize:Int = 64, ?specSize:Int = 512, ?sampleBits:Int = 12):Void
```

Creates an environment from `src`, which can be a cube map already prepared or a 2D equirectangular map that
will be turned into a cube map. Call `compute` to build the lighting textures.
- **param** `diffSize` The size of the diffuse irradiance cube map faces.
- **param** `specSize` The size of the specular cube map faces.
- **param** `sampleBits` The number of samples used to compute the textures is `2^sampleBits`.

## Static methods

### getDefaultLUT

```haxe
static function getDefaultLUT():h3d.mat.Texture
```

Returns the BRDF lookup texture, computing it the first time.

### equiToCube

```haxe
static function equiToCube(source:h3d.mat.Texture, ?threshold:Float = 1.0, ?scale:Float = 1.0):h3d.mat.Texture
```

Converts an equirectangular texture (twice as wide as high) to a cube map. Cube textures are returned unchanged.
- **param** `threshold` The color value above which `scale` is applied.
- **param** `scale` The multiplier applied to the colors above `threshold`.

### getDefault

```haxe
static function getDefault():Environment
```

Returns the default environment embedded in Heaps, with precomputed textures.

## Variables

### sampleBits

```haxe
var sampleBits:Int
```

The number of samples used by `compute` is `2^sampleBits`.

### diffSize

```haxe
var diffSize:Int
```

The size of the diffuse irradiance cube map faces.

### specSize

```haxe
var specSize:Int
```

The size of the specular cube map faces.

### specLevels

```haxe
var specLevels:Int
```

The number of mip levels of the specular cube map used for the roughness levels. Computed by `compute`.

### ignoredSpecLevels

```haxe
var ignoredSpecLevels:Int
```

The number of smallest mip levels of the specular cube map not used for roughness levels.

### hdrMax

```haxe
var hdrMax:Float
```

The maximum color value of the source texture used by `compute`, which limits the fireflies caused by very bright pixels.

### source

```haxe
var source:h3d.mat.Texture
```

The source texture: a cube map or an equirectangular (2:1) panorama.

### env

```haxe
var env(get, null):h3d.mat.Texture
```

The source as a cube map, converted from `source` on first access if needed.

### lut

```haxe
var lut(get, null):h3d.mat.Texture
```

The BRDF lookup texture, shared by all environments.

### diffuse

```haxe
var diffuse:h3d.mat.Texture
```

The diffuse irradiance cube map, computed by `compute`.

### specular

```haxe
var specular:h3d.mat.Texture
```

The prefiltered specular cube map, with one mip level per roughness level, computed by `compute`.

### power

```haxe
var power:Float
```

The intensity of the environment lighting is `power * power`. With `0` the environment does not light the scene.

### rotation

```haxe
var rotation:Float
```

The rotation of the environment around the Z axis, in radians.

## Methods

### dispose

```haxe
function dispose():Void
```

Releases the textures of the environment.

### compute

```haxe
function compute():Void
```

Computes the `diffuse` and `specular` lighting textures from the source. This is expensive: do it once, at load time.
