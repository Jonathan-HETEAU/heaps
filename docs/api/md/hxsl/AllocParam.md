# hxsl.AllocParam

**class** · package [`hxsl`](README.md) · module `hxsl.RuntimeShader` · source [`hxsl/RuntimeShader.hx`](../../../../hxsl/RuntimeShader.hx)

## Constructor

### new

```haxe
function new(name:String, pos:Int, instance:Int, index:Int, type:Type):Void
```

## Variables

### name

```haxe
var name:String
```

### pos

```haxe
var pos:Int
```

### instance

```haxe
var instance:Int
```

### index

```haxe
var index:Int
```

### type

```haxe
var type:Type
```

### perObjectGlobal

```haxe
var perObjectGlobal:AllocGlobal
```

### next

```haxe
var next:AllocParam
```

## Methods

### clone

```haxe
function clone(?resetGID:Bool = false):AllocParam
```
