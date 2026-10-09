# h3d.scene.WorldData

**typedef** · package [`h3d.scene`](README.md) · module `h3d.scene.HierarchicalWorld` · source [`h3d/scene/HierarchicalWorld.hx`](../../../../../h3d/scene/HierarchicalWorld.hx)

The parameters of a node of a `HierarchicalWorld`. The root data is given by the user, the children data is
derived from it when nodes are subdivided.

## Fields

### y

```haxe
var y:Int
```

The Y position of the node center, relative to its parent node.

### x

```haxe
var x:Int
```

The X position of the node center, relative to its parent node.

### subdivPow

```haxe
var subdivPow:Float
```

A node is subdivided when the camera is closer (on the XY plane) than `size * subdivPow` from its center.

### size

```haxe
var size:Int
```

The width of the square covered by the node, in world units. Each subdivision halves it.

### root

```haxe
var root:HierarchicalWorld
```

The root node. Set automatically.

### onCreate

```haxe
var onCreate:() -> Void
```

Called when a node is created, to populate it (for instance load the content of the chunk).
For the root node it is only called by the private `init` method, which subclasses are expected to call.

### maxDepth

```haxe
var maxDepth:Int
```

The depth of the leaf nodes, which are never subdivided.

### depth

```haxe
var depth:Int
```

The depth of the node: `0` for the root.
