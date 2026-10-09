# h3d.anim.LinearAnimation

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/LinearAnimation.hx`](../../../../../h3d/anim/LinearAnimation.hx)

Extends: [`h3d.anim.Animation`](Animation.md)

## Constructor

### new

```haxe
function new(name:String, frame:Int, sampling:Float):Void
```

## Methods

### addCurve

```haxe
function addCurve(objName:String, frames:Vector<LinearFrame>, hasPos:Bool, hasRot:Bool, hasScale:Bool):Void
```

### addAlphaCurve

```haxe
function addAlphaCurve(objName:String, alphas:Vector<Float>):Void
```

### addUVCurve

```haxe
function addUVCurve(objName:String, uvs:Vector<Float>):Void
```

### addPropCurve

```haxe
function addPropCurve(objName:String, propName:String, values:Vector<Float>):Void
```

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
