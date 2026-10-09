# h3d.mat.Material

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Material.hx`](../../../../../h3d/mat/Material.hx)

Extends: [`h3d.mat.BaseMaterial`](BaseMaterial.md) → [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md)

Subclasses: [`h3d.mat.PbrMaterial`](PbrMaterial.md)

## Static methods

### create

```haxe
static function create(?tex:Texture):Material
```

## Variables

### model

```haxe
var model:hxd.res.Resource
```

### shadows

```haxe
var shadows(get, set):Bool
```

### castShadows

```haxe
var castShadows(default, set):Bool
```

### receiveShadows

```haxe
var receiveShadows(default, set):Bool
```

### staticShadows

```haxe
var staticShadows(default, set):Bool
```

### textureShader

```haxe
var textureShader(default, null):h3d.shader.Texture
```

### specularShader

```haxe
var specularShader(default, null):h3d.shader.SpecularTexture
```

### texture

```haxe
var texture(get, set):Texture
```

### specularTexture

```haxe
var specularTexture(get, set):Texture
```

### normalMap

```haxe
var normalMap(get, set):Texture
```

### color

```haxe
var color(get, set):h3d.Vector4
```

### specularAmount

```haxe
var specularAmount(get, set):Float
```

### specularPower

```haxe
var specularPower(get, set):Float
```

### blendMode

```haxe
var blendMode(default, set):BlendMode
```

## Methods

### clone

```haxe
override function clone(?m:BaseMaterial):BaseMaterial
```

### getDefaultModelProps

```haxe
function getDefaultModelProps():Any
```

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
