# hxd.fmt.tiff.TifType

**enum abstract** · package [`hxd.fmt.tiff`](README.md) · module `hxd.fmt.tiff.Data` · source [`hxd/fmt/tiff/Data.hx`](../../../../../../hxd/fmt/tiff/Data.hx)

The types of the TIFF tag values.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `Byte` | `1` | An unsigned 8 bits integer. |
| `Ascii` | `2` | An ASCII character. |
| `Short` | `3` | An unsigned 16 bits integer. |
| `Long` | `4` | An unsigned 32 bits integer. |
| `Rational` | `5` | Two unsigned 32 bits integers (numerator and denominator). |
| `SByte` | `6` | A signed 8 bits integer. |
| `UndefByte` | `7` | A byte of undefined type. |
| `SShort` | `8` | A signed 16 bits integer. |
| `SLong` | `9` | A signed 32 bits integer. |
| `SRational` | `10` | Two signed 32 bits integers (numerator and denominator). |
| `Float` | `11` | A 32 bits float. |
| `Double` | `12` | A 64 bits float. |

## Methods

### toInt

```haxe
inline function toInt():Int
```

Returns the value of the type.

### getSize

```haxe
function getSize():Int
```

Returns the size of a value of the type, in bytes.
