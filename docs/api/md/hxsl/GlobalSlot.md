# hxsl.GlobalSlot

**abstract** · package [`hxsl`](README.md) · module `hxsl.Globals` · source [`hxsl/Globals.hx`](../../../../hxsl/Globals.hx)

Type parameters: `<T>`

A typed and fast access to a global shader variable.

Underlying type: `Int`

## Methods

### toInt

```haxe
inline function toInt():Int
```

Returns the identifier of the global.

### set

```haxe
inline function set(globals:Globals, v:hxsl.GlobalSlot.T):Void
```

Sets the value of the global.

### get

```haxe
inline function get(globals:Globals):hxsl.GlobalSlot.T
```

Returns the value of the global.
