# hxd.poly2tri.Orientation

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Orientation.hx`](../../../../../hxd/poly2tri/Orientation.hx)

The orientation of three points.

## Static variables

### CW

```haxe
static inline var CW:Int = 1
```

Clockwise.

### CCW

```haxe
static inline var CCW:Int = -1
```

Counter clockwise.

### COLLINEAR

```haxe
static inline var COLLINEAR:Int = 0
```

Collinear.

## Static methods

### orient2d

```haxe
static function orient2d(pa:Point, pb:Point, pc:Point):Int
```

Returns the orientation of the three points.
