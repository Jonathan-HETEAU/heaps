# hxd.fmt.hmd.Model

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

A node of the hierarchy of the file: an object, a mesh or a skinned mesh.

## Constructor

### new

```haxe
function new():Void
```

Creates a model.

## Variables

### name

```haxe
var name:String
```

The name of the model.

### props

```haxe
var props:Properties
```

The properties of the model.

### parent

```haxe
var parent:Index<Model>
```

The index of the parent model, or `-1`.

### follow

```haxe
var follow:Null<String>
```

The name of the joint the model follows, when it is attached to a joint.

### position

```haxe
var position:Position
```

The transform of the model, relative to its parent.

### geometry

```haxe
var geometry:Index<Geometry>
```

The index of the geometry, or `-1` for an object without mesh.

### materials

```haxe
var materials:Null<Array<Index<Material>>>
```

The materials of the geometry.

### skin

```haxe
var skin:Null<Skin>
```

The skin of the model, or `null`.

### lods

```haxe
var lods:Array<Index<Model>>
```

The models of the lower levels of detail.

### collider

```haxe
var collider:Null<Index<Collider>>
```

The index of the collider of the model.

### colliders

```haxe
var colliders:Null<Array<Index<Collider>>>
```

The indexes of the colliders of the model.

## Methods

### getObjectName

```haxe
function getObjectName():String
```

Returns the name of the model without its `LOD0` suffix.

### isLOD

```haxe
function isLOD():Bool
```

Tells if the model is a lower level of detail (its name contains `LOD` but not `LOD0`).

### isLOD0

```haxe
function isLOD0(modelName:String):Bool
```

Tells if the model is the `LOD0` model of the given model name.

### toLODName

```haxe
function toLODName(i:Int):String
```

Returns the name of the level of detail `i` of the model.

### getLODInfos

```haxe
function getLODInfos():{ modelName:String, lodLevel:Int }
```

Returns the level of detail and the model name from the name (with a `LOD<n>` prefix or suffix), or `-1` and `null`.

### isCollider

```haxe
function isCollider():Bool
```

Tells if the model is a collider (its name ends with `_Collider`).
