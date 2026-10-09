# h3d.prim.ModelDatabase

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/ModelDatabase.hx`](../../../../../h3d/prim/ModelDatabase.hx)

Stores per-model settings (levels of detail, culling ratio, dynamic bones, collisions) in `model.props` JSON files.
A `model.props` file applies to its directory and subdirectories, with a `default` entry and per-model entries.
These settings are usually edited in Hide.

## Static variables

### FILE_NAME

```haxe
static var FILE_NAME:String
```

The name of the settings files.

### DEFAULT_CONFIG_ENTRY

```haxe
static var DEFAULT_CONFIG_ENTRY:String
```

The entry holding the default settings of a directory.

### LOD_CONFIG

```haxe
static var LOD_CONFIG:String
```

The field of the levels of detail screen ratios.

### CULLING_RATIO_CONFIG

```haxe
static var CULLING_RATIO_CONFIG:String
```

The field of the culling screen ratio.

### DYN_BONES_CONFIG

```haxe
static var DYN_BONES_CONFIG:String
```

The field of the dynamic bones settings.

### COLLIDE_CONFIG

```haxe
static var COLLIDE_CONFIG:String
```

The field of the collision settings.

### db

```haxe
static var db:Map<String, Dynamic>
```

The loaded settings files, by path.

### current

```haxe
static var current:ModelDatabase
```

The database used by the engine.

## Variables

### defaultProps

```haxe
var defaultProps:{ lodConfig:Array<Float>, dynamicBones:Null<Array<Dynamic>> }
```

The default settings: levels of detail at screen ratios 0.5, 0.2 and 0.01, no dynamic bones.

## Methods

### getDefaultLodConfig

```haxe
function getDefaultLodConfig(dir:String):Array<Float>
```

Returns the default levels of detail screen ratios of the directory `dir`.

### getDefaultDynamicBonesConfig

```haxe
function getDefaultDynamicBonesConfig(dir:String):Array<Dynamic>
```

Returns the default dynamic bones settings of the directory `dir`.

### loadModelProps

```haxe
function loadModelProps(input:ModelDataInput):Void
```

Applies the stored settings to the model: levels of detail, dynamic bones and culling ratio.

### saveModelProps

```haxe
function saveModelProps(input:ModelDataInput):Void
```

Saves the current settings of the model (only on platforms with file system access).
