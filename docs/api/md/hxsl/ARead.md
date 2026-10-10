# hxsl.ARead

**enum** · package [`hxsl`](README.md) · module `hxsl.Flatten` · source [`hxsl/Flatten.hx`](../../../../hxsl/Flatten.hx)

How a flattened variable is read: at a fixed position, or at an offset computed at runtime (array access).

## Constructors

### AIndex

```haxe
AIndex(a:hxsl._Flatten.Alloc)
```

### AOffset

```haxe
AOffset(a:hxsl._Flatten.Alloc, stride:Int, delta:TExpr)
```
