# h3d.anim.Animation

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/Animation.hx`](../../../../../h3d/anim/Animation.hx)

Subclasses: [`h3d.anim.BlendSpace2D`](BlendSpace2D.md), [`h3d.anim.BufferAnimation`](BufferAnimation.md), [`h3d.anim.LinearAnimation`](LinearAnimation.md), [`h3d.anim.SmoothTarget`](SmoothTarget.md), [`h3d.anim.Transition`](Transition.md)

## Static methods

### isAnimation

```haxe
static function isAnimation(filename:String):Bool
```

## Variables

### name

```haxe
var name:String
```

### resourcePath

```haxe
var resourcePath:String
```

### frameCount

```haxe
var frameCount(default, null):Int
```

### sampling

```haxe
var sampling(default, null):Float
```

### frame

```haxe
var frame(default, null):Float
```

### speed

```haxe
var speed:Float
```

### onAnimEnd

```haxe
var onAnimEnd:() -> Void
```

### onEvent

```haxe
var onEvent:() -> Void
```

### pause

```haxe
var pause:Bool
```

### loop

```haxe
var loop:Bool
```

### sourceEvents

```haxe
var sourceEvents(default, null):Array<Event>
```

### events

```haxe
var events(default, null):Array<Array<Event>>
```

## Methods

### getDuration

```haxe
function getDuration():Float
```

### unbind

```haxe
function unbind(objectName:String):Void
```

### getEvents

```haxe
function getEvents():Array<Array<Event>>
```

### getSourceEvents

```haxe
function getSourceEvents():Array<Event>
```

### setEvents

```haxe
function setEvents(evts:Array<Event>):Void
```

### getEvent

```haxe
function getEvent(frame:Int, name:String):Event
```

### addEvent

```haxe
function addEvent(frame:Int, name:String, ?originalEvent:Null<Event>):Void
```

### removeEvent

```haxe
function removeEvent(frame:Int, name:String):Void
```

### getEventTime

```haxe
function getEventTime(name:String):Null<Float>
```

### getObjects

```haxe
function getObjects():Array<AnimatedObject>
```

### setFrame

```haxe
function setFrame(f:Float):Void
```

### loadProps

```haxe
function loadProps(props:Dynamic):Void
```

### createInstance

```haxe
function createInstance(base:h3d.scene.Object):Animation
```

### bind

```haxe
function bind(base:h3d.scene.Object):Void
```

If one of the animated object has been changed, it is necessary to call bind() so the animation can keep with the change.

### getPropValue

```haxe
function getPropValue(objectName:String, propName:String):Null<Float>
```

Returns the current value of animation property for the given object, or null if not found.

### sync

```haxe
function sync(?decompose:Bool = false):Void
```

Synchronize the target object matrix.
If decompose is true, then the rotation quaternion is stored in [m12,m13,m21,m23] instead of mixed with the scale.

### update

```haxe
function update(dt:Float):Float
```

### toString

```haxe
function toString():String
```
