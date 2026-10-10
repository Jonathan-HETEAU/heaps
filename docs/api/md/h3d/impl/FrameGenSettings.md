# h3d.impl.FrameGenSettings

**class** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

The state and capabilities of the frame generation.

## Constructor

### new

```haxe
function new():Void
```

Creates the settings.

## Variables

### status

```haxe
var status:Int
```

The status code of the frame generation.

### minWidthOrHeight

```haxe
var minWidthOrHeight:Int
```

The minimum size supported.

### framesPresented

```haxe
var framesPresented:Int
```

The number of frames presented for each rendered frame.

### maxFramesToGenerate

```haxe
var maxFramesToGenerate:Int
```

The maximum number of frames generated for each rendered frame.

### dynamicSupported

```haxe
var dynamicSupported:Bool
```

Tells if the `Dynamic` mode is supported.

### vsyncSupported

```haxe
var vsyncSupported:Bool
```

Tells if the frame generation works with vsync.
