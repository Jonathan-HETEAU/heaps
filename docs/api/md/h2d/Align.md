# h2d.Align

**enum** · package [`h2d`](README.md) · module `h2d.Text` · source [`h2d/Text.hx`](../../../../h2d/Text.hx)

`Text` alignment rules.

## Constructors

### Left

```haxe
Left
```

Aligns the text to the left edge.

### Right

```haxe
Right
```

Aligns the text to the right edge.

When `Text.maxWidth` is set and/or Text size is constrained (see `Object.constraintSize`), right edge is considered the smallest of the two.

Otherwise edge is at the `0` coordinate of the Text instance.

See Text sample for showcase.

### Center

```haxe
Center
```

Centers the text alignment.

When `Text.maxWidth` is set and/or Text size is constrained (see `Object.constraintSize`), center is calculated from 0 to the smallest of the two.

Otherwise text is centered around `0` coordinate of the Text instance.

See Text sample for showcase.

### MultilineRight

```haxe
MultilineRight
```

With respect to Text constraints, aligns the text to the right edge of the longest line width.

When `Text.maxWidth` is set and/or Text size is constrained (see `Object.constraintSize`),
right edge is calculated as the smallest value of the `maxWidth`, constrained width and longest line width (after word-wrap from constraints).

Otherwise uses longest line width as the right edge.

See Text sample for showcase.

### MultilineCenter

```haxe
MultilineCenter
```

Centers the text with respect to Text constraints with the longest line width.

When `Text.maxWidth` is set and/or Text size is constrained (see `Object.constraintSize`),
center is calculated from the to the smallest value of the `maxWidth`, constrained width and longest line width (after word-wrap from constraints).

Otherwise calculates center from 0 to the longest line width.

See Text sample for showcase.
