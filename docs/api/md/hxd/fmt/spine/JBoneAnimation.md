# hxd.fmt.spine.JBoneAnimation

**typedef** · package [`hxd.fmt.spine`](README.md) · module `hxd.fmt.spine.JsonData` · source [`hxd/fmt/spine/JsonData.hx`](../../../../../../hxd/fmt/spine/JsonData.hx)

The keys of a bone animation, in the Spine JSON format.

## Fields

### translate

```haxe
var ?translate:Null<Array<{ y:Float, x:Float, time:Float, ?curve:Null<JCurve> }>>
```

The translation keys.

### scale

```haxe
var ?scale:Null<Array<{ y:Float, x:Float, time:Float, ?curve:Null<JCurve> }>>
```

The scale keys.

### rotate

```haxe
var ?rotate:Null<Array<{ time:Float, ?curve:Null<JCurve>, angle:Float }>>
```

The rotation keys.

### flipY

```haxe
var ?flipY:Null<Array<{ y:Bool, time:Float }>>
```

The vertical flip keys.

### flipX

```haxe
var ?flipX:Null<Array<{ x:Bool, time:Float }>>
```

The horizontal flip keys.
