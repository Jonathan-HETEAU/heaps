# h3d.anim.Event

**typedef** · package [`h3d.anim`](README.md) · module `h3d.anim.Animation` · source [`h3d/anim/Animation.hx`](../../../../../h3d/anim/Animation.hx)

An event of an animation (such as a footstep), triggered when the animation reaches its frame (see `Animation.onEvent`).

## Fields

### originalEvent

```haxe
var ?originalEvent:Null<Event>
```

The event of the source animation that this one overrides, if it was modified by the animation properties.

### name

```haxe
var name:String
```

The name of the event.

### frame

```haxe
var frame:Int
```

The frame of the event.
