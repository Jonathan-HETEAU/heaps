# h3d.impl.FrameDataImpl

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.FrameData` · source [`h3d/impl/FrameData.hx`](../../../../../h3d/impl/FrameData.hx)

A ring buffer of the values of the last frames.

## Constructor

### new

```haxe
function new(max:Int):Void
```

Creates a buffer keeping the last `max` values.

## Variables

### length

```haxe
var length(get, null):Int
```

The number of stored values.

## Methods

### push

```haxe
function push(v:Float):Void
```

Adds a value, replacing the oldest one when the buffer is full.

### get

```haxe
inline function get(index:Int):Float
```

Returns the value at the index, from the oldest one.

### getMedian

```haxe
function getMedian():Float
```

Meant to return the median of the stored values. The values are currently not sorted before the middle one is picked.
