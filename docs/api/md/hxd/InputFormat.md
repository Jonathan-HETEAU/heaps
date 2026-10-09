# hxd.InputFormat

**enum abstract** · package [`hxd`](README.md) · module `hxd.BufferFormat` · source [`hxd/BufferFormat.hx`](../../../../hxd/BufferFormat.hx)

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `DFloat` | `1` |  |
| `DVec2` | `2` |  |
| `DVec3` | `3` |  |
| `DVec4` | `4` |  |
| `DMat3x4` | `12` |  |
| `DMat4` | `16` |  |
| `DBytes4` | `9` |  |

## Static methods

### fromInt

```haxe
static inline function fromInt(v:Int):InputFormat
```

### fromHXSL

```haxe
static function fromHXSL(t:hxsl.Type):InputFormat
```

## Methods

### getSize

```haxe
inline function getSize():Int
```

### toInt

```haxe
inline function toInt():Int
```

### toString

```haxe
function toString():String
```
