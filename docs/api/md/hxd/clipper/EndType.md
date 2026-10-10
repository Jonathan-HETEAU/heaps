# hxd.clipper.EndType

**enum** · package [`hxd.clipper`](README.md) · source [`hxd/clipper/EndType.hx`](../../../../../hxd/clipper/EndType.hx)

How the ends of the paths are handled by `ClipperOffset`: closed polygons, closed lines, or open paths with butt, square or round ends.

## Constructors

### ClosedPol

```haxe
ClosedPol
```

The paths are closed polygons: both sides are offset.

### ClosedLine

```haxe
ClosedLine
```

The paths are closed lines: offset as an outline.

### OpenButt

```haxe
OpenButt
```

Open paths with ends squared off at the end points.

### OpenSquare

```haxe
OpenSquare
```

Open paths with ends squared off, extended by the offset.

### OpenRound

```haxe
OpenRound
```

Open paths with round ends.
