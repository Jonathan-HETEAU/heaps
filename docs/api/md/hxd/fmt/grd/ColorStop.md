# hxd.fmt.grd.ColorStop

**class** · package [`hxd.fmt.grd`](README.md) · module `hxd.fmt.grd.Data` · source [`hxd/fmt/grd/Data.hx`](../../../../../../hxd/fmt/grd/Data.hx)

A color stop of a gradient.

## Constructor

### new

```haxe
function new():Void
```

Creates a stop.

## Variables

### color

```haxe
var color:Color
```

The color.

### location

```haxe
var location:Int
```

The location of the stop, from `0` to `interpolation`.

### midpoint

```haxe
var midpoint:Int
```

The location of the middle of the transition to the next stop, in percent.

### type

```haxe
var type:ColorStopType
```

The source of the color.
