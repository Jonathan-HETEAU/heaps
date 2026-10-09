# hxsl.ShaderList

**class** · package [`hxsl`](README.md) · source [`hxsl/ShaderList.hx`](../../../../hxsl/ShaderList.hx)

## Constructor

### new

```haxe
function new(s:Shader, ?n:ShaderList):Void
```

## Static variables

### MAX_LIST_SIZE

```haxe
static var MAX_LIST_SIZE:Int
```

### ALLOW_DUPLICATES

```haxe
static var ALLOW_DUPLICATES:Bool
```

## Static methods

### addSort

```haxe
static function addSort(s:Shader, shaders:ShaderList):ShaderList
```

## Variables

### s

```haxe
var s:Shader
```

### next

```haxe
var next:ShaderList
```

## Methods

### clone

```haxe
function clone(?last:ShaderList):Null<ShaderList>
```

### iterator

```haxe
inline function iterator():hxsl._ShaderList.ShaderIterator
```

### iterateTo

```haxe
inline function iterateTo(s:ShaderList):hxsl._ShaderList.ShaderIterator
```
