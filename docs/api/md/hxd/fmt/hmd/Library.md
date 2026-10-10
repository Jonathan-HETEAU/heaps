# hxd.fmt.hmd.Library

**class** · package [`hxd.fmt.hmd`](README.md) · source [`hxd/fmt/hmd/Library.hx`](../../../../../../hxd/fmt/hmd/Library.hx)

Creates the objects, primitives, materials, skins and animations of a HMD model resource (see `hxd.res.Model.toHmd`).

## Constructor

### new

```haxe
function new(res:hxd.res.Resource, header:Data):Void
```

Creates the library of the resource.

## Variables

### resource

```haxe
var resource(default, null):hxd.res.Resource
```

The model resource.

### header

```haxe
var header(default, null):Data
```

The description of the content of the file.

## Methods

### getData

```haxe
function getData():Bytes
```

Reads the binary data of the file.

### getDefaultFormat

```haxe
function getDefaultFormat(stride:Int):{ format:hxd.BufferFormat, defs:Array<Null<h3d.Vector>> }
```

Returns the vertex format (position, normal, uv, color) matching a vertex stride, with the default values of the missing inputs.

### load

```haxe
function load(format:hxd.BufferFormat, ?defaults:Array<h3d.Vector4>, ?modelIndex:Int = -1):{ vertex:hxd.FloatBuffer, index:hxd.IndexBuffer }
```

Returns the vertices (in the given format) and indexes of all the models (or of the model of the index), transformed by their position. Throws if they use several materials.

### getBuffers

```haxe
function getBuffers(geom:Geometry, format:hxd.BufferFormat, ?defaults:Array<h3d.Vector4>, ?material:Int):GeometryBuffer
```

Decodes the vertices of the geometry in the given format (with default values for the missing inputs), and the indexes of a material (all of them if `material` is not set).

### dispose

```haxe
function dispose():Void
```

Releases the cached primitives and materials.

### getModelProperty

```haxe
function getModelProperty(objName:String, p:Property<getModelProperty.T>, ?def:getModelProperty.T):Null<getModelProperty.T>
```

Returns the parameter of the property `p` of the model named `objName`, or `def` if the model doesn't have it. Throws if the model is not found and `def` is `null`.

### findLODs

```haxe
function findLODs(modelName:String, lod0:Model):Array<Model>
```

Returns the levels of detail of the model, by level minus one: the models named `LOD<level><modelName>`. Throws if two models have the same level.

### patchLodsMaterials

```haxe
function patchLodsMaterials(lod0:Model, lods:Array<Model>):Void
```

Remaps the materials of the levels of detail to the materials of `lod0`, setting the index counts of the unused materials to `0`. Throws if a level of detail uses a material that `lod0` doesn't.

### makeObject

```haxe
function makeObject(?loadTexture:() -> h3d.mat.Texture):h3d.scene.Object
```

Creates the objects of the models (meshes, skins and empty objects) and returns the root. `loadTexture` loads the textures of the materials (a pink texture by default).

### loadAnimation

```haxe
function loadAnimation(?name:String):h3d.anim.Animation
```

Returns the animation of the given name, or the first one when `name` is `null` (`null` if the file has no animation). The animations are cached. Throws if the animation is not found.

### loadSkin

```haxe
function loadSkin(geom:Geometry, skin:h3d.anim.Skin, ?optimize:Bool = true):Void
```

Loads the vertex weights and joints of the skin from the geometry, if not loaded yet. If `optimize` is set, the joint bounds contained in their parent's are removed.
