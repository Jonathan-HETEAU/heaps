# hxd.Event

**class** · package [`hxd`](README.md) · source [`hxd/Event.hx`](../../../../hxd/Event.hx)

An input event, sent by the window and dispatched to the interactives by `SceneEvents`.

## Constructor

### new

```haxe
function new(k:EventKind, ?x:Float = 0., ?y:Float = 0.):Void
```

Creates an event of kind `k` at the given position.

## Variables

### kind

```haxe
var kind:EventKind
```

The kind of event.

### relX

```haxe
var relX:Float
```

The X position of the event. It is in window coordinates when sent by the window, and relative to the interactive when it receives it (the hit point in 3D).

### relY

```haxe
var relY:Float
```

The Y position of the event (see `relX`).

### relZ

```haxe
var relZ:Float
```

The Z position of the hit point, for 3D interactives.

### propagate

```haxe
var propagate:Bool
```

Will propagate the event to other interactives that are below the current one.

### cancel

```haxe
var cancel:Bool
```

Will cancel the default behavior for this event as if it had happen outside of the interactive zone.

### button

```haxe
var button:Int
```

The mouse button of `EPush`, `ERelease` and `EReleaseOutside` (see `hxd.Key.MOUSE_LEFT`).

### touchId

```haxe
var touchId:Int
```

The identifier of the touch, for touch events.

### keyCode

```haxe
var keyCode:Int
```

The key code of `EKeyDown` and `EKeyUp` (see `hxd.Key`).

### charCode

```haxe
var charCode:Int
```

The unicode character of `ETextInput`.

### wheelDelta

```haxe
var wheelDelta:Float
```

The wheel movement of `EWheel`.

## Methods

### toString

```haxe
function toString():String
```

Returns a description of the event with its kind, position and relevant field.
