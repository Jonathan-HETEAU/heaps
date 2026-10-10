# hxd.WaitEvent

**class** · package [`hxd`](README.md) · source [`hxd/WaitEvent.hx`](../../../../hxd/WaitEvent.hx)

A list of callbacks updated every frame, to run code after a delay or until a condition is met.
Call `update` every frame.

```haxe
var waits = new hxd.WaitEvent();
waits.wait(2.0, () -> trace("2 seconds later"));
// in update: waits.update(dt);
```

## Constructor

### new

```haxe
function new():Void
```

Creates an empty list.

## Methods

### hasEvent

```haxe
inline function hasEvent():Bool
```

Tells if there are callbacks waiting.

### clear

```haxe
function clear():Void
```

Removes all the callbacks.

### add

```haxe
function add(callb:() -> Bool):Void
```

Adds a callback called every update with the elapsed time; it is removed when it returns `true`.

### remove

```haxe
function remove(callb:() -> Bool):Bool
```

Removes a callback added with `add`.

### wait

```haxe
function wait(time:Float, callb:() -> Void):Void
```

Calls `callb` once after `time` seconds.

### waitUntil

```haxe
function waitUntil(callb:() -> Bool):Void
```

Same as `add`: `callb` is called every update until it returns `true`.

### update

```haxe
function update(dt:Float):Void
```

Updates the callbacks with the elapsed time `dt`, in seconds.
