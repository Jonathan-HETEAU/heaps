# hxsl.ShaderGlobal

**class** · package [`hxsl`](README.md) · module `hxsl.SharedShader` · source [`hxsl/SharedShader.hx`](../../../../hxsl/SharedShader.hx)

A global variable used by a shader.

## Constructor

### new

```haxe
function new(v:TVar, gid:Int):Void
```

Creates a global.

## Variables

### v

```haxe
var v:TVar
```

The variable.

### globalId

```haxe
var globalId:Int
```

The identifier of the global (see `Globals.allocID`).
