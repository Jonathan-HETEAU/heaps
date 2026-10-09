# h3d.Vector

**abstract** · package [`h3d`](README.md) · source [`h3d/Vector.hx`](../../../../h3d/Vector.hx)

A 3 floats vector. Everytime a Vector is returned, it means a copy is created.

Underlying type: [`h3d.VectorImpl`](VectorImpl.md)

Members of [`h3d.VectorImpl`](VectorImpl.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `VectorImpl`

Implicit casts to: `VectorImpl`

## Static methods

### fromColor

```haxe
static inline function fromColor(c:Int, ?scale:Float = 1.0):Vector
```

Creates a color vector from an integer color, with components multiplied by `scale`.

### fromArray

```haxe
static inline function fromArray(a:Array<Float>):Vector
```

Creates a vector from the first components of an array.

## Methods

### sub

```haxe
inline function sub(v:Vector):Vector
```

Returns `this - v` as a new vector.

### add

```haxe
inline function add(v:Vector):Vector
```

Returns `this + v` as a new vector.

### transform

```haxe
inline function transform(m:Matrix):Void
```

Transforms the vector by the matrix `m` (as a point: the translation is applied).

### transformed

```haxe
inline function transformed(m:Matrix):Vector
```

Returns a copy of the vector transformed by `m` (as a point).

### toPoint

```haxe
inline function toPoint():Vector
```

Returns a copy as a point.

### toVector

```haxe
inline function toVector():Vector
```

Returns a `Vector` with the X, Y and Z components.

### scale

```haxe
inline function scale(v:Float):Void
```

Multiplies the components by `f`.

### scaled

```haxe
inline function scaled(v:Float):Vector
```

Returns a copy of the vector multiplied by `v`.
