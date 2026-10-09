# h3d.col.Ray

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Ray.hx`](../../../../../h3d/col/Ray.hx)

## Constructor

### new

```haxe
inline function new():Void
```

## Static methods

### fromPoints

```haxe
static inline function fromPoints(p1:Point, p2:Point):Ray
```

### fromValues

```haxe
static inline function fromValues(x:Float, y:Float, z:Float, dx:Float, dy:Float, dz:Float):Ray
```

## Variables

### px

```haxe
var px:Float
```

### py

```haxe
var py:Float
```

### pz

```haxe
var pz:Float
```

### lx

```haxe
var lx:Float
```

### ly

```haxe
var ly:Float
```

### lz

```haxe
var lz:Float
```

## Methods

### clone

```haxe
inline function clone():Ray
```

### load

```haxe
inline function load(r:Ray):Void
```

### transform

```haxe
inline function transform(m:h3d.Matrix):Void
```

### getPos

```haxe
inline function getPos():h3d.Vector
```

### getDir

```haxe
inline function getDir():h3d.Vector
```

### getPoint

```haxe
inline function getPoint(distance:Float):h3d.Vector
```

### toString

```haxe
function toString():String
```

### distance

```haxe
inline function distance(p:Plane):Float
```

### intersect

```haxe
inline function intersect(p:Plane):Null<Point>
```

### collideFrustum

```haxe
inline function collideFrustum(mvp:h3d.Matrix):Bool
```

### collide

```haxe
inline function collide(b:Bounds):Bool
```
