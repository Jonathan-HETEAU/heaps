# h3d.anim.LinearAnimation

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/LinearAnimation.hx`](../../../../../h3d/anim/LinearAnimation.hx)

Extends: [`h3d.anim.Animation`](Animation.md)

An animation sampled at a fixed rate, with one keyframe per frame per object, linearly interpolated (quaternions are
interpolated for rotations). This is the format of the animations loaded from models.

## Constructor

### new

```haxe
function new(name:String, frame:Int, sampling:Float):Void
```

Creates an empty animation of `frame` frames at `sampling` frames per second.

## Methods

### addCurve

```haxe
function addCurve(objName:String, frames:Vector<LinearFrame>, hasPos:Bool, hasRot:Bool, hasScale:Bool):Void
```

Adds the transform keyframes of the object `objName`.

### addAlphaCurve

```haxe
function addAlphaCurve(objName:String, alphas:Vector<Float>):Void
```

Adds the alpha keyframes of the object `objName`.

### addUVCurve

```haxe
function addUVCurve(objName:String, uvs:Vector<Float>):Void
```

Adds the UV offset keyframes of the object `objName`.

### addPropCurve

```haxe
function addPropCurve(objName:String, propName:String, values:Vector<Float>):Void
```

Adds the keyframes of the custom property `propName` of the object `objName`.

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
