# hxd.fmt.grd.Gradient

**class** · package [`hxd.fmt.grd`](README.md) · module `hxd.fmt.grd.Data` · source [`hxd/fmt/grd/Data.hx`](../../../../../../hxd/fmt/grd/Data.hx)

A gradient of a Photoshop gradients file.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty gradient.

## Variables

### name

```haxe
var name:String
```

The name of the gradient.

### interpolation

```haxe
var interpolation:Float
```

The smoothness of the gradient (the maximum location of the stops).

### colorStops

```haxe
var colorStops:Array<ColorStop>
```

The color stops.

### transparencyStops

```haxe
var transparencyStops:Array<TransparencyStop>
```

The opacity stops.

### gradientStops

```haxe
var gradientStops:Array<GradientStop>
```

The color stops with their opacity interpolated from the opacity stops.
