# hxd.FloatBufferLoader

**class** · package [`hxd`](README.md) · source [`hxd/FloatBufferLoader.hx`](../../../../hxd/FloatBufferLoader.hx)

Writes values sequentially into a `FloatBuffer`, starting at a given position.
Used to fill shader parameter buffers.

## Constructor

### new

```haxe
inline function new(b:FloatBuffer, p:Int):Void
```

Creates a loader writing into `b`, starting at index `p`.

## Variables

### buf

```haxe
var buf(default, null):FloatBuffer
```

The buffer being written.

### pos

```haxe
var pos:Int
```

The index of the next float to write, incremented by each `load` call.

## Methods

### loadMatrix

```haxe
inline function loadMatrix(m:h3d.Matrix):Void
```

Writes the 16 values of the matrix, transposed (column by column).

### loadMatrix3x4

```haxe
inline function loadMatrix3x4(m:h3d.Matrix):Void
```

Writes the first 3 columns of the matrix (12 values), transposed.

### loadFloat

```haxe
inline function loadFloat(v:Float):Void
```

Writes a single float.

### loadInt

```haxe
inline function loadInt(v:Int):Void
```

Writes the bits of an integer as a float slot (no conversion).

### loadVec2

```haxe
inline function loadVec2(v:h3d.Vector):Void
```

Writes the X and Y components of `v`.

### loadVec3

```haxe
inline function loadVec3(v:h3d.Vector):Void
```

Writes the X, Y and Z components of `v`.

### loadVec4

```haxe
inline function loadVec4(v:h3d.Vector4):Void
```

Writes the 4 components of `v`.
