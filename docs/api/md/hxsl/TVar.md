# hxsl.TVar

**class** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

A typed shader variable.

## Constructor

### new

```haxe
function new(id:Int, name:String, type:Type, kind:VarKind, ?parent:TVar, ?qualifiers:Array<VarQualifier>):Void
```

- **param** `qualifiers` The qualifiers of the variable.
- **param** `parent` The variable containing this one, for the fields of a structure.
- **param** `kind` The kind of the variable.
- **param** `type` The type of the variable.
- **param** `name` The name of the variable.
- **param** `id` The unique identifier of the variable.

## Variables

### id

```haxe
var id:Int
```

The unique identifier of the variable.

### name

```haxe
var name:String
```

The name of the variable.

### type

```haxe
var type:Type
```

The type of the variable.

### kind

```haxe
var kind:VarKind
```

The kind of the variable.

### parent

```haxe
var parent:TVar
```

The variable containing this one, for the fields of a structure.

### qualifiers

```haxe
var qualifiers:Null<Array<VarQualifier>>
```

The qualifiers of the variable.
