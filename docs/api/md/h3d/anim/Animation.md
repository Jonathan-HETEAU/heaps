# h3d.anim.Animation

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/Animation.hx`](../../../../../h3d/anim/Animation.hx)

Subclasses: [`h3d.anim.BlendSpace2D`](BlendSpace2D.md), [`h3d.anim.BufferAnimation`](BufferAnimation.md), [`h3d.anim.LinearAnimation`](LinearAnimation.md), [`h3d.anim.SmoothTarget`](SmoothTarget.md), [`h3d.anim.Transition`](Transition.md)

Base class of the animations: a set of animated objects (or joints) with keyframes, played on an object tree.

An animation loaded from a model is shared data: `Object.playAnimation` creates an instance bound to the object tree
(`createInstance`), which is updated every frame by the object `sync`.

```haxe
var anim = cache.loadAnimation(hxd.Res.walk);
var inst = obj.playAnimation(anim);
inst.speed = 1.5;
inst.onAnimEnd = function() trace("loop");
```

## Static methods

### isAnimation

```haxe
static function isAnimation(filename:String):Bool
```

Tells if a model file name follows the animation naming convention (starts with `anim_` or contains `_anim_`).

## Variables

### name

```haxe
var name:String
```

The animation name.

### resourcePath

```haxe
var resourcePath:String
```

The path of the model file the animation was loaded from.

### frameCount

```haxe
var frameCount(default, null):Int
```

The number of frames.

### sampling

```haxe
var sampling(default, null):Float
```

The number of frames per second.

### frame

```haxe
var frame(default, null):Float
```

The current frame, from `0` to `frameCount`. See `setFrame`.

### speed

```haxe
var speed:Float
```

The playback speed multiplier (`1` by default).

### onAnimEnd

```haxe
var onAnimEnd:() -> Void
```

Called when the animation reaches its end (each loop if `loop` is set).

### onEvent

```haxe
var onEvent:() -> Void
```

Called with the event name when the animation passes an event frame.

### pause

```haxe
var pause:Bool
```

Pauses the animation.

### loop

```haxe
var loop:Bool
```

Restarts the animation from the start when it reaches its end (`true` by default).

### sourceEvents

```haxe
var sourceEvents(default, null):Array<Event>
```

The events read from the source file.

### events

```haxe
var events(default, null):Array<Array<Event>>
```

The events, indexed by frame.

## Methods

### getDuration

```haxe
function getDuration():Float
```

Returns the duration in seconds, taking `speed` into account.

### unbind

```haxe
function unbind(objectName:String):Void
```

Stops animating the object named `objectName`.

### getEvents

```haxe
function getEvents():Array<Array<Event>>
```

Returns the events, indexed by frame.

### getSourceEvents

```haxe
function getSourceEvents():Array<Event>
```

Returns the events read from the source file.

### setEvents

```haxe
function setEvents(evts:Array<Event>):Void
```

Replaces the events.

### getEvent

```haxe
function getEvent(frame:Int, name:String):Event
```

Returns the event `name` at `frame`, or `null`.

### addEvent

```haxe
function addEvent(frame:Int, name:String, ?originalEvent:Null<Event>):Void
```

Adds an event at `frame`.

### removeEvent

```haxe
function removeEvent(frame:Int, name:String):Void
```

Removes the event `name` at `frame`. Throws if it does not exist.

### getEventTime

```haxe
function getEventTime(name:String):Null<Float>
```

Returns the time in seconds of the first event `name`, or `null`.

### getObjects

```haxe
function getObjects():Array<AnimatedObject>
```

Returns the animated objects.

### setFrame

```haxe
function setFrame(f:Float):Void
```

Moves the animation to the frame `f` (wrapped in the frame range).

### loadProps

```haxe
function loadProps(props:Dynamic):Void
```

Loads the events of the animation from the properties of a model `.props` file.

### createInstance

```haxe
function createInstance(base:h3d.scene.Object):Animation
```

Returns an instance of the animation bound to the object tree `base`. Prefer `Object.playAnimation`.

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

Advances the animation by `dt` seconds. Returns the remaining time if the animation reached its end or an event
during the step (the rest is processed by the caller), `0` otherwise. Called by `Object.sync`.

### toString

```haxe
function toString():String
```

Returns the animation name.
