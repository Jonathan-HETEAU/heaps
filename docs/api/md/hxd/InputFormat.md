# hxd.InputFormat

**enum abstract** · package [`hxd`](README.md) · module `hxd.BufferFormat` · source [`hxd/BufferFormat.hx`](../../../../hxd/BufferFormat.hx)

The type of a buffer input. The value is the number of components (except for `DBytes4`).

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `DFloat` | `1` | A single float. |
| `DVec2` | `2` | A vector of 2 floats. |
| `DVec3` | `3` | A vector of 3 floats. |
| `DVec4` | `4` | A vector of 4 floats. |
| `DMat3x4` | `12` | A 3x4 matrix (12 floats). |
| `DMat4` | `16` | A 4x4 matrix (16 floats). |
| `DBytes4` | `9` | 4 bytes, stored in a single 32 bits component. |

## Static methods

### fromInt

```haxe
static inline function fromInt(v:Int):InputFormat
```

Returns the format of the given integer value.

### fromHXSL

```haxe
static function fromHXSL(t:hxsl.Type):InputFormat
```

Returns the format matching a shader type. Throws if the type can't be used in a buffer.

## Methods

### getSize

```haxe
inline function getSize():Int
```

Returns the number of 32 bits components.

### toInt

```haxe
inline function toInt():Int
```

Returns the integer value of the format.

### toString

```haxe
function toString():String
```

Returns the name of the format.
