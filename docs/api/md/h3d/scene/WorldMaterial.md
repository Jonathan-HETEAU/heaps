# h3d.scene.WorldMaterial

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.World` · source [`h3d/scene/World.hx`](../../../../../h3d/scene/World.hx)

A material of a `World` model: the geometries sharing the same material bits are merged in the same mesh.
Textures are packed in shared big textures (`h3d.mat.BigTexture`).

## Constructor

### new

```haxe
function new():Void
```

Creates a material with lights and shadows enabled.

## Variables

### bits

```haxe
var bits:Int
```

A key combining the material settings, computed by `updateBits`. Geometries with the same bits are merged.

### t

```haxe
var t:h3d.mat.BigTextureElement
```

The diffuse texture area in the big texture.

### spec

```haxe
var spec:h3d.mat.BigTextureElement
```

The specular texture area, if `World.enableSpecular` is set.

### normal

```haxe
var normal:h3d.mat.BigTextureElement
```

The normal map area, if `World.enableNormalMaps` is set.

### mat

```haxe
var mat:hxd.fmt.hmd.Material
```

The source material of the model.

### culling

```haxe
var culling:Bool
```

Enables back face culling.

### blend

```haxe
var blend:h3d.mat.BlendMode
```

The blend mode (`Alpha` by default, `None` for jpg textures).

### killAlpha

```haxe
var killAlpha:Null<Float>
```

If set, pixels with an alpha below this threshold are discarded.

### emissive

```haxe
var emissive:Null<Float>
```

If set, the emissive intensity of the material.

### stencil

```haxe
var stencil:Null<Int>
```

If set, the stencil reference value written by the material.

### lights

```haxe
var lights:Bool
```

Enables lighting.

### shadows

```haxe
var shadows:Bool
```

Enables shadow casting and receiving.

### shaders

```haxe
var shaders:Array<hxsl.Shader>
```

Additional shaders of the material.

### name

```haxe
var name:String
```

The material name, used as mesh name.

## Methods

### clone

```haxe
function clone():WorldMaterial
```

Returns a copy of the material (the texture areas are shared).

### updateBits

```haxe
function updateBits():Void
```

Recomputes `bits` after changing the settings.
