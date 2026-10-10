# hxsl.FunDecl

**typedef** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

A function declaration in the shader source.

## Fields

### ret

```haxe
var ret:Null<Type>
```

The return type, or `null` to infer it.

### name

```haxe
var name:String
```

The name of the function.

### expr

```haxe
var expr:Expr
```

The body of the function.

### args

```haxe
var args:Array<VarDecl>
```

The arguments of the function.
