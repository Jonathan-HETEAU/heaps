# hxd.Direction

**enum abstract** · package [`hxd`](README.md) · source [`hxd/Direction.hx`](../../../../hxd/Direction.hx)

One of the 4 directions on a 2D grid, with Y pointing down.
The value encodes the offsets as `(x + 1) | ((y + 1) << 2)`.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `Up` | `1` | `x = 0, y = -1`. |
| `Left` | `4` | `x = -1, y = 0`. |
| `Right` | `6` | `x = 1, y = 0`. |
| `Down` | `9` | `x = 0, y = 1`. |

## Static variables

### x

```haxe
static var x(get, null):Int
```

The X offset of the direction (`-1`, `0` or `1`).

### y

```haxe
static var y(get, null):Int
```

The Y offset of the direction (`-1`, `0` or `1`).

### angle

```haxe
static var angle(get, null):Float
```

The angle of the direction in radians, as given by `atan2(y, x)`.

### name

```haxe
static var name(get, null):String
```

The lowercase name of the direction (`"up"`, `"left"`, `"right"` or `"down"`).

## Static methods

### ffrom

```haxe
static inline function ffrom(dx:Int, dy:Int):Direction
```

Creates a direction from offsets in the `[-1, 1]` range. No check is done, so it can return a diagonal value that is not one of the 4 named directions.

## Methods

### inverse

```haxe
inline function inverse():Direction
```

Returns the opposite direction.
