# hxd.Precision

**enum abstract** · package [`hxd`](README.md) · module `hxd.BufferFormat` · source [`hxd/BufferFormat.hx`](../../../../hxd/BufferFormat.hx)

The storage precision of a buffer input.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `F32` | `0` | 32 bits float. |
| `F16` | `1` | 16 bits float. |
| `U8` | `2` | Unsigned 8 bits, normalized to the `[0, 1]` range. |
| `S8` | `3` | Signed 8 bits, normalized to the `[-1, 1]` range. |

## Static methods

### fromInt

```haxe
static inline function fromInt(v:Int):Precision
```

Returns the precision of the given integer value.

## Methods

### getSize

```haxe
inline function getSize():Int
```

Returns the size in bytes of a component.

### toInt

```haxe
inline function toInt():Int
```

Returns the integer value of the precision.

### toString

```haxe
function toString():String
```

Returns the name of the precision.
