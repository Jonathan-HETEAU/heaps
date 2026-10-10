# hxd.EventKind

**enum** · package [`hxd`](README.md) · module `hxd.Event` · source [`hxd/Event.hx`](../../../../hxd/Event.hx)

The kinds of `Event`.

## Constructors

### EPush

```haxe
EPush
```

A mouse button or a touch is pressed.

### ERelease

```haxe
ERelease
```

A mouse button or a touch is released.

### EMove

```haxe
EMove
```

The mouse or a touch moves.

### EOver

```haxe
EOver
```

The cursor enters an interactive.

### EOut

```haxe
EOut
```

The cursor leaves an interactive.

### EWheel

```haxe
EWheel
```

The mouse wheel is used (see `Event.wheelDelta`).

### EFocus

```haxe
EFocus
```

An interactive gets the focus.

### EFocusLost

```haxe
EFocusLost
```

An interactive loses the focus.

### EKeyDown

```haxe
EKeyDown
```

A key is pressed (see `Event.keyCode`).

### EKeyUp

```haxe
EKeyUp
```

A key is released (see `Event.keyCode`).

### EReleaseOutside

```haxe
EReleaseOutside
```

A button pressed on an interactive is released outside of it.

### ETextInput

```haxe
ETextInput
```

A character is typed (see `Event.charCode`).

### ECheck

```haxe
ECheck
```

Used to check if we are still on the interactive if no EMove was triggered this frame.
