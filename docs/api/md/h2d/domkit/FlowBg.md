# h2d.domkit.FlowBg

**typedef** · package [`h2d.domkit`](README.md) · module `h2d.domkit.BaseComponents` · source [`h2d/domkit/BaseComponents.hx`](../../../../../h2d/domkit/BaseComponents.hx)

The value of the `background` CSS property of a flow: a tile with its scale grid borders, and its color for transitions.

## Fields

### tile

```haxe
var tile:h2d.Tile
```

The background tile (a color tile for a color background).

### color

```haxe
var ?color:Null<Int>
```

The ARGB color of a color background, used by the transitions.

### borderT

```haxe
var borderT:Int
```

The top border of the 9-slice scaling, in pixels.

### borderR

```haxe
var borderR:Int
```

The right border of the 9-slice scaling, in pixels.

### borderL

```haxe
var borderL:Int
```

The left border of the 9-slice scaling, in pixels.

### borderB

```haxe
var borderB:Int
```

The bottom border of the 9-slice scaling, in pixels.
