# hxsl.FunctionKind

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The kind of a shader function.

## Constructors

### Vertex

```haxe
Vertex
```

The `vertex` entry point.

### Fragment

```haxe
Fragment
```

The `fragment` entry point.

### Init

```haxe
Init
```

An `__init__` function, computing variables before the entry points.

### Helper

```haxe
Helper
```

A helper function, called by the others.

### Main

```haxe
Main
```

The `main` entry point of a compute shader.
