# hxsl.ShaderList

**class** · package [`hxsl`](README.md) · source [`hxsl/ShaderList.hx`](../../../../hxsl/ShaderList.hx)

A linked list of shaders.

## Constructor

### new

```haxe
function new(s:Shader, ?n:ShaderList):Void
```

Creates an element for the shader, followed by `n`.

## Static variables

### MAX_LIST_SIZE

```haxe
static var MAX_LIST_SIZE:Int
```

If greater than `0`, `addSort` throws when a list exceeds this size (to detect shader leaks).

### ALLOW_DUPLICATES

```haxe
static var ALLOW_DUPLICATES:Bool
```

When `MAX_LIST_SIZE` is set, `addSort` throws if this is disabled and the list contains the same shader twice in a row.

## Static methods

### addSort

```haxe
static function addSort(s:Shader, shaders:ShaderList):ShaderList
```

Inserts the shader in the list sorted by ascending priority, and returns the new head of the list.

## Variables

### s

```haxe
var s:Shader
```

The shader.

### next

```haxe
var next:ShaderList
```

The next element, or `null`.

## Methods

### clone

```haxe
function clone(?last:ShaderList):Null<ShaderList>
```

Returns a copy of the list with cloned shaders, up to `last` (excluded).

### iterator

```haxe
inline function iterator():hxsl._ShaderList.ShaderIterator
```

Iterates over the shaders.

### iterateTo

```haxe
inline function iterateTo(s:ShaderList):hxsl._ShaderList.ShaderIterator
```

Iterates over the shaders, up to the element `s` (excluded).
