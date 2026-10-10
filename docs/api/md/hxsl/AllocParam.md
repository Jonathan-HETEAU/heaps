# hxsl.AllocParam

**class** · package [`hxsl`](README.md) · module `hxsl.RuntimeShader` · source [`hxsl/RuntimeShader.hx`](../../../../hxsl/RuntimeShader.hx)

A parameter of a linked shader, and where its value is written.

## Constructor

### new

```haxe
function new(name:String, pos:Int, instance:Int, index:Int, type:Type):Void
```

Creates a parameter.

## Variables

### name

```haxe
var name:String
```

The name of the parameter.

### pos

```haxe
var pos:Int
```

The position of the value in the parameters buffer, in floats (or the index of a texture or buffer).

### instance

```haxe
var instance:Int
```

The index of the shader of the list that owns the parameter, or `-1` for a per object global.

### index

```haxe
var index:Int
```

The index of the parameter in its shader.

### type

```haxe
var type:Type
```

The type of the parameter.

### perObjectGlobal

```haxe
var perObjectGlobal:AllocGlobal
```

The global providing the value, for a per object global.

### next

```haxe
var next:AllocParam
```

The next parameter.

## Methods

### clone

```haxe
function clone(?resetGID:Bool = false):AllocParam
```

Returns a copy of the list of parameters from this one.
