# h3d.anim.SmoothTarget

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/SmoothTarget.hx`](../../../../../h3d/anim/SmoothTarget.hx)

Extends: [`h3d.anim.Animation`](Animation.md)

## Constructor

### new

```haxe
function new(target:Animation, ?duration:Float = 0.5):Void
```

## Variables

### target

```haxe
var target:Animation
```

### blend

```haxe
var blend:Float
```

### duration

```haxe
var duration:Float
```

### ignoreTranslate

```haxe
var ignoreTranslate:Bool
```

### easing

```haxe
var easing:Float
```

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
