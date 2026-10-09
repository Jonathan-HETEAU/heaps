# hxsl.Checker

**class** · package [`hxsl`](README.md) · source [`hxsl/Checker.hx`](../../../../hxsl/Checker.hx)

Type Checker : will take an untyped Expr and turn it into a typed TExpr, resolving identifiers and ensuring type safety.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### inits

```haxe
var inits:Array<{ v:TVar, e:TExpr }>
```

## Methods

### warning

```haxe
dynamic function warning(msg:String, pos:Position):Void
```

### loadShader

```haxe
dynamic function loadShader(path:String):Expr
```

### check

```haxe
function check(name:String, shader:Expr):ShaderData
```
