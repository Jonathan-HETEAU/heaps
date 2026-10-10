# hxd.fmt.hmd.AnimationObject

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

An object animated by an animation.

## Constructor

### new

```haxe
function new():Void
```

Creates an animated object.

## Variables

### name

```haxe
var name:String
```

The name of the object.

### flags

```haxe
var flags:EnumFlags<AnimationFlag>
```

The animated components.

### props

```haxe
var props:Array<String>
```

The names of the animated properties.

## Methods

### getStride

```haxe
function getStride():Int
```

Returns the number of floats per frame.
