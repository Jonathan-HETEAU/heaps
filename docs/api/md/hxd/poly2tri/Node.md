# hxd.poly2tri.Node

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Node.hx`](../../../../../hxd/poly2tri/Node.hx)

A node of the advancing front.

## Constructor

### new

```haxe
function new(?point:Point, ?triangle:Triangle):Void
```

Creates a node for the point and triangle.

## Variables

### point

```haxe
var point:Point
```

The point of the node.

### triangle

```haxe
var triangle:Triangle
```

The triangle below the front edge starting at this node.

### prev

```haxe
var prev:Node
```

The previous node.

### next

```haxe
var next:Node
```

The next node.

### value

```haxe
var value:Float
```

The X coordinate of the point, used to search the front.

## Methods

### getHoleAngle

```haxe
function getHoleAngle():Float
```

Returns the angle between the previous and next nodes, seen from this node.

### getBasinAngle

```haxe
function getBasinAngle():Float
```

Returns the angle used to detect a basin to the right of the node.
