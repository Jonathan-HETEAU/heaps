# h3d.impl.FpsGraph

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/FpsGraph.hx`](../../../../../h3d/impl/FpsGraph.hx)

## Constructor

### new

```haxe
function new(parent:h2d.Object):Void
```

## Variables

### showGpu

```haxe
var showGpu:Bool
```

### showCpu

```haxe
var showCpu:Bool
```

### width

```haxe
var width(default, set):Float
```

### height

```haxe
var height(default, set):Float
```

### maxFrameCount

```haxe
var maxFrameCount(default, set):Int
```

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

## Methods

### setPosition

```haxe
inline function setPosition(x:Float, y:Float):Void
```

### update

```haxe
function update(dt:Float):Void
```

### dispose

```haxe
function dispose():Void
```

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
