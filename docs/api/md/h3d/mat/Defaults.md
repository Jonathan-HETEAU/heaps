# h3d.mat.Defaults

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Defaults.hx`](../../../../../h3d/mat/Defaults.hx)

Global defaults of the materials.

## Static variables

### defaultKillAlphaThreshold

```haxe
static var defaultKillAlphaThreshold:Float
```

The default alpha threshold under which pixels are discarded when `killAlpha` is enabled on a texture shader.

### loadingTextureColor

```haxe
static var loadingTextureColor:Int
```

The color (`0xAARRGGBB`) of the placeholder used by the drivers for textures not loaded yet or disposed.

### shadowShader

```haxe
static var shadowShader(get, set):hxsl.Shader
```

The shader receiving the shadows, added to the materials which receive shadows (`h3d.shader.Shadow` by default).

## Static methods

### makeVolumeDecal

```haxe
static dynamic function makeVolumeDecal(bounds:h3d.col.Bounds):hxsl.Shader
```

Creates the shader of a volume decal of the given bounds. Can be replaced to use another decal shader.
