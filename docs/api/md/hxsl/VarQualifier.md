# hxsl.VarQualifier

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The qualifiers of a shader variable, set with metadata in the shader source (such as `@const` or `@range`).

## Constructors

### Const

```haxe
Const(?max:Int)
```

The parameter is a compile time constant: each value produces a shader variant. `max` is the maximum value of an integer.

### Private

```haxe
Private
```

The variable is not shared with the other shaders.

### Nullable

```haxe
Nullable
```

The texture parameter can be `null`.

### PerObject

```haxe
PerObject
```

The global is set for each object.

### Name

```haxe
Name(n:String)
```

The name of the variable in the generated code.

### Shared

```haxe
Shared
```

The parameter is shared by all the shaders declaring it with the same name, instead of being separate for each shader.

### Precision

```haxe
Precision(p:Prec)
```

The precision of the variable.

### Range

```haxe
Range(min:Float, max:Float)
```

The range of the value, for editors.

### Ignore

```haxe
Ignore
```

The variable is ignored in reflection (inspector).

### PerInstance

```haxe
PerInstance(v:Int)
```

The input changes every `v` instances (instanced rendering).

### Doc

```haxe
Doc(s:String)
```

The documentation of the variable, for editors.

### Borrow

```haxe
Borrow(source:String)
```

The local variable is read from the shader of the given path.

### Sampler

```haxe
Sampler(name:String)
```

The names of the samplers of the texture.

### Final

```haxe
Final
```

The local variable is assigned only once, at its declaration.

### Flat

```haxe
Flat
```

The variable is not interpolated between the vertex and the fragment shader.

### NoVar

```haxe
NoVar
```

The local variable is not passed from the vertex to the fragment shader.

### Enum

```haxe
Enum(path:String, constructors:Array<String>)
```

The parameter is a Haxe enum, stored as the index of its constructor.
