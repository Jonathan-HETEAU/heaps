# hxd.fmt.hmd.Skin

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

The skeleton of a skinned model.

## Constructor

### new

```haxe
function new():Void
```

Creates a skin.

## Variables

### name

```haxe
var name:String
```

The name of the skin.

### props

```haxe
var props:Properties
```

The properties of the skin.

### joints

```haxe
var joints:Array<SkinJoint>
```

The joints.

### split

```haxe
var split:Null<Array<SkinSplit>>
```

The parts of the skin, or `null` if it is drawn at once.
