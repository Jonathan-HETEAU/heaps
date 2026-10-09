# h3d.mat.Material

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Material.hx`](../../../../../h3d/mat/Material.hx)

Extends: [`h3d.mat.BaseMaterial`](BaseMaterial.md) → [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md)

Subclasses: [`h3d.mat.PbrMaterial`](PbrMaterial.md)

The standard material of the 3D meshes, created by `MaterialSetup.current.createMaterial()` or `Material.create`.

It provides shortcuts to the common settings: `texture`, `normalMap`, `color`, `blendMode`, `shadows`...
Shaders can be added to `mainPass` for custom effects.

```haxe
var mat = h3d.mat.Material.create(hxd.Res.wood.toTexture());
mat.shadows = true;
var mesh = new h3d.scene.Mesh(prim, mat, s3d);
```

## Static methods

### create

```haxe
static function create(?tex:Texture):Material
```

Shortcut to create a material for the current renderer setup using the specific diffuse texture.

## Variables

### model

```haxe
var model:hxd.res.Resource
```

The model resource the material was loaded from, used to store its properties (see `MaterialDatabase`).

### shadows

```haxe
var shadows(get, set):Bool
```

Shortcut to set both `castShadows` and `receiveShadows`. Reads `true` only when both are enabled.

### castShadows

```haxe
var castShadows(default, set):Bool
```

Casts shadows: adds a `"shadow"` pass to the material.

### receiveShadows

```haxe
var receiveShadows(default, set):Bool
```

Receives shadows: adds the shadow shader (`Defaults.shadowShader`) to the main pass.

### staticShadows

```haxe
var staticShadows(default, set):Bool
```

Marks the shadow pass as static: it is only drawn when the static shadows are computed (see `Scene.computeStatic`).

### textureShader

```haxe
var textureShader(default, null):h3d.shader.Texture
```

The shader applying `texture`, or `null` if there is no texture.

### specularShader

```haxe
var specularShader(default, null):h3d.shader.SpecularTexture
```

The shader applying `specularTexture`, or `null` if there is none.

### texture

```haxe
var texture(get, set):Texture
```

The diffuse (albedo) texture. Setting it adds or removes the texture shader.

### specularTexture

```haxe
var specularTexture(get, set):Texture
```

The specular texture. Setting it adds or removes the specular shader.

### normalMap

```haxe
var normalMap(get, set):Texture
```

The normal map texture. Setting it adds or removes the normal map shader (the mesh needs tangents).

### color

```haxe
var color(get, set):h3d.Vector4
```

The color multiplied with the texture, `(1, 1, 1, 1)` by default.

### specularAmount

```haxe
var specularAmount(get, set):Float
```

The specular intensity (forward renderer).

### specularPower

```haxe
var specularPower(get, set):Float
```

The specular power: higher values give smaller highlights (forward renderer).

### blendMode

```haxe
var blendMode(default, set):BlendMode
```

The blend mode of the main pass. It also selects the pass name: `None` draws in `"default"`, `Alpha` in `"alpha"`
(sorted back to front) and the additive modes in `"additive"` (without depth write).

## Methods

### clone

```haxe
override function clone(?m:BaseMaterial):BaseMaterial
```

### getDefaultModelProps

```haxe
function getDefaultModelProps():Any
```

This is called after a model has been loaded and the material textures setup.
It will build the properties for this material, loading them from storage if necessary

### getDefaultProps

```haxe
override function getDefaultProps(?type:String):Any
```

### refreshProps

```haxe
override function refreshProps():Void
```

## Inherited members

- from [`h3d.mat.BaseMaterial`](BaseMaterial.md): `name`, `mainPass`, `addPass`, `removePass`, `getPasses`, `getPass`, `allocPass`, `clone`
- from [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
