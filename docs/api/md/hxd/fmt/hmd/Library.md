# hxd.fmt.hmd.Library

**class** · package [`hxd.fmt.hmd`](README.md) · source [`hxd/fmt/hmd/Library.hx`](../../../../../../hxd/fmt/hmd/Library.hx)

## Constructor

### new

```haxe
function new(res:hxd.res.Resource, header:Data):Void
```

## Variables

### resource

```haxe
var resource(default, null):hxd.res.Resource
```

### header

```haxe
var header(default, null):Data
```

## Methods

### getData

```haxe
function getData():Bytes
```

### getDefaultFormat

```haxe
function getDefaultFormat(stride:Int):{ format:hxd.BufferFormat, defs:Array<Null<h3d.Vector>> }
```

### load

```haxe
function load(format:hxd.BufferFormat, ?defaults:Array<h3d.Vector4>, ?modelIndex:Int = -1):{ vertex:hxd.FloatBuffer, index:hxd.IndexBuffer }
```

### getBuffers

```haxe
function getBuffers(geom:Geometry, format:hxd.BufferFormat, ?defaults:Array<h3d.Vector4>, ?material:Int):GeometryBuffer
```

### dispose

```haxe
function dispose():Void
```

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
