# hxd.fmt.kframes.KeyframesFile

**typedef** · package [`hxd.fmt.kframes`](README.md) · module `hxd.fmt.kframes.Data` · source [`hxd/fmt/kframes/Data.hx`](../../../../../../hxd/fmt/kframes/Data.hx)

The content of a keyframes file: After Effects animations exported with the Keyframes tool (https://github.com/HeapsIO/Keyframes), played by `h2d.KeyFrames`.

## Fields

### name

```haxe
var name:String
```

The name of the composition.

### key

```haxe
var key:Int
```

The key of the composition.

### frame_rate

```haxe
var frame_rate:Float
```

The number of frames per second.

### formatVersion

```haxe
var formatVersion:String
```

The version of the format.

### features

```haxe
var features:Array<KFFeature>
```

The features (layers).

### canvas_size

```haxe
var canvas_size:KFSize<Int>
```

The size of the composition.

### animation_groups

```haxe
var animation_groups:Array<{  }>
```

The animation groups (not supported).

### animation_frame_count

```haxe
var animation_frame_count:Int
```

The number of frames.
