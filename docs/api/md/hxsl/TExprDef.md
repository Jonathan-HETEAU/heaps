# hxsl.TExprDef

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The typed shader expressions, produced by `hxsl.Checker`.

## Constructors

### TConst

```haxe
TConst(c:Const)
```

A constant.

### TVar

```haxe
TVar(v:TVar)
```

A variable.

### TGlobal

```haxe
TGlobal(g:TGlobal)
```

A built-in function or value.

### TParenthesis

```haxe
TParenthesis(e:TExpr)
```

An expression in parentheses.

### TBlock

```haxe
TBlock(el:Array<TExpr>)
```

A block of expressions.

### TBinop

```haxe
TBinop(op:Binop, e1:TExpr, e2:TExpr)
```

A binary operation.

### TUnop

```haxe
TUnop(op:Unop, e1:TExpr)
```

A unary operation.

### TVarDecl

```haxe
TVarDecl(v:TVar, ?init:TExpr)
```

A variable declaration.

### TCall

```haxe
TCall(e:TExpr, args:Array<TExpr>)
```

A call.

### TSwiz

```haxe
TSwiz(e:TExpr, regs:Array<Component>)
```

A swizzle (`e.xyz`).

### TIf

```haxe
TIf(econd:TExpr, eif:TExpr, eelse:Null<TExpr>)
```

A condition.

### TDiscard

```haxe
TDiscard
```

Discards the pixel.

### TReturn

```haxe
TReturn(?e:TExpr)
```

A return.

### TFor

```haxe
TFor(v:TVar, it:TExpr, loop:TExpr)
```

A `for` loop.

### TContinue

```haxe
TContinue
```

A continue.

### TBreak

```haxe
TBreak
```

A break.

### TArray

```haxe
TArray(e:TExpr, index:TExpr)
```

An array access.

### TArrayDecl

```haxe
TArrayDecl(el:Array<TExpr>)
```

An array declaration.

### TSwitch

```haxe
TSwitch(e:TExpr, cases:Array<{ values:Array<TExpr>, expr:TExpr }>, def:Null<TExpr>)
```

A switch.

### TWhile

```haxe
TWhile(e:TExpr, loop:TExpr, normalWhile:Bool)
```

A `while` loop, or a `do ... while` loop if `normalWhile` is not set.

### TMeta

```haxe
TMeta(m:String, args:Array<Const>, e:TExpr)
```

An expression with metadata.

### TField

```haxe
TField(e:TExpr, name:String)
```

A field access on a structure inside an array.

### TSyntax

```haxe
TSyntax(target:String, code:String, args:Array<SyntaxArg>)
```

Raw code inserted in the output of the given target (`"code"` inserts it for any target).
