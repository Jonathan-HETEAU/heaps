# h2d.ConsoleArg

**enum** · package [`h2d`](README.md) · module `h2d.Console` · source [`h2d/Console.hx`](../../../../h2d/Console.hx)

The console argument type.

## Constructors

### AInt

```haxe
AInt
```

An integer parameter.

### AFloat

```haxe
AFloat
```

A floating-point parameter.

### AString

```haxe
AString
```

A text string parameter.

### ABool

```haxe
ABool
```

A boolean parameter. Can be `true`, `false`, `1` or `0`.

### AEnum

```haxe
AEnum(values:Array<String>)
```

A text string parameter with limitation to only accept the specified list values.

### AArray

```haxe
AArray(t:ConsoleArg)
```

An array of remaining arguments.
