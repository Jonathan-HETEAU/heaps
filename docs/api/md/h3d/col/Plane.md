# h3d.col.Plane

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Plane.hx`](../../../../../h3d/col/Plane.hx)

## Constructor

### new

```haxe
inline function new(nx:Float, ny:Float, nz:Float, d:Float):Void
```

## Static methods

### fromPoints

```haxe
static inline function fromPoints(p0:Point, p1:Point, p2:Point):Plane
```

### fromNormalPoint

```haxe
static inline function fromNormalPoint(n:Point, p:Point):Plane
```

### X

```haxe
static inline function X(?v:Float = 0.0):Plane
```

### Y

```haxe
static inline function Y(?v:Float = 0.0):Plane
```

### Z

```haxe
static inline function Z(?v:Float = 0.0):Plane
```

### frustumLeft

```haxe
static inline function frustumLeft(mvp:h3d.Matrix):Plane
```

### frustumRight

```haxe
static inline function frustumRight(mvp:h3d.Matrix):Plane
```

### frustumBottom

```haxe
static inline function frustumBottom(mvp:h3d.Matrix):Plane
```

### frustumTop

```haxe
static inline function frustumTop(mvp:h3d.Matrix):Plane
```

### frustumNear

```haxe
static inline function frustumNear(mvp:h3d.Matrix):Plane
```

### frustumFar

```haxe
static inline function frustumFar(mvp:h3d.Matrix):Plane
```

## Methods

### getNormal

```haxe
inline function getNormal():h3d.Vector
```

Returns the plan normal

### getNormalDistance

```haxe
inline function getNormalDistance():Float
```

### load

```haxe
inline function load(p:Plane):Void
```

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

### transform3x3

```haxe
function transform3x3(m:h3d.Matrix):Void
```

### normalize

```haxe
inline function normalize():Void
```

Normalize the plan, so we can use distance().

### toString

```haxe
function toString():String
```

### distance

```haxe
inline function distance(p:Point):Float
```

Returns the signed distance between a point an the plane. This requires the plan to be normalized. If the distance is negative it means that we are "under" the plan.

### side

```haxe
inline function side(p:Point):Bool
```

### project

```haxe
inline function project(p:Point):Point
```

### projectTo

```haxe
inline function projectTo(p:Point, out:Point):Void
```
