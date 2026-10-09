# h2d.KeyFrames

**class** · package [`h2d`](README.md) · source [`h2d/KeyFrames.hx`](../../../../h2d/KeyFrames.hx)

Extends: [`h2d.Mask`](Mask.md) → [`h2d.Object`](Object.md)

Adobe After effect player, see [Keyframes](https://github.com/heapsio/keyframes/) library.

## Constructor

### new

```haxe
function new(file:hxd.fmt.kframes.KeyframesFile, ?filePrefix:String, ?parent:Object):Void
```

Create a new KeyFrames animation instance.
- **param** `file` The source file of the animation.
- **param** `filePrefix` An optional directory prefix when looking up images.
- **param** `parent` An optional parent `h2d.Object` instance to which KeyFrames adds itself if set.

## Variables

### frameRate

```haxe
var frameRate:Float
```

The FPS provided by the KeyFrames file.

### frameCount

```haxe
var frameCount:Int
```

The total amount of frames in the animation.

### currentFrame

```haxe
var currentFrame(get, set):Float
```

The current playback frame with the frame display progress fraction.

### speed

```haxe
var speed:Float
```

The playback speed multiplier.

### pause

```haxe
var pause:Bool
```

Pauses the playback when enabled.

### loop

```haxe
var loop:Bool
```

Whether to loop the animation or not.

### loopInterpolate

```haxe
var loopInterpolate:Bool
```

When looping, will interpolate between last frame and first frame.

### smooth

```haxe
var smooth(default, set):Bool
```

Use bilinear texture sampling instead of nearest neighbor.
- **see** `Drawable.smooth`

## Methods

### play

```haxe
function play(?speed:Float = 1., ?startFrame:Int = 0):Void
```

Unpauses the playback and starts it at the specified frame.
- **param** `speed` The playback speed multiplier at which animation should run.
- **param** `startFrame` The frame at which the animation should start.

### getLayer

```haxe
function getLayer(name:String):Null<Null<Object>>
```

Returns the animation layer objects under specified name.

### onAnimEnd

```haxe
dynamic function onAnimEnd():Void
```

Sent when animation reaches the end.
`KeyFrames.currentFrame` equals to `KeyFrames.frameCount` when `KeyFrames.loop` is disabled,
is wrapped around to 0th frame if loop is enabled.

## Inherited members

- from [`h2d.Mask`](Mask.md): `width`, `height`, `scrollX`, `scrollY`, `scrollBounds`, `scrollTo`, `scrollBy`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
