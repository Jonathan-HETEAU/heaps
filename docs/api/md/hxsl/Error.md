# hxsl.Error

**class** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

A shader compilation error.

## Constructor

### new

```haxe
function new(msg:String, pos:Position):Void
```

Creates an error.

## Static methods

### t

```haxe
static function t(msg:String, pos:Position):Dynamic
```

Throws an error.

## Variables

### msg

```haxe
var msg:String
```

The error message.

### pos

```haxe
var pos:Position
```

The position of the error in the shader source.

## Methods

### toString

```haxe
function toString():String
```

Returns the message and position of the error.
