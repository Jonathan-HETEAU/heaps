# h3d.anim.BlendSpace2DPoint

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.BlendSpace2D` · source [`h3d/anim/BlendSpace2D.hx`](../../../../../h3d/anim/BlendSpace2D.hx)

A point of a `BlendSpace2D`: an animation placed at a position of the blend space.

## Constructor

### new

```haxe
function new(x:Float, y:Float, animation:Animation, ?keepSync:Bool = true):Void
```

Creates a point.

## Variables

### x

```haxe
var x:Float
```

The X position of the point.

### y

```haxe
var y:Float
```

The Y position of the point.

### animation

```haxe
var animation:Animation
```

The animation played at this point.

### keepSync

```haxe
var keepSync:Bool
```

If `true`, the animation is synchronized with the normalized time of the blend space; otherwise it plays at its own pace.
