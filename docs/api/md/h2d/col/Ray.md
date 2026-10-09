# h2d.col.Ray

**class** · package [`h2d.col`](README.md) · source [`h2d/col/Ray.hx`](../../../../../h2d/col/Ray.hx)

A raycast from the given position in a specified direction.

## Constructor

### new

```haxe
inline function new():Void
```

Create a new Ray instance.

## Static methods

### fromPoints

```haxe
static inline function fromPoints(p1:Point, p2:Point):Ray
```

Returns a new Ray starting at Point `p1` and pointing at Point `p2`.

### fromValues

```haxe
static inline function fromValues(x:Float, y:Float, dx:Float, dy:Float):Ray
```

Returns a new Ray at given position and direction.

## Variables

### px

```haxe
var px:Float
```

X position of the ray start.

### py

```haxe
var py:Float
```

Y position of the ray start.

### lx

```haxe
var lx:Float
```

X normal of the ray direction.

### ly

```haxe
var ly:Float
```

Y normal of the ray direction.

## Methods

### side

```haxe
inline function side(p:Point):Float
```

Returns a positive value if Point `p` is on the right side of the Ray axis and negative if it's on the left.

### getPoint

```haxe
inline function getPoint(distance:Float):Point
```

Returns a new Point containing the Ray vector with specified length.

### getPos

```haxe
inline function getPos():Point
```

Returns new Point containing Ray starting position.

### getDir

```haxe
inline function getDir():Point
```

Returns new Point containing Ray direction.
