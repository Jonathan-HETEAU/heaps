# h3d.impl.StutterBenchmark

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/StutterBenchmark.hx`](../../../../../h3d/impl/StutterBenchmark.hx)

Detects the frames much longer than the median of the last 60 frames, and counts the stutters of the last minute.

## Constructor

### new

```haxe
function new():Void
```

Creates the benchmark.

## Methods

### begin

```haxe
function begin():Void
```

Starts measuring a frame.

### end

```haxe
function end():Void
```

Ends measuring a frame, and records a stutter if it was too long.

### getStutterCount

```haxe
function getStutterCount(severity:StutterSeverity):Int
```

Returns the number of stutters of the given severity in the last minute.

### getWorstStutterDuration

```haxe
function getWorstStutterDuration():Float
```

Returns the impact of the worst stutter of the last minute, in milliseconds.
