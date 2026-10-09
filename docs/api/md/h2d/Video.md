# h2d.Video

**class** · package [`h2d`](README.md) · source [`h2d/Video.hx`](../../../../h2d/Video.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

A video file playback Drawable. Due to platform specifics, each target have their own limitations.

* <span class="label">Hashlink</span>: Playback ability depends on `https://github.com/HeapsIO/hlvideo` library. It support only video with the AV1 codec packed into a WEBM container.

* <span class="label">JavaScript</span>: HTML Video element will be used. Playback is restricted by content-security policy and browser decoder capabilities.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new Video instance.
- **param** `parent` An optional parent `h2d.Object` instance to which Video adds itself if set.
- **param** `cacheSize` <span class="label">Hashlink</span>: async precomputing up to `cache` frame. If 0, synchronized computing

## Variables

### videoWidth

```haxe
var videoWidth(default, null):Int
```

Video width. Value is undefined until video is ready to play.

### videoHeight

```haxe
var videoHeight(default, null):Int
```

Video height. Value is undefined until video is ready to play.

### playing

```haxe
var playing:Bool
```

Tells if video currently playing.

### time

```haxe
var time(get, null):Float
```

Tells current timestamp of the video.

### loop

```haxe
var loop(get, set):Bool
```

When enabled, video will loop indefinitely.

## Methods

### onError

```haxe
dynamic function onError(msg:String):Void
```

Sent when there is an error with the decoding or playback of the video.

### onEnd

```haxe
dynamic function onEnd():Void
```

Sent when video playback is finished.

### dispose

```haxe
function dispose():Void
```

Disposes of the currently playing Video and frees GPU memory.

### loadFile

```haxe
function loadFile(path:String, ?onReady:() -> Void):Void
```

Loads and starts the video playback by specified `path` and calls `onReady` when playback becomes possible.

* <span class="label">Hashlink</span>: Playback being immediately after `loadFile`, unless video was not being able to initialize.
* <span class="label">JavaScript</span>: There won't be any video output until video is properly buffered enough data by the browser, in which case `onReady` is called.

- **param** `path` The video path. Have to be valid file-system path for HL or valid URL (full or relative) for JS.
- **param** `onReady` An optional callback signalling that video is initialized and began the video playback.

### loadResource

```haxe
function loadResource(res:hxd.res.Resource, ?onReady:() -> Void):Void
```

Loads and starts the video playback by specified `res` and calls `onReady` when playback becomes possible.

* <span class="label">Hashlink</span>: Playback being immediately after `loadResource`, unless video was not being able to initialize.
* <span class="label">JavaScript</span>: Not implemented

- **param** `res` The heaps resource of a valid video file
- **param** `onReady` An optional callback signalling that video is initialized and began the video playback.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
