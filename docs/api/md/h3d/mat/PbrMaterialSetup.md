# h3d.mat.PbrMaterialSetup

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/PbrMaterialSetup.hx`](../../../../../h3d/mat/PbrMaterialSetup.hx)

Extends: [`h3d.mat.MaterialSetup`](MaterialSetup.md)

## Constructor

### new

```haxe
function new(?name:String = "PBR"):Void
```

## Static methods

### set

```haxe
static function set():Void
```

## Methods

### createRenderer

```haxe
override function createRenderer():h3d.scene.Renderer
```

### createLightSystem

```haxe
override function createLightSystem():h3d.scene.pbr.LightSystem
```

### createMaterial

```haxe
override function createMaterial():Material
```

### gloss

```haxe
function gloss():Bool
```

## Inherited members

- from [`h3d.mat.MaterialSetup`](MaterialSetup.md): `name`, `displayName`, `createRenderer`, `createLightSystem`, `createMaterial`, `getDefaults`, `loadProps`, `loadMaterialProps`, `saveMaterialProps`, `customMeshInit`
