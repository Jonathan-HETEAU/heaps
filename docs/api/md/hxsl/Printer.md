# hxsl.Printer

**class** · package [`hxsl`](README.md) · source [`hxsl/Printer.hx`](../../../../hxsl/Printer.hx)

## Constructor

### new

```haxe
function new(?varId:Bool = false):Void
```

## Static methods

### opStr

```haxe
static function opStr(op:Binop):String
```

### toString

```haxe
static function toString(e:TExpr, ?varId:Bool = false):String
```

### shaderToString

```haxe
static function shaderToString(s:ShaderData, ?varId:Bool = false):String
```

### check

```haxe
static function check(s:ShaderData, ?from:Array<ShaderData>):Void
```

## Methods

### shaderString

```haxe
function shaderString(s:ShaderData):String
```

### varString

```haxe
function varString(v:TVar):String
```

### funString

```haxe
function funString(f:TFunction):String
```

### exprString

```haxe
function exprString(e:TExpr):String
```
