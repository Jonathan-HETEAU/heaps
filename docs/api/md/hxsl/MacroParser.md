# hxsl.MacroParser

**class** · package [`hxsl`](README.md) · source [`hxsl/MacroParser.hx`](../../../../hxsl/MacroParser.hx)

Converts the Haxe expressions of a shader source (`SRC`) into the untyped shader AST.

## Constructor

### new

```haxe
function new():Void
```

Creates a parser.

## Methods

### resolveEnum

```haxe
dynamic function resolveEnum(t:ComplexType, pos:Position):Null<{ path:String, constructors:Array<String> }>
```

Returns the path and constructors of an enum type used in the shader. Set by `hxsl.Macros` at compile time; returns `null` for runtime parsing (live reload, Hide shader loader).

### parseType

```haxe
function parseType(t:ComplexType, pos:Position):Type
```

Converts a Haxe type to a shader type.

### parseExpr

```haxe
function parseExpr(e:Expr):Expr
```

Converts a Haxe expression to a shader expression.
