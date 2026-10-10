# hxd.fmt.kframes.KFAnimation

**typedef** · package [`hxd.fmt.kframes`](README.md) · module `hxd.fmt.kframes.Data` · source [`hxd/fmt/kframes/Data.hx`](../../../../../../hxd/fmt/kframes/Data.hx)

The animation of a property of a feature.

## Fields

### timing_curves

```haxe
var timing_curves:Array<Array<KFSize<Float>>>
```

The control points of the bezier easing curve between each pair of keys.

### property

```haxe
var property:KFAnimProp
```

The animated property.

### key_values

```haxe
var key_values:Array<KFAnimValue>
```

The keys.
