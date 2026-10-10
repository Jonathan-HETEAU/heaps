# hxd.poly2tri.Basin

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Basin.hx`](../../../../../hxd/poly2tri/Basin.hx)

A basin of the advancing front: a concave part that is filled with triangles.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty basin.

## Variables

### left_node

```haxe
var left_node:Node
```

The left node of the basin.

### bottom_node

```haxe
var bottom_node:Node
```

The bottom node of the basin.

### right_node

```haxe
var right_node:Node
```

The right node of the basin.

### width

```haxe
var width:Float
```

The width of the basin.

### left_highest

```haxe
var left_highest:Bool
```

Tells if the left side of the basin is the highest.

## Methods

### clear

```haxe
function clear():Void
```

Resets the basin.
