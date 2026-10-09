# h2d.Anim

**class** · package [`h2d`](README.md) · source [`h2d/Anim.hx`](../../../../h2d/Anim.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

Displays an animated sequence of bitmap Tiles on the screen.

Anim does not provide animation sequence management and it's up to user on how to implement it.
Another limitation is framerate. Anim runs at a fixed framerate dictated by `Anim.speed`.
Switching animations can be done through `Anim.play` method.

Note that animation playback happens regardless of Anim visibility and only can be paused by `Anim.pause` flag. 
Anim should be added to an active `h2d.Scene` in order to function.

## Constructor

### new

```haxe
function new(?frames:Array<Tile>, ?speed:Float = 15, ?parent:Object):Void
```

Create a new animation with the specified frames, speed and parent object.
- **param** `frames` An optional array of Tiles as an initial `Anim.frames` value.
- **param** `speed` The Anim playback speed in frames per second.
- **param** `parent` An optional parent `h2d.Object` instance to which Anim adds itself if set.

## Variables

### frames

```haxe
var frames(default, null):Array<Tile>
```

The current animation, as a list of tile frames to display.
If the frames are empty or if a tile is frames is null, a pink 5x5 bitmap will be displayed instead.

### currentFrame

```haxe
var currentFrame(get, set):Float
```

The current frame the animation is currently playing. Always in `[0,frames.length]` range.
Use `Std.int(anim.currentFrame)` in order to obtain current frame index.
Fractional value represents the progress of current frame and increases according to `Anim.speed` value.

Setting frame to a negative value will wrap it around from the end of the animation. Setting negative value smaller than `-frames.length` lead to undefined behavior.
Setting frame to a value greater than `frames.length` would cause to wrap around.

### speed

```haxe
var speed:Float
```

The speed (in frames per second) at which the animation is playing.

Settings speed to a negative value is not supported and leads to undefined behavior.

### pause

```haxe
var pause:Bool
```

Setting pause will suspend the animation, preventing automatic accumulation of `Anim.currentFrame` over time.

### loop

```haxe
var loop:Bool
```

Disabling loop will stop the animation at the last frame.

### fading

```haxe
var fading:Bool
```

When enabled, fading will draw two consecutive frames with alpha transition between
them instead of directly switching from one to another when it reaches the next frame.
This can be used to have smoother animation on some effects.

## Methods

### play

```haxe
function play(frames:Array<Tile>, ?atFrame:Float = 0.):Void
```

Change the currently playing animation and unset the pause if it was set.
- **param** `frames` The list of frames to play.
- **param** `atFrame` Optional starting frame of the new animation.

### onAnimEnd

```haxe
dynamic function onAnimEnd():Void
```

Sent each time the animation reaches past the last frame.

If `loop` is enabled, callback is sent every time the animation loops.
During the call, `currentFrame` is already wrapped around and represent new frame position so it's safe to modify it.

If `loop` is disabled, callback is sent only once when the animation reaches `currentFrame == frames.length`.
During the call, `currentFrame` is always equals to `frames.length`.

### getFrame

```haxe
function getFrame():Tile
```

Returns the Tile at current frame.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
