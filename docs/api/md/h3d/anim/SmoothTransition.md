# h3d.anim.SmoothTransition

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/SmoothTransition.hx`](../../../../../h3d/anim/SmoothTransition.hx)

Extends: [`h3d.anim.Transition`](Transition.md) → [`h3d.anim.Animation`](Animation.md)

## Constructor

### new

```haxe
function new(current:Animation, target:Animation, duration:Float):Void
```

## Variables

### blendFactor

```haxe
var blendFactor:Float
```

## Methods

### bind

```haxe
override function bind(base:h3d.scene.Object):Void
```

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

### update

```haxe
override function update(dt:Float):Float
```

## Inherited members

- from [`h3d.anim.Transition`](Transition.md): `anim1`, `anim2`, `unbind`, `setFrame`, `sync`, `bind`, `update`
- from [`h3d.anim.Animation`](Animation.md): `name`, `resourcePath`, `frameCount`, `sampling`, `frame`, `speed`, `onAnimEnd`, `onEvent`, `pause`, `loop`, `sourceEvents`, `events`, `getDuration`, `unbind`, `getEvents`, `getSourceEvents`, `setEvents`, `getEvent`, `addEvent`, `removeEvent`, `getEventTime`, `getObjects`, `setFrame`, `loadProps`, `createInstance`, `bind`, `getPropValue`, `sync`, `update`, `toString`
