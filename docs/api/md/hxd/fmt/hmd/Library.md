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

### findLODs

```haxe
function findLODs(modelName:String, lod0:Model):Array<Model>
```

### patchLodsMaterials

```haxe
function patchLodsMaterials(lod0:Model, lods:Array<Model>):Void
```

### makeObject

```haxe
function makeObject(?loadTexture:() -> h3d.mat.Texture):h3d.scene.Object
```

### loadAnimation

```haxe
function loadAnimation(?name:String):h3d.anim.Animation
```

### loadSkin

```haxe
function loadSkin(geom:Geometry, skin:h3d.anim.Skin, ?optimize:Bool = true):Void
```
