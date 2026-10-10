# hxsl.VarKind

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The kind of a shader variable.

## Constructors

### Global

```haxe
Global
```

A global variable, shared by all the shaders and set with `hxsl.Globals`.

### Input

```haxe
Input
```

A vertex attribute, read from the vertex buffers.

### Param

```haxe
Param
```

A parameter, set from Haxe code on the shader instance.

### Var

```haxe
Var
```

A variable shared by the shaders of a pass: written in the vertex shader, it is interpolated for the fragment shader.

### Local

```haxe
Local
```

A local variable.

### Output

```haxe
Output
```

An output of the shader (such as `output.position` or `output.color`).

### Function

```haxe
Function
```

A function.
