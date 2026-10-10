# hxsl.Eval

**class** · package [`hxsl`](README.md) · source [`hxsl/Eval.hx`](../../../../hxsl/Eval.hx)

Evaluator : will substitute some variables (usually constants) by their runtime value and will
evaluate and reduce the expression, unroll loops, etc.

## Constructor

### new

```haxe
function new():Void
```

Creates an evaluator.

## Variables

### varMap

```haxe
var varMap:Map<TVar, TVar>
```

The evaluated copy of each variable.

### inlineCalls

```haxe
var inlineCalls:Bool
```

If set, the calls to helper functions are inlined.

### unrollLoops

```haxe
var unrollLoops:Bool
```

If set, the loops over constant ranges are unrolled.

### eliminateConditionals

```haxe
var eliminateConditionals:Bool
```

If set, the conditional values (`if` expressions with an `else`) are replaced by a `mix`.

## Methods

### setConstant

```haxe
function setConstant(v:TVar, c:Const):Void
```

Sets the value of a constant variable.

### eval

```haxe
function eval(s:ShaderData):ShaderData
```

Returns the shader with the constants replaced by their values and the expressions reduced.
