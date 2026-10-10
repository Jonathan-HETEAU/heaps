# hxsl.VarDecl

**typedef** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

A variable declaration in the shader source.

## Fields

### type

```haxe
var type:Null<Type>
```

The type of the variable, or `null` to infer it.

### qualifiers

```haxe
var qualifiers:Array<VarQualifier>
```

The qualifiers of the variable.

### name

```haxe
var name:String
```

The name of the variable.

### kind

```haxe
var kind:Null<VarKind>
```

The kind of the variable, or `null` for a local variable.

### expr

```haxe
var expr:Null<Expr>
```

The initial value of the variable.
