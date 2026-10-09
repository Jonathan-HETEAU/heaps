# h3d.mat.PbrMaterial

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/PbrMaterial.hx`](../../../../../h3d/mat/PbrMaterial.hx)

Extends: [`h3d.mat.Material`](Material.md) → [`h3d.mat.BaseMaterial`](BaseMaterial.md) → [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md)

The material of the PBR renderer (`MaterialSetup` `PbrMaterialSetup`). Its settings are given by its `PbrProps`
(usually loaded from the `materials.props` of the model, see `MaterialDatabase`).

## Constructor

### new

```haxe
function new(?texture:Texture):Void
```

## Methods

### loadProps

```haxe
override function loadProps(v:Dynamic):Any
```

### getDefaultProps

```haxe
override function getDefaultProps(?type:String):Any
```

### getDefaultModelProps

```haxe
override function getDefaultModelProps():Any
```

### refreshProps

```haxe
override function refreshProps():Void
```

### clone

```haxe
override function clone(?m:BaseMaterial):BaseMaterial
```

## Inherited members

- from [`h3d.mat.Material`](Material.md): `model`, `shadows`, `castShadows`, `receiveShadows`, `staticShadows`, `textureShader`, `specularShader`, `texture`, `specularTexture`, `normalMap`, `color`, `specularAmount`, `specularPower`, `blendMode`, `clone`, `getDefaultModelProps`, `getDefaultProps`, `refreshProps`
- from [`h3d.mat.BaseMaterial`](BaseMaterial.md): `name`, `mainPass`, `addPass`, `removePass`, `getPasses`, `getPass`, `allocPass`, `clone`
- from [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
