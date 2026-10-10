# hxsl.ExprDef

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The untyped shader expressions, as parsed from the shader source.

## Constructors

### EConst

```haxe
EConst(c:Const)
```

A constant.

### EIdent

```haxe
EIdent(i:String)
```

An identifier.

### EParenthesis

```haxe
EParenthesis(e:Expr)
```

An expression in parentheses.

### EField

```haxe
EField(e:Expr, f:String)
```

A field access `e.f`.

### EBinop

```haxe
EBinop(op:Binop, e1:Expr, e2:Expr)
```

A binary operation.

### EUnop

```haxe
EUnop(op:Unop, e1:Expr)
```

A unary operation.

### ECall

```haxe
ECall(e:Expr, args:Array<Expr>)
```

A call.

### EBlock

```haxe
EBlock(el:Array<Expr>)
```

A block of expressions.

### EVars

```haxe
EVars(v:Array<VarDecl>)
```

Variable declarations.

### EFunction

```haxe
EFunction(f:FunDecl)
```

A function declaration.

### EIf

```haxe
EIf(econd:Expr, eif:Expr, eelse:Null<Expr>)
```

A condition.

### EDiscard

```haxe
EDiscard
```

Discards the pixel.

### EFor

```haxe
EFor(v:String, loop:Expr, block:Expr)
```

A `for` loop.

### EReturn

```haxe
EReturn(?e:Null<Expr>)
```

A return.

### EBreak

```haxe
EBreak
```

A break.

### EContinue

```haxe
EContinue
```

A continue.

### EArray

```haxe
EArray(e:Expr, eindex:Expr)
```

An array access.

### EArrayDecl

```haxe
EArrayDecl(el:Array<Expr>)
```

An array declaration.

### ESwitch

```haxe
ESwitch(e:Expr, cases:Array<{ values:Array<Expr>, expr:Expr }>, def:Null<Expr>)
```

A switch.

### EWhile

```haxe
EWhile(cond:Expr, loop:Expr, normalWhile:Bool)
```

A `while` loop, or a `do ... while` loop if `normalWhile` is not set.

### EMeta

```haxe
EMeta(name:String, args:Array<Expr>, e:Expr)
```

An expression with metadata.
