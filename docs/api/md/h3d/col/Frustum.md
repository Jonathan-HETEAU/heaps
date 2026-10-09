# h3d.col.Frustum

**class** · package [`h3d.col`](README.md) · source [`h3d/col/Frustum.hx`](../../../../../h3d/col/Frustum.hx)

## Constructor

### new

```haxe
function new(?mvp:h3d.Matrix):Void
```

## Variables

### pleft

```haxe
var pleft:Plane
```

### pright

```haxe
var pright:Plane
```

### ptop

```haxe
var ptop:Plane
```

### pbottom

```haxe
var pbottom:Plane
```

### pnear

```haxe
var pnear:Plane
```

### pfar

```haxe
var pfar:Plane
```

### checkNearFar

```haxe
var checkNearFar:Bool
```

## Methods

### clone

```haxe
function clone():Frustum
```

### loadMatrix

```haxe
function loadMatrix(mvp:h3d.Matrix):Void
```

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

### transform3x3

```haxe
function transform3x3(m:h3d.Matrix):Void
```

### hasPoint

```haxe
function hasPoint(p:Point):Bool
```

### hasSphere

```haxe
function hasSphere(s:Sphere):Bool
```

### hasBounds

```haxe
function hasBounds(b:Bounds):Bool
```

### hasOrientedBounds

```haxe
function hasOrientedBounds(b:OrientedBounds):Bool
```

### getBounds

```haxe
function getBounds(m:h3d.Matrix, ?out:Bounds):Bounds
```
