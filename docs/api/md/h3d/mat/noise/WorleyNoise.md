# h3d.mat.noise.WorleyNoise

**class** · package [`h3d.mat.noise`](README.md) · source [`h3d/mat/noise/WorleyNoise.hx`](../../../../../../h3d/mat/noise/WorleyNoise.hx)

Generates tiling 3D Worley (cellular) noise textures, used for instance for volumetric clouds or fog.

## Static methods

### generate

```haxe
static function generate(?texRes:Int = 64, ?gridSize:Int = 5, ?seed:Int = 0):h3d.mat.Texture3D
```

Generates a `texRes`^3 3D texture (`R8` format) where each pixel stores the distance to the nearest of a set of random
points (one per cell of a `gridSize`^3 grid), computed on the CPU. The noise tiles in all directions.

### generateOctave

```haxe
static function generateOctave(engine:h3d.Engine, size:Int, gridSize:Int, octaves:Int, ?seed:Int = 0):h3d.mat.Texture3D
```

Generates a `size`^3 3D texture combining `octaves` Worley noises of increasing frequency, starting with `gridSize` cells.
