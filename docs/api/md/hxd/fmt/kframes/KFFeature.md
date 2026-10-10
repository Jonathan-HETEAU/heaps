# hxd.fmt.kframes.KFFeature

**typedef** · package [`hxd.fmt.kframes`](README.md) · module `hxd.fmt.kframes.Data` · source [`hxd/fmt/kframes/Data.hx`](../../../../../../hxd/fmt/kframes/Data.hx)

A feature (layer) of a keyframes file.

## Fields

### to_frame

```haxe
var ?to_frame:Null<Int>
```

The last frame where the feature is visible.

### size

```haxe
var size:KFSize<Int>
```

The size of the feature.

### name

```haxe
var name:String
```

The name of the feature.

### from_frame

```haxe
var ?from_frame:Null<Int>
```

The first frame where the feature is visible.

### feature_id

```haxe
var feature_id:Int
```

The identifier of the feature.

### feature_animations

```haxe
var feature_animations:Array<KFAnimation>
```

The animations of the properties of the feature.

### backed_image

```haxe
var ?backed_image:Null<String>
```

The image displayed by the feature.
