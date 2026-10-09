# h3d.mat.MaterialDatabase

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/MaterialDatabase.hx`](../../../../../h3d/mat/MaterialDatabase.hx)

Stores the properties of the materials of models in `materials.props` JSON files, one per resource directory,
indexed by material setup name and material name. Used by `MaterialSetup` to load and save the material properties
edited in Hide.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty database.

## Methods

### getModelData

```haxe
function getModelData(model:hxd.res.Resource):Null<{  }>
```

Returns the content of the `materials.props` file of the directory of `model` (cached), or an empty object.

### loadMatProps

```haxe
function loadMatProps(material:Material, setup:MaterialSetup):Null<Any>
```

Returns the saved properties of `material` for `setup`, or `null`. Properties specific to the material model
(`name/modelName`) take precedence.

### saveMatProps

```haxe
function saveMatProps(material:Material, setup:MaterialSetup, ?defaultProps:Any):Void
```

Saves the properties of `material` for `setup` in the `materials.props` file (only on platforms with file system access).
Properties equal to the defaults are removed.
