# hxd.fmt.fbx.FbxProp

**enum** · package [`hxd.fmt.fbx`](README.md) · module `hxd.fmt.fbx.Data` · source [`hxd/fmt/fbx/Data.hx`](../../../../../../hxd/fmt/fbx/Data.hx)

A property value of a FBX node.

## Constructors

### PInt

```haxe
PInt(v:Int)
```

An integer.

### PFloat

```haxe
PFloat(v:Float)
```

A float.

### PString

```haxe
PString(v:String)
```

A string.

### PIdent

```haxe
PIdent(i:String)
```

An identifier (unquoted in the text format).

### PInts

```haxe
PInts(v:Array<Int>)
```

An array of integers.

### PFloats

```haxe
PFloats(v:Array<Float>)
```

An array of floats.

### PBinary

```haxe
PBinary(v:Bytes)
```

Raw binary data.
