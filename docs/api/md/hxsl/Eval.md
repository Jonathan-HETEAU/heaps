# hxsl.Eval

**class** · package [`hxsl`](README.md) · source [`hxsl/Eval.hx`](../../../../hxsl/Eval.hx)

Evaluator : will substitute some variables (usually constants) by their runtime value and will
evaluate and reduce the expression, unroll loops, etc.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### varMap

```haxe
var varMap:Map<TVar, TVar>
```

### inlineCalls

```haxe
var inlineCalls:Bool
```

### unrollLoops

```haxe
var unrollLoops:Bool
```

### eliminateConditionals

```haxe
var eliminateConditionals:Bool
```

## Methods

### setConstant

```haxe
function setConstant(v:TVar, c:Const):Void
```

### eval

```haxe
function eval(s:ShaderData):ShaderData
```
