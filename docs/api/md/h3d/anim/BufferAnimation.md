# h3d.anim.BufferAnimation

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/BufferAnimation.hx`](../../../../../h3d/anim/BufferAnimation.hx)

Extends: [`h3d.anim.Animation`](Animation.md)

An animation whose keyframes are stored in a single packed float buffer, as loaded from HMD files.
More compact and faster to load than a `LinearAnimation`.

## Constructor

### new

```haxe
function new(name:String, frame:Int, sampling:Float):Void
```

Creates an empty animation of `frame` frames at `sampling` frames per second.

## Methods

### setData

```haxe
function setData(data:hxd.impl.Float32Array, stride:Int):Void
```

Sets the packed animation data and the number of floats per frame.

### addObject

```haxe
function addObject(objName:String, offset:Int):BufferObject
```

Adds an animated object whose values start at `offset` in each frame, and returns it.

### getPropValue

```haxe
override function getPropValue(objName:String, propName:String):Null<Float>
```

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

## Inherited members

- from [`h3d.anim.Animation`](Animation.md): `name`, `resourcePath`, `frameCount`, `sampling`, `frame`, `speed`, `onAnimEnd`, `onEvent`, `pause`, `loop`, `sourceEvents`, `events`, `getDuration`, `unbind`, `getEvents`, `getSourceEvents`, `setEvents`, `getEvent`, `addEvent`, `removeEvent`, `getEventTime`, `getObjects`, `setFrame`, `loadProps`, `createInstance`, `bind`, `getPropValue`, `sync`, `update`, `toString`
