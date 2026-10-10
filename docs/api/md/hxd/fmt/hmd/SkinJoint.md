# hxd.fmt.hmd.SkinJoint

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

A joint of a skin.

## Constructor

### new

```haxe
function new():Void
```

Creates a joint.

## Variables

### name

```haxe
var name:String
```

The name of the joint.

### props

```haxe
var props:Properties
```

The properties of the joint.

### parent

```haxe
var parent:Index<SkinJoint>
```

The index of the parent joint, or `-1`.

### position

```haxe
var position:Position
```

The default transform of the joint, relative to its parent.

### bind

```haxe
var bind:Int
```

The index of the joint in the skinning matrices, or `-1` if no vertex uses it.

### transpos

```haxe
var transpos:Null<Position>
```

The inverse bind transform of the joint.
