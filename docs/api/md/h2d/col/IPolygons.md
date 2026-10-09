# h2d.col.IPolygons

**abstract** · package [`h2d.col`](README.md) · source [`h2d/col/IPolygons.hx`](../../../../../h2d/col/IPolygons.hx)

An abstract over an Array of `IPolygon` instances that define multiple polygonal shapes that can be collision-tested against.
- **see** `h2d.Polygons`

Underlying type: `Array<IPolygon>`

Implicit casts from: `Array<IPolygon>`

Implicit casts to: `Array<IPolygon>`

## Static variables

### polygons

```haxe
static var polygons(get, null):Array<IPolygon>
```

An underlying IPolygon array.

### length

```haxe
static var length(get, null):Int
```

The amount of polygons in the IPolygons instance.

## Methods

### toPolygons

```haxe
function toPolygons(?scale:Float = 1.):Polygons
```

Converts the IPolygons instance to the floating point-based Polygons.

### getBounds

```haxe
function getBounds(?b:IBounds):Null<IBounds>
```

Returns bounding box of all IPolygon instances in IPolygons.
- **param** `b` Optional Bounds instance to be filled. Returns new Bounds instance if `null`.

### union

```haxe
function union(?p:IPolygons, ?withHoles:Bool = true):IPolygons
```

Combines this IPolygons and given IPolygons `p` and returns resulting IPolygons.
- **param** `p` Optional IPolygons to union with. When not set, unions all polygons in this IPolygons.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### intersection

```haxe
inline function intersection(p:IPolygons, ?withHoles:Bool = true):IPolygons
```

Calculates an intersection areas between this IPolygons and given IPolygons `p` and returns resulting IPolygons.
- **param** `p` The IPolygons to intersect with.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### subtraction

```haxe
inline function subtraction(p:IPolygons, ?withHoles:Bool = true):IPolygons
```

Subtracts the area of given IPolygons `p` from this IPolygons and returns resulting IPolygons.
- **param** `p` The IPolygons to subtract with.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### offset

```haxe
function offset(delta:Float, kind:OffsetKind, ?withHoles:Bool = true):IPolygons
```

Offsets polygon edges by specified amount and returns resulting IPolygons.
- **param** `delta` The offset amount.
- **param** `kind` The corner rounding method.
- **param** `withHoles` When enabled, keeps the holes in resulting polygons as a separate IPolygon.

### contains

```haxe
function contains(p:Point, ?isConvex:Bool = false):Bool
```

Tests if Point `p` is inside this IPolygons.
- **param** `p` The point to test against.
- **param** `isConvex` Use simplified collision test suited for convex polygons. Results are undefined if polygon is concave.

### optimize

```haxe
function optimize(epsilon:Float):IPolygons
```

Creates a set of new optimized polygons by eliminating almost colinear edges according to the epsilon distance.
