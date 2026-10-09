# h3d.Vector4

**abstract** · package [`h3d`](README.md) · source [`h3d/Vector4.hx`](../../../../h3d/Vector4.hx)

A 4 floats vector. Everytime a Vector is returned, it means a copy is created.
For function manipulating the length (length, normalize, dot, scale, etc.), the Vector
acts like a Point in the sense only the X/Y/Z components will be affected.

Underlying type: [`h3d.Vector4Impl`](Vector4Impl.md)

Members of [`h3d.Vector4Impl`](Vector4Impl.md) are forwarded (`@:forward`): they are usable directly on this type.

Implicit casts from: `Vector4Impl`

Implicit casts to: `Vector4Impl`

## Static methods

### fromColor

```haxe
static inline function fromColor(c:Int, ?scale:Float = 1.0):Vector4
```

### fromArray

```haxe
static inline function fromArray(a:Array<Float>):Vector4
```

## Methods

### sub

```haxe
inline function sub(v:Vector4):Vector4
```

### add

```haxe
inline function add(v:Vector4):Vector4
```

### transform

```haxe
inline function transform(m:Matrix):Void
```

### transformed

```haxe
inline function transformed(m:Matrix):Vector4
```
