# hxd.Cursor

**enum** · package [`hxd`](README.md) · source [`hxd/Cursor.hx`](../../../../hxd/Cursor.hx)

A mouse cursor (see `hxd.System.setCursor` and `h2d.Interactive.cursor`).

## Constructors

### Default

```haxe
Default
```

### Button

```haxe
Button
```

### Move

```haxe
Move
```

### TextInput

```haxe
TextInput
```

### Hide

```haxe
Hide
```

### ResizeNS

```haxe
ResizeNS
```

### ResizeWE

```haxe
ResizeWE
```

### ResizeNWSE

```haxe
ResizeNWSE
```

### ResizeNESW

```haxe
ResizeNESW
```

### Custom

```haxe
Custom(custom:CustomCursor)
```

### Callback

```haxe
Callback(f:() -> Void)
```

When this cursor is selected, call the function itself, which can handle complex logic and is responsible to call hxd.System.setCursor
