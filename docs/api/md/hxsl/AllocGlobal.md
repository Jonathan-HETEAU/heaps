# hxsl.AllocGlobal

**class** · package [`hxsl`](README.md) · module `hxsl.RuntimeShader` · source [`hxsl/RuntimeShader.hx`](../../../../hxsl/RuntimeShader.hx)

A global used by a linked shader, and where its value is written.

## Constructor

### new

```haxe
function new(pos:Int, path:String, type:Type):Void
```

Creates a global.

## Variables

### pos

```haxe
var pos:Int
```

The position of the value in the globals buffer, in floats.

### gid

```haxe
var gid:Int
```

The identifier of the global (see `Globals.allocID`).

### path

```haxe
var path:String
```

The path of the global.

### type

```haxe
var type:Type
```

The type of the global.

### next

```haxe
var next:AllocGlobal
```

The next global.

## Methods

### clone

```haxe
function clone(?resetGID:Bool = false):AllocGlobal
```

Returns a copy of the list of globals from this one. If `resetGID` is set, the identifiers are reset to `0`.
