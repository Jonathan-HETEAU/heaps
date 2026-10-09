# hxsl.SharedShader

**class** · package [`hxsl`](README.md) · source [`hxsl/SharedShader.hx`](../../../../hxsl/SharedShader.hx)

## Constructor

### new

```haxe
function new(src:String, ?module:String):Void
```

## Static variables

### UNROLL_LOOPS

```haxe
static var UNROLL_LOOPS:Bool
```

## Static methods

### compactMem

```haxe
static function compactMem(mem:compactMem.T):compactMem.T
```

## Variables

### data

```haxe
var data:ShaderData
```

### globals

```haxe
var globals:Array<ShaderGlobal>
```

### consts

```haxe
var consts:ShaderConst
```

## Methods

### getInstance

```haxe
inline function getInstance(constBits:Int):ShaderInstance
```
