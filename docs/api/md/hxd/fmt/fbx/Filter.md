# hxd.fmt.fbx.Filter

**class** · package [`hxd.fmt.fbx`](README.md) · source [`hxd/fmt/fbx/Filter.hx`](../../../../../../hxd/fmt/fbx/Filter.hx)

Removes nodes from FBX data, with their connections.

## Constructor

### new

```haxe
function new():Void
```

Creates a filter.

## Methods

### ignore

```haxe
function ignore(path:String):Void
```

Removes the nodes at the path (node names separated by dots).

### filter

```haxe
function filter(f:FbxNode):FbxNode
```

Returns the FBX data without the ignored nodes and their connections.
