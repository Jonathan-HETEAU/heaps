# hxsl.Printer

**class** · package [`hxsl`](README.md) · source [`hxsl/Printer.hx`](../../../../hxsl/Printer.hx)

Prints typed shaders as HxSL source code, for debugging.

## Constructor

### new

```haxe
function new(?varId:Bool = false):Void
```

Creates a printer. If `varId` is set, the variable identifiers are printed.

## Static methods

### opStr

```haxe
static function opStr(op:Binop):String
```

Returns the operator as source code.

### toString

```haxe
static function toString(e:TExpr, ?varId:Bool = false):String
```

Returns the expression as source code.

### shaderToString

```haxe
static function shaderToString(s:ShaderData, ?varId:Bool = false):String
```

Returns the shader as source code.

### check

```haxe
static function check(s:ShaderData, ?from:Array<ShaderData>):Void
```

Checks the consistency of the variables of the shader (debug).

## Methods

### shaderString

```haxe
function shaderString(s:ShaderData):String
```

Returns the shader as source code.

### varString

```haxe
function varString(v:TVar):String
```

Returns the declaration of the variable.

### funString

```haxe
function funString(f:TFunction):String
```

Returns the function as source code.

### exprString

```haxe
function exprString(e:TExpr):String
```

Returns the expression as source code.
