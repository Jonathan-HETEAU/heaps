# hxd.poly2tri.AdvancingFront

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/AdvancingFront.hx`](../../../../../hxd/poly2tri/AdvancingFront.hx)

The advancing front of the sweep line triangulation: a linked list of nodes along the upper boundary of the triangulated area.

## Constructor

### new

```haxe
function new(head:Node, tail:Node):Void
```

Creates the front from its first and last nodes.

## Variables

### head

```haxe
var head:Node
```

The first node.

### tail

```haxe
var tail:Node
```

The last node.

### search_node

```haxe
var search_node:Node
```

The node where the last search ended, to start the next one.

## Methods

### locateNode

```haxe
function locateNode(x:Unit):Node
```

Returns the node of the front at or before the X coordinate.

### locatePoint

```haxe
function locatePoint(point:Point):Node
```

Returns the node of the front at the point, or `null`.
