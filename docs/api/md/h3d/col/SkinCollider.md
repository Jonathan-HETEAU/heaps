# h3d.col.SkinCollider

**class** · package [`h3d.col`](README.md) · source [`h3d/col/SkinCollider.hx`](../../../../../h3d/col/SkinCollider.hx)

Extends: [`h3d.col.Collider`](Collider.md)

A collider following the deformation of a skinned mesh: its triangles are transformed by the current pose of the skin when tested.

## Constructor

### new

```haxe
function new(obj:h3d.scene.Skin, col:PolygonBuffer):Void
```

Creates the collider of the skin `obj` from its triangles `col`.

## Methods

### contains

```haxe
override function contains(p:Point):Bool
```

Tells if the point `p` is inside the shape.

### inFrustum

```haxe
override function inFrustum(p:Frustum, ?m:h3d.Matrix):Bool
```

Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.

### inSphere

```haxe
override function inSphere(s:Sphere):Bool
```

Tells if the shape intersects the sphere `s`.

### rayIntersection

```haxe
override function rayIntersection(r:Ray, bestMatch:Bool):Float
```

Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
If `bestMatch` is `false`, any intersection can be returned (faster).

### dimension

```haxe
override function dimension():Float
```

Returns the largest size of the shape, used to compare collider sizes.

### closestPoint

```haxe
override function closestPoint(p:Point):h3d.Vector
```

Returns the point of the shape closest to `p`.

### makeDebugObj

```haxe
override function makeDebugObj():h3d.scene.Object
```

Creates an object displaying the shape (debug), or `null` if not supported.

## Inherited members

- from [`h3d.col.Collider`](Collider.md): `rayIntersection`, `contains`, `inFrustum`, `inSphere`, `dimension`, `closestPoint`, `makeDebugObj`
