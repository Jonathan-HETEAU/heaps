# hxd.fmt.hmd.Animation

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

An animation stored in the file.

## Constructor

### new

```haxe
function new():Void
```

Creates an animation.

## Variables

### name

```haxe
var name:String
```

The name of the animation.

### props

```haxe
var props:Properties
```

The properties of the animation.

### frames

```haxe
var frames:Int
```

The number of frames.

### sampling

```haxe
var sampling:Float
```

The number of frames per second.

### speed

```haxe
var speed:Float
```

The playback speed.

### loop

```haxe
var loop:Bool
```

Tells if the animation loops.

### objects

```haxe
var objects:Array<AnimationObject>
```

The animated objects.

### events

```haxe
var events:Null<Array<AnimationEvent>>
```

The events, or `null`.

### dataPosition

```haxe
var dataPosition:DataPosition
```

The position of the frames in the data.
