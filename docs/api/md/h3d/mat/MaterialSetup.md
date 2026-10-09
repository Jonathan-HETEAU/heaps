# h3d.mat.MaterialSetup

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/MaterialSetup.hx`](../../../../../h3d/mat/MaterialSetup.hx)

Subclasses: [`h3d.mat.PbrMaterialSetup`](PbrMaterialSetup.md)

Defines the rendering setup: which renderer, light system and material class are used by the scenes and models.

The active setup is `MaterialSetup.current`, used when a `Scene` is created and when models are loaded.
The default setup uses the forward renderer and `Material`; `PbrMaterialSetup` uses the PBR renderer.

## Constructor

### new

```haxe
function new(name:String):Void
```

Creates a setup with the given name.

## Static variables

### current

```haxe
static var current:MaterialSetup
```

The active setup. Change it before creating the scenes (see `PbrMaterialSetup.set`).

## Variables

### name

```haxe
var name(default, null):String
```

The setup name, used to store the material properties per setup (see `MaterialDatabase`).

### displayName

```haxe
var displayName(default, null):String
```

An optional name displayed by tools.

## Methods

### createRenderer

```haxe
function createRenderer():h3d.scene.Renderer
```

Creates the renderer of a new scene (`h3d.scene.fwd.Renderer` by default).

### createLightSystem

```haxe
function createLightSystem():h3d.scene.LightSystem
```

Creates the light system of a new scene (`h3d.scene.fwd.LightSystem` by default).

### createMaterial

```haxe
function createMaterial():Material
```

Creates a new material of the class used by this setup.

### getDefaults

```haxe
function getDefaults(?kind:String):Any
```

Returns the default material properties for the given kind of object (for instance `"particles3D"` or `"ui"`).

### loadProps

```haxe
function loadProps(v:Dynamic):Any
```

Converts saved properties to the material properties of this setup.

### loadMaterialProps

```haxe
function loadMaterialProps(material:Material):Null<Any>
```

Returns the saved properties of `material` for this setup, or `null`.

### saveMaterialProps

```haxe
function saveMaterialProps(material:Material, ?defaultProps:Any):Void
```

Saves the properties of `material` for this setup.

### customMeshInit

```haxe
function customMeshInit(mesh:h3d.scene.Mesh):Void
```

Can be used to perform custom mesh initialization such as computing extra buffers
when loading it from HSD or displaying it in tools.
