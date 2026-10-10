# hxsl.Checker

**class** · package [`hxsl`](README.md) · source [`hxsl/Checker.hx`](../../../../hxsl/Checker.hx)

Type Checker : will take an untyped Expr and turn it into a typed TExpr, resolving identifiers and ensuring type safety.

## Constructor

### new

```haxe
function new():Void
```

Creates a type checker.

## Variables

### inits

```haxe
var inits:Array<{ v:TVar, e:TExpr }>
```

The initial values of the non local variables declared in the shader.

## Methods

### warning

```haxe
dynamic function warning(msg:String, pos:Position):Void
```

Called with the warnings of the type checking.

### loadShader

```haxe
dynamic function loadShader(path:String):Expr
```

Returns the source of the shader of the given path, for the shaders that extend or borrow other shaders. Set by the caller.

### check

```haxe
function check(name:String, shader:Expr):ShaderData
```

Types the shader source and returns the typed shader. Throws an `Ast.Error` on errors.
