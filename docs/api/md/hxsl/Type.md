# hxsl.Type

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

A shader type.

## Constructors

### TVoid

```haxe
TVoid
```

No value.

### TInt

```haxe
TInt
```

An integer.

### TBool

```haxe
TBool
```

A boolean.

### TFloat

```haxe
TFloat
```

A float.

### TString

```haxe
TString
```

A string (only in constant expressions).

### TVec

```haxe
TVec(size:Int, t:VecType)
```

A vector of `size` components.

### TMat3

```haxe
TMat3
```

A 3x3 matrix.

### TMat4

```haxe
TMat4
```

A 4x4 matrix.

### TMat3x4

```haxe
TMat3x4
```

A 3x4 matrix (an affine transform).

### TBytes

```haxe
TBytes(size:Int)
```

`size` bytes packed in an integer (`Bytes2`, `Bytes4`).

### TSampler

```haxe
TSampler(dim:TexDimension, isArray:Bool)
```

A texture.

### TRWTexture

```haxe
TRWTexture(dim:TexDimension, isArray:Bool, channels:Int)
```

A read-write texture, with its number of channels.

### TMat2

```haxe
TMat2
```

A 2x2 matrix.

### TStruct

```haxe
TStruct(vl:Array<TVar>)
```

A structure.

### TFun

```haxe
TFun(variants:Array<FunType>)
```

A function, with its signatures.

### TArray

```haxe
TArray(t:Type, size:SizeDecl)
```

An array.

### TBuffer

```haxe
TBuffer(t:Type, size:SizeDecl, kind:BufferKind)
```

A buffer.

### TChannel

```haxe
TChannel(size:Int)
```

One or more channels of a texture (see `hxsl.Channel`).

### TTextureHandle

```haxe
TTextureHandle
```

A bindless texture handle.

### TBufferHandle

```haxe
TBufferHandle
```

A bindless buffer handle.

### TEnum

```haxe
TEnum(path:String)
```

A Haxe enum, as an integer constant (see `VarQualifier.Enum`).
