# hxsl.Clone

**class** · package [`hxsl`](README.md) · source [`hxsl/Clone.hx`](../../../../hxsl/Clone.hx)

Deep copies typed shaders, with new variable identifiers.

## Constructor

### new

```haxe
function new():Void
```

Creates a cloner.

## Static methods

### shaderData

```haxe
static function shaderData(s:ShaderData):ShaderData
```

Returns a copy of the shader.

## Variables

### varMap

```haxe
var varMap:Map<Int, TVar>
```

The copy of each variable, by the identifier of the original.

## Methods

### tvar

```haxe
function tvar(v:TVar):TVar
```

Returns the copy of the variable, created on the first call.

### tfun

```haxe
function tfun(f:TFunction):TFunction
```

Returns a copy of the function.

### ttype

```haxe
function ttype(t:Type):Type
```

Returns a copy of the type, with copied variables.

### texpr

```haxe
function texpr(e:TExpr):TExpr
```

Returns a copy of the expression.

### shader

```haxe
function shader(s:ShaderData):ShaderData
```

Returns a copy of the shader.
