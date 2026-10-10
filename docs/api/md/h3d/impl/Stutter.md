# h3d.impl.Stutter

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.StutterBenchmark` · source [`h3d/impl/StutterBenchmark.hx`](../../../../../h3d/impl/StutterBenchmark.hx)

A stutter: one or more consecutive frames much longer than usual.

## Constructor

### new

```haxe
function new(v:Float):Void
```

Creates a stutter of the given impact.

## Variables

### impact

```haxe
var impact:Float
```

The time lost, in milliseconds, compared to the median frame time.

### frameCount

```haxe
var frameCount:Int
```

The number of frames of the stutter.

### startTime

```haxe
var startTime:Float
```

The time of the start of the stutter.
