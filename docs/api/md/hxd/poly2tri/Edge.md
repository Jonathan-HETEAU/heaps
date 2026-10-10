# hxd.poly2tri.Edge

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Edge.hx`](../../../../../hxd/poly2tri/Edge.hx)

A constrained edge of the polygon to triangulate, oriented so that `q` is the upper point.

## Constructor

### new

```haxe
function new(p1:Point, p2:Point):Void
```

Creates the edge between two points, and registers it on its upper point. Throws if they are equal.

## Variables

### p

```haxe
var p:Point
```

The lower point.

### q

```haxe
var q:Point
```

The upper point.

## Methods

### toString

```haxe
function toString():String
```

Returns a description of the edge.
