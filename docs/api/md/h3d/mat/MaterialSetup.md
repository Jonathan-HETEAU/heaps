# h3d.mat.MaterialSetup

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/MaterialSetup.hx`](../../../../../h3d/mat/MaterialSetup.hx)

Subclasses: [`h3d.mat.PbrMaterialSetup`](PbrMaterialSetup.md)

## Constructor

### new

```haxe
function new(name:String):Void
```

## Static variables

### current

```haxe
static var current:MaterialSetup
```

## Variables

### name

```haxe
var name(default, null):String
```

### displayName

```haxe
var displayName(default, null):String
```

## Methods

### createRenderer

```haxe
function createRenderer():h3d.scene.Renderer
```

### createLightSystem

```haxe
function createLightSystem():h3d.scene.LightSystem
```

### createMaterial

```haxe
function createMaterial():Material
```

### getDefaults

```haxe
function getDefaults(?kind:String):Any
```

### loadProps

```haxe
function loadProps(v:Dynamic):Any
```

### loadMaterialProps

```haxe
function loadMaterialProps(material:Material):Null<Any>
```

### saveMaterialProps

```haxe
function saveMaterialProps(material:Material, ?defaultProps:Any):Void
```

### customMeshInit

```haxe
function customMeshInit(mesh:h3d.scene.Mesh):Void
```
