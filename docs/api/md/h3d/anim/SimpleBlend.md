# h3d.anim.SimpleBlend

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/SimpleBlend.hx`](../../../../../h3d/anim/SimpleBlend.hx)

Extends: [`h3d.anim.Transition`](Transition.md) → [`h3d.anim.Animation`](Animation.md)

## Constructor

### new

```haxe
function new(anim1:Animation, anim2:Animation, objects:Map<String, Bool>):Void
```

## Variables

### objectsMap

```haxe
var objectsMap:Map<String, Bool>
```

## Methods

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

### createInstance

```haxe
override function createInstance(base:h3d.scene.Object):SimpleBlend
```

## Inherited members

- from [`h3d.anim.Transition`](Transition.md): `anim1`, `anim2`, `unbind`, `setFrame`, `sync`, `bind`, `update`
- from [`h3d.anim.Animation`](Animation.md): `name`, `resourcePath`, `frameCount`, `sampling`, `frame`, `speed`, `onAnimEnd`, `onEvent`, `pause`, `loop`, `sourceEvents`, `events`, `getDuration`, `unbind`, `getEvents`, `getSourceEvents`, `setEvents`, `getEvent`, `addEvent`, `removeEvent`, `getEventTime`, `getObjects`, `setFrame`, `loadProps`, `createInstance`, `bind`, `getPropValue`, `sync`, `update`, `toString`
