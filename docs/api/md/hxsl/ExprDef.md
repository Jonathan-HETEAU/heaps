# hxsl.ExprDef

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The untyped shader expressions, as parsed from the shader source.

## Constructors

### EConst

```haxe
EConst(c:Const)
```

### EIdent

```haxe
EIdent(i:String)
```

### EParenthesis

```haxe
EParenthesis(e:Expr)
```

### EField

```haxe
EField(e:Expr, f:String)
```

### EBinop

```haxe
EBinop(op:Binop, e1:Expr, e2:Expr)
```

### EUnop

```haxe
EUnop(op:Unop, e1:Expr)
```

### ECall

```haxe
ECall(e:Expr, args:Array<Expr>)
```

### EBlock

```haxe
EBlock(el:Array<Expr>)
```

### EVars

```haxe
EVars(v:Array<VarDecl>)
```

### EFunction

```haxe
EFunction(f:FunDecl)
```

### EIf

```haxe
EIf(econd:Expr, eif:Expr, eelse:Null<Expr>)
```

### EDiscard

```haxe
EDiscard
```

### EFor

```haxe
EFor(v:String, loop:Expr, block:Expr)
```

### EReturn

```haxe
EReturn(?e:Null<Expr>)
```

### EBreak

```haxe
EBreak
```

### EContinue

```haxe
EContinue
```

### EArray

```haxe
EArray(e:Expr, eindex:Expr)
```

### EArrayDecl

```haxe
EArrayDecl(el:Array<Expr>)
```

### ESwitch

```haxe
ESwitch(e:Expr, cases:Array<{ values:Array<Expr>, expr:Expr }>, def:Null<Expr>)
```

### EWhile

```haxe
EWhile(cond:Expr, loop:Expr, normalWhile:Bool)
```

### EMeta

```haxe
EMeta(name:String, args:Array<Expr>, e:Expr)
```
