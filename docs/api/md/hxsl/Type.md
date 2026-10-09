# hxsl.Type

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

## Constructors

### TVoid

```haxe
TVoid
```

### TInt

```haxe
TInt
```

### TBool

```haxe
TBool
```

### TFloat

```haxe
TFloat
```

### TString

```haxe
TString
```

### TVec

```haxe
TVec(size:Int, t:VecType)
```

### TMat3

```haxe
TMat3
```

### TMat4

```haxe
TMat4
```

### TMat3x4

```haxe
TMat3x4
```

### TBytes

```haxe
TBytes(size:Int)
```

### TSampler

```haxe
TSampler(dim:TexDimension, isArray:Bool)
```

### TRWTexture

```haxe
TRWTexture(dim:TexDimension, isArray:Bool, channels:Int)
```

### TMat2

```haxe
TMat2
```

### TStruct

```haxe
TStruct(vl:Array<TVar>)
```

### TFun

```haxe
TFun(variants:Array<FunType>)
```

### TArray

```haxe
TArray(t:Type, size:SizeDecl)
```

### TBuffer

```haxe
TBuffer(t:Type, size:SizeDecl, kind:BufferKind)
```

### TChannel

```haxe
TChannel(size:Int)
```

### TTextureHandle

```haxe
TTextureHandle
```

### TBufferHandle

```haxe
TBufferHandle
```

### TEnum

```haxe
TEnum(path:String)
```
