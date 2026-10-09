# h2d.FlowOverflow

**enum** · package [`h2d`](README.md) · module `h2d.Flow` · source [`h2d/Flow.hx`](../../../../h2d/Flow.hx)

The `Flow.overflow` rules.

## Constructors

### Expand

```haxe
Expand
```

Children larger than `Flow.maxWidth` / `Flow.maxHeight` will expand the flow size.

### Limit

```haxe
Limit
```

Limits the bounds reported by the flow using `Flow.maxWidth` or `Flow.maxHeight`, if set.

Children larger than max size will draw outside of the Flow bounds or overflow if `Flow.multiline` is enabled.

### Hidden

```haxe
Hidden
```

Limits the bounds reported by the flow using `Flow.maxWidth` or `Flow.maxHeight`, if set.

Compared to `Limit` - Flow will mask out the content that is outside of Flow bounds.

### Scroll

```haxe
Scroll
```

Similar to `Hidden` but allows to scroll using `Flow.scroll*` properties for control.
