# hxsl.Output

**enum** · package [`hxsl`](README.md) · source [`hxsl/Output.hx`](../../../../hxsl/Output.hx)

An output value of a link shader (see `Cache.getLinkShader`).

## Constructors

### Const

```haxe
Const(v:Float)
```

A constant.

### Value

```haxe
Value(v:String, ?size:Int)
```

The value of a variable of the given name.

### PackNormal

```haxe
PackNormal(v:Output)
```

A normal packed in a color.

### PackFloat

```haxe
PackFloat(v:Output)
```

A float packed in a color.

### Vec2

```haxe
Vec2(a:Array<Output>)
```

A vector of 2 values.

### Vec3

```haxe
Vec3(a:Array<Output>)
```

A vector of 3 values.

### Vec4

```haxe
Vec4(a:Array<Output>)
```

A vector of 4 values.

### Swiz

```haxe
Swiz(a:Output, swiz:Array<Component>)
```

Some components of a value.
