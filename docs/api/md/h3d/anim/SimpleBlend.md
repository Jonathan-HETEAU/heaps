# h3d.anim.SimpleBlend

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/SimpleBlend.hx`](../../../../../h3d/anim/SimpleBlend.hx)

Extends: [`h3d.anim.Transition`](Transition.md) → [`h3d.anim.Animation`](Animation.md)

Plays two animations at once on different parts of a skeleton (for instance the legs from a walk animation and the
upper body from an attack animation).

## Constructor

### new

```haxe
function new(anim1:Animation, anim2:Animation, objects:Map<String, Bool>):Void
```

Creates a blend of two animation instances. See `objectsMap`.

## Variables

### objectsMap

```haxe
var objectsMap:Map<String, Bool>
```

The objects (or joints) animated by `anim2`: the objects mapped to `true` take `anim2`, the others take `anim1`.

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
