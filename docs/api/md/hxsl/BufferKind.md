# hxsl.BufferKind

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The kind of a shader buffer.

## Constructors

### Uniform

```haxe
Uniform
```

A uniform (constant) buffer.

### Storage

```haxe
Storage
```

A read-only storage buffer.

### RW

```haxe
RW
```

A read-write storage buffer.

### Partial

```haxe
Partial
```

A uniform buffer declaring only some fields of its format: the format of the buffer set at runtime is a compile time constant.

### StoragePartial

```haxe
StoragePartial
```

A read-only storage buffer declaring only some fields of its format (see `Partial`).

### RWPartial

```haxe
RWPartial
```

A read-write storage buffer declaring only some fields of its format (see `Partial`).
