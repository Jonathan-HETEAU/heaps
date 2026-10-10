# hxd.fmt.spine.JSkinMeshAttach

**typedef** · package [`hxd.fmt.spine`](README.md) · module `hxd.fmt.spine.JsonData` · source [`hxd/fmt/spine/JsonData.hx`](../../../../../../hxd/fmt/spine/JsonData.hx)

A skinned mesh attachment, in the Spine JSON format.

## Fields

### width

```haxe
var width:Int
```

The width of the image.

### vertices

```haxe
var vertices:Array<Float>
```

The bone weights and positions of the vertices.

### uvs

```haxe
var uvs:Array<Float>
```

The texture coordinates.

### type

```haxe
var ?type:Null<String>
```

The type of the attachment (`region` by default, or `skinnedmesh`).

### triangles

```haxe
var triangles:Array<Int>
```

The vertex indexes of the triangles.

### hull

```haxe
var hull:Int
```

The number of vertices of the hull.

### height

```haxe
var height:Int
```

The height of the image.

### edges

```haxe
var edges:Array<Int>
```

The edges, for the editor.

### color

```haxe
var ?color:Null<String>
```

The color.
