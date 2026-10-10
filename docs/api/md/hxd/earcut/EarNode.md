# hxd.earcut.EarNode

**class** · package [`hxd.earcut`](README.md) · module `hxd.earcut.Earcut` · source [`hxd/earcut/Earcut.hx`](../../../../../hxd/earcut/Earcut.hx)

A vertex of the polygon being triangulated by `Earcut`.

## Constructor

### new

```haxe
function new():Void
```

Creates a node.

## Variables

### next

```haxe
var next:EarNode
```

The next vertex of the polygon.

### prev

```haxe
var prev:EarNode
```

The previous vertex of the polygon.

### nextZ

```haxe
var nextZ:EarNode
```

The next vertex in Z-order.

### prevZ

```haxe
var prevZ:EarNode
```

The previous vertex in Z-order.

### allocNext

```haxe
var allocNext:EarNode
```

The next allocated node, for reuse.

### x

```haxe
var x:Float
```

The X coordinate.

### y

```haxe
var y:Float
```

The Y coordinate.

### i

```haxe
var i:Int
```

The index of the vertex in the input points.

### z

```haxe
var z:Int
```

The Z-order curve value, to speed up the search.

### steiner

```haxe
var steiner:Bool
```

Tells if the vertex is a Steiner point.
