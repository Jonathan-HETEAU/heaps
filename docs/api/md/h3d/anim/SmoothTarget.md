# h3d.anim.SmoothTarget

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/SmoothTarget.hx`](../../../../../h3d/anim/SmoothTarget.hx)

Extends: [`h3d.anim.Animation`](Animation.md)

Smoothly blends from the current pose of the objects to an animation, over `duration` seconds.
`onAnimEnd` is called when the blend is complete; the target animation can then be played directly.

## Constructor

### new

```haxe
function new(target:Animation, ?duration:Float = 0.5):Void
```

Creates a blend to `target`, which must be an animation instance.

## Variables

### target

```haxe
var target:Animation
```

The animation instance blended to.

### blend

```haxe
var blend:Float
```

The blend progress, from `0` (current pose) to `1` (target).

### duration

```haxe
var duration:Float
```

The duration of the blend, in seconds.

### ignoreTranslate

```haxe
var ignoreTranslate:Bool
```

If `true`, the translations of the target are applied directly, only rotations and scales are blended.

### easing

```haxe
var easing:Float
```

The easing of the blend (see `hxd.Math.easeFactor`).

## Methods

### update

```haxe
override function update(dt:Float):Float
```

### setFrame

```haxe
override function setFrame(f:Float):Void
```

### getEvents

```haxe
override function getEvents():Array<Array<Event>>
```

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

## Inherited members

- from [`h3d.anim.Animation`](Animation.md): `name`, `resourcePath`, `frameCount`, `sampling`, `frame`, `speed`, `onAnimEnd`, `onEvent`, `pause`, `loop`, `sourceEvents`, `events`, `getDuration`, `unbind`, `getEvents`, `getSourceEvents`, `setEvents`, `getEvent`, `addEvent`, `removeEvent`, `getEventTime`, `getObjects`, `setFrame`, `loadProps`, `createInstance`, `bind`, `getPropValue`, `sync`, `update`, `toString`
