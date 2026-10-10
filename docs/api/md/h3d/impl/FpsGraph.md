# h3d.impl.FpsGraph

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/FpsGraph.hx`](../../../../../h3d/impl/FpsGraph.hx)

A 2D graph of the frame rate and of the CPU and GPU frame times, for profiling. Call `update` every frame.

## Constructor

### new

```haxe
function new(parent:h2d.Object):Void
```

Creates the graph in the parent object.

## Variables

### showGpu

```haxe
var showGpu:Bool
```

Displays the GPU frame time (measured with GPU queries).

### showCpu

```haxe
var showCpu:Bool
```

Displays the CPU frame time.

### width

```haxe
var width(default, set):Float
```

The width of the graph, in pixels.

### height

```haxe
var height(default, set):Float
```

The height of the graph, in pixels.

### maxFrameCount

```haxe
var maxFrameCount(default, set):Int
```

The number of frames displayed.

### maxFps

```haxe
var maxFps(default, set):Float
```

maxFps will be set automatically to *2 or /2.
Default value is chosen for 30FPS(45), 60FPS(90), 144FPS(180)

### maxDtMs

```haxe
var maxDtMs(default, set):Float
```

The frame time at the top of the graph, in milliseconds.

## Methods

### setPosition

```haxe
inline function setPosition(x:Float, y:Float):Void
```

Moves the graph.

### update

```haxe
function update(dt:Float):Void
```

Adds the current frame to the graph and redraws it.

### dispose

```haxe
function dispose():Void
```

Removes the graph and releases its queries.

### begin

```haxe
function begin():Void
```

Call at the begining of a hxd.App's `update` for CPU/GPU time

### end

```haxe
function end():Void
```

Call at the end of a hxd.App's `render` for CPU/GPU time
