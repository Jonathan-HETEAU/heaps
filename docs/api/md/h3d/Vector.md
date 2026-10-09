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

### fromArray

```haxe
static inline function fromArray(a:Array<Float>):Vector
```

## Methods

### sub

```haxe
inline function sub(v:Vector):Vector
```

### add

```haxe
inline function add(v:Vector):Vector
```

### transform

```haxe
inline function transform(m:Matrix):Void
```

### transformed

```haxe
inline function transformed(m:Matrix):Vector
```

### toPoint

```haxe
inline function toPoint():Vector
```

### toVector

```haxe
inline function toVector():Vector
```

### scale

```haxe
inline function scale(v:Float):Void
```

### scaled

```haxe
inline function scaled(v:Float):Vector
```
