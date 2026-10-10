# hxd.fmt.spine.Bone

**class** · package [`hxd.fmt.spine`](README.md) · module `hxd.fmt.spine.Data` · source [`hxd/fmt/spine/Data.hx`](../../../../../../hxd/fmt/spine/Data.hx)

A bone of a Spine skeleton.

## Constructor

### new

```haxe
function new():Void
```

Creates a bone.

## Variables

### name

```haxe
var name:String
```

The name of the bone.

### parent

```haxe
var parent:Bone
```

The parent bone, or `null`.

### childs

```haxe
var childs:Array<Bone>
```

The children bones.

### x

```haxe
var x:Float
```

The X position, relative to the parent.

### y

```haxe
var y:Float
```

The Y position, relative to the parent.

### rotation

```haxe
var rotation:Float
```

The rotation, in radians.

### scaleX

```haxe
var scaleX:Float
```

The X scale.

### scaleY

```haxe
var scaleY:Float
```

The Y scale.

### length

```haxe
var length:Float
```

The length of the bone.

### flipX

```haxe
var flipX:Bool
```

Tells if the bone is flipped horizontally.

### flipY

```haxe
var flipY:Bool
```

Tells if the bone is flipped vertically.

### inheritScale

```haxe
var inheritScale:Bool
```

Tells if the bone inherits the scale of its parent.

### inheritRotation

```haxe
var inheritRotation:Bool
```

Tells if the bone inherits the rotation of its parent.
