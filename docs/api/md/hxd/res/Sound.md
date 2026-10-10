# hxd.res.Sound

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Sound.hx`](../../../../../hxd/res/Sound.hx)

Extends: [`hxd.res.Resource`](Resource.md)

A sound file resource (WAV, MP3 or Ogg Vorbis), played with `hxd.snd.Manager`.

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Static methods

### supportedFormat

```haxe
static function supportedFormat(fmt:SoundFormat):Bool
```

Tells if the format is supported on the current platform.

### startWorker

```haxe
static function startWorker():Bool
```

Does nothing: kept for compatibility.

## Variables

### lastPlay

```haxe
var lastPlay(default, null):Float
```

The time of the last call to `play`, as given by `haxe.Timer.stamp`.

## Methods

### getData

```haxe
function getData():hxd.snd.Data
```

Returns the decoder of the sound data, created on the first call. The format is detected from the first byte of the file.

### dispose

```haxe
function dispose():Void
```

Stops the sound and releases its data.

### stop

```haxe
function stop():Void
```

Stops the channel of the last `play` call.

### play

```haxe
function play(?loop:Bool = false, ?volume:Float = 1., ?channelGroup:hxd.snd.ChannelGroup, ?soundGroup:hxd.snd.SoundGroup):hxd.snd.Channel
```

Plays the sound and returns its channel.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
