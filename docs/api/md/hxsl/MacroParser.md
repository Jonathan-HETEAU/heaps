# hxsl.MacroParser

**class** · package [`hxsl`](README.md) · source [`hxsl/MacroParser.hx`](../../../../hxsl/MacroParser.hx)

## Constructor

### new

```haxe
function new():Void
```

## Methods

### resolveEnum

```haxe
dynamic function resolveEnum(t:ComplexType, pos:Position):Null<{ path:String, constructors:Array<String> }>
```

### parseType

```haxe
function parseType(t:ComplexType, pos:Position):Type
```

### parseExpr

```haxe
function parseExpr(e:Expr):Expr
```
