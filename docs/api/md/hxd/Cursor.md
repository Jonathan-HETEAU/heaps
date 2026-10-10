# hxd.Cursor

**enum** · package [`hxd`](README.md) · source [`hxd/Cursor.hx`](../../../../hxd/Cursor.hx)

A mouse cursor (see `hxd.System.setCursor` and `h2d.Interactive.cursor`).

## Constructors

### Default

```haxe
Default
```

The default arrow.

### Button

```haxe
Button
```

A hand, for clickable elements.

### Move

```haxe
Move
```

Arrows in all directions.

### TextInput

```haxe
TextInput
```

A text cursor (I-beam).

### Hide

```haxe
Hide
```

No cursor.

### ResizeNS

```haxe
ResizeNS
```

A vertical resize cursor.

### ResizeWE

```haxe
ResizeWE
```

A horizontal resize cursor.

### ResizeNWSE

```haxe
ResizeNWSE
```

A diagonal resize cursor, from top left to bottom right.

### ResizeNESW

```haxe
ResizeNESW
```

A diagonal resize cursor, from top right to bottom left.

### Custom

```haxe
Custom(custom:CustomCursor)
```

A custom cursor made of bitmaps.

### Callback

```haxe
Callback(f:() -> Void)
```

When this cursor is selected, call the function itself, which can handle complex logic and is responsible to call hxd.System.setCursor
