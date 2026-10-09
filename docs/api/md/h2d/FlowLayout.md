# h2d.FlowLayout

**enum** · package [`h2d`](README.md) · module `h2d.Flow` · source [`h2d/Flow.hx`](../../../../h2d/Flow.hx)

The `Flow.layout` type.

## Constructors

### Horizontal

```haxe
Horizontal
```

Children are aligned horizontally from left to right (or right to left when `Flow.reverse` is enabled).

If `Flow.multiline` is enabled - children can overflow to the next row if there is not enough space available within the Flow size constraints.

`Flow.lineHeight` can be used to set a fixed row height when `Flow.overflow` is set to `Limit` or `Hidden`.
Objects with height that exceed the limitation will be aligned according to `Flow.verticalAlign` value vertically with `null` being treated as `Bottom`.

### Vertical

```haxe
Vertical
```

Children are aligned vertically from top to bottom (or bottom to top when `Flow.reverse` is enabled).

If `Flow.multiline` is enabled - children can overflow to the next column if there is not enough space available within the Flow size constraints.

`Flow.colWidth` can be used to set a fixed column width when `Flow.overflow` is set to `Limit` or `Hidden`.
Objects with height that exceed the limitation will be aligned according to `Flow.horizontalAlign` value horizontally with `null` being treated as `Left`.

### Stack

```haxe
Stack
```

Children are aligned independently (`Flow.reverse` has no effect).
