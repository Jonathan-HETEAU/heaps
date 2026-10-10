# hxsl.SearchMap

**class** · package [`hxsl`](README.md) · module `hxsl.Cache` · source [`hxsl/Cache.hx`](../../../../hxsl/Cache.hx)

A node of the tree caching the linked shaders, indexed by the shader instance identifiers.

## Constructor

### new

```haxe
function new():Void
```

Creates a node.

## Variables

### linked

```haxe
var linked:RuntimeShader
```

The shader linked for the list of instances leading to this node.

## Methods

### set

```haxe
function set(id:Int, s:SearchMap):Void
```

Sets the child node of the given instance identifier.

### get

```haxe
inline function get(id:Int):Null<SearchMap>
```

Returns the child node of the given instance identifier.
