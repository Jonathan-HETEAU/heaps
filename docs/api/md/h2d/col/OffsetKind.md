# h2d.col.OffsetKind

**enum** · package [`h2d.col`](README.md) · module `h2d.col.IPolygon` · source [`h2d/col/IPolygon.hx`](../../../../../h2d/col/IPolygon.hx)

The type of the edges when offsetting polygon with `IPolygon.offset`.

## Constructors

### Square

```haxe
Square
```

Squared corners.

### Miter

```haxe
Miter
```

Mitered (sharp) corners.

### Round

```haxe
Round(arc:Float)
```

Rounded corners, with the maximum distance `arc` between the arc and its segments.
