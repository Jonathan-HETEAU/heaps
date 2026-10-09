# hxd.WaitEvent

**class** · package [`hxd`](README.md) · source [`hxd/WaitEvent.hx`](../../../../hxd/WaitEvent.hx)

## Constructor

### new

```haxe
function new():Void
```

## Methods

### hasEvent

```haxe
inline function hasEvent():Bool
```

### clear

```haxe
function clear():Void
```

### add

```haxe
function add(callb:() -> Bool):Void
```

### remove

```haxe
function remove(callb:() -> Bool):Bool
```

### wait

```haxe
function wait(time:Float, callb:() -> Void):Void
```

### waitUntil

```haxe
function waitUntil(callb:() -> Bool):Void
```

### update

```haxe
function update(dt:Float):Void
```
