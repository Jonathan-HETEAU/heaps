# hxd.Event

**class** · package [`hxd`](README.md) · source [`hxd/Event.hx`](../../../../hxd/Event.hx)

## Constructor

### new

```haxe
function new(k:EventKind, ?x:Float = 0., ?y:Float = 0.):Void
```

## Variables

### kind

```haxe
var kind:EventKind
```

### relX

```haxe
var relX:Float
```

### relY

```haxe
var relY:Float
```

### relZ

```haxe
var relZ:Float
```

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

### touchId

```haxe
var touchId:Int
```

### keyCode

```haxe
var keyCode:Int
```

### charCode

```haxe
var charCode:Int
```

### wheelDelta

```haxe
var wheelDelta:Float
```

## Methods

### toString

```haxe
function toString():String
```
