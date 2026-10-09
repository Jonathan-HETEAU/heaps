# h3d.prim.ModelDatabase

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/ModelDatabase.hx`](../../../../../h3d/prim/ModelDatabase.hx)

## Static variables

### FILE_NAME

```haxe
static var FILE_NAME:String
```

### DEFAULT_CONFIG_ENTRY

```haxe
static var DEFAULT_CONFIG_ENTRY:String
```

### LOD_CONFIG

```haxe
static var LOD_CONFIG:String
```

### CULLING_RATIO_CONFIG

```haxe
static var CULLING_RATIO_CONFIG:String
```

### DYN_BONES_CONFIG

```haxe
static var DYN_BONES_CONFIG:String
```

### COLLIDE_CONFIG

```haxe
static var COLLIDE_CONFIG:String
```

### db

```haxe
static var db:Map<String, Dynamic>
```

### current

```haxe
static var current:ModelDatabase
```

## Variables

### defaultProps

```haxe
var defaultProps:{ lodConfig:Array<Float>, dynamicBones:Null<Array<Dynamic>> }
```

## Methods

### getDefaultLodConfig

```haxe
function getDefaultLodConfig(dir:String):Array<Float>
```

### getDefaultDynamicBonesConfig

```haxe
function getDefaultDynamicBonesConfig(dir:String):Array<Dynamic>
```

### loadModelProps

```haxe
function loadModelProps(input:ModelDataInput):Void
```

### saveModelProps

```haxe
function saveModelProps(input:ModelDataInput):Void
```
