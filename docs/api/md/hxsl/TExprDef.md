# hxsl.TExprDef

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The typed shader expressions, produced by `hxsl.Checker`.

## Constructors

### TConst

```haxe
TConst(c:Const)
```

### TVar

```haxe
TVar(v:TVar)
```

### TGlobal

```haxe
TGlobal(g:TGlobal)
```

### TParenthesis

```haxe
TParenthesis(e:TExpr)
```

### TBlock

```haxe
TBlock(el:Array<TExpr>)
```

### TBinop

```haxe
TBinop(op:Binop, e1:TExpr, e2:TExpr)
```

### TUnop

```haxe
TUnop(op:Unop, e1:TExpr)
```

### TVarDecl

```haxe
TVarDecl(v:TVar, ?init:TExpr)
```

### TCall

```haxe
TCall(e:TExpr, args:Array<TExpr>)
```

### TSwiz

```haxe
TSwiz(e:TExpr, regs:Array<Component>)
```

### TIf

```haxe
TIf(econd:TExpr, eif:TExpr, eelse:Null<TExpr>)
```

### TDiscard

```haxe
TDiscard
```

### TReturn

```haxe
TReturn(?e:TExpr)
```

### TFor

```haxe
TFor(v:TVar, it:TExpr, loop:TExpr)
```

### TContinue

```haxe
TContinue
```

### TBreak

```haxe
TBreak
```

### TArray

```haxe
TArray(e:TExpr, index:TExpr)
```

### TArrayDecl

```haxe
TArrayDecl(el:Array<TExpr>)
```

### TSwitch

```haxe
TSwitch(e:TExpr, cases:Array<{ values:Array<TExpr>, expr:TExpr }>, def:Null<TExpr>)
```

### TWhile

```haxe
TWhile(e:TExpr, loop:TExpr, normalWhile:Bool)
```

### TMeta

```haxe
TMeta(m:String, args:Array<Const>, e:TExpr)
```

### TField

```haxe
TField(e:TExpr, name:String)
```

### TSyntax

```haxe
TSyntax(target:String, code:String, args:Array<SyntaxArg>)
```

Raw code inserted in the output of the given target (`"code"` inserts it for any target).
