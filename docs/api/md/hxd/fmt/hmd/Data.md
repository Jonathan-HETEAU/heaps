# hxd.fmt.hmd.Data

**class** · package [`hxd.fmt.hmd`](README.md) · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

The content of a HMD file (the binary model format of Heaps, converted from FBX): the description of the models, geometries, materials, animations and colliders, and the binary data of the vertices and frames.

## Constructor

### new

```haxe
function new():Void
```

Creates empty data.

## Static variables

### CURRENT_VERSION

```haxe
static inline var CURRENT_VERSION:Int = 6
```

The version of the format written.

## Variables

### version

```haxe
var version:Int
```

The version of the file.

### props

```haxe
var props:Properties
```

The properties of the file.

### geometries

```haxe
var geometries:Array<Geometry>
```

The geometries.

### materials

```haxe
var materials:Array<Material>
```

The materials.

### models

```haxe
var models:Array<Model>
```

The models.

### animations

```haxe
var animations:Array<Animation>
```

The animations.

### shapes

```haxe
var shapes:Array<BlendShape>
```

The blend shapes.

### colliders

```haxe
var colliders:Array<Collider>
```

The colliders.

### dataPosition

```haxe
var dataPosition:Int
```

The position of the binary data in the file.

### data

```haxe
var data:Bytes
```

The binary data, when loaded.
