# h3d.anim.Transition

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/Transition.hx`](../../../../../h3d/anim/Transition.hx)

Extends: [`h3d.anim.Animation`](Animation.md)

Subclasses: [`h3d.anim.SimpleBlend`](SimpleBlend.md), [`h3d.anim.SmoothTransition`](SmoothTransition.md)

Base class of the animations combining two animations (`anim1` and `anim2`).
Its frame count is the smallest common multiple of the frame counts of both.

## Constructor

### new

```haxe
function new(transitionName:String, anim1:Animation, anim2:Animation):Void
```

Creates a transition between two animations.

## Variables

### anim1

```haxe
var anim1:Animation
```

The first animation.

### anim2

```haxe
var anim2:Animation
```

The second animation.

## Methods

### unbind

```haxe
override function unbind(objectName:String):Void
```

### setFrame

```haxe
override function setFrame(f:Float):Void
```

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

### bind

```haxe
override function bind(base:h3d.scene.Object):Void
```

### update

```haxe
override function update(dt:Float):Float
```

## Inherited members

- from [`h3d.anim.Animation`](Animation.md): `name`, `resourcePath`, `frameCount`, `sampling`, `frame`, `speed`, `onAnimEnd`, `onEvent`, `pause`, `loop`, `sourceEvents`, `events`, `getDuration`, `unbind`, `getEvents`, `getSourceEvents`, `setEvents`, `getEvent`, `addEvent`, `removeEvent`, `getEventTime`, `getObjects`, `setFrame`, `loadProps`, `createInstance`, `bind`, `getPropValue`, `sync`, `update`, `toString`
