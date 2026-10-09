# hxd.res.Sound

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Sound.hx`](../../../../../hxd/res/Sound.hx)

Extends: [`hxd.res.Resource`](Resource.md)

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

### startWorker

```haxe
static function startWorker():Bool
```

## Variables

### lastPlay

```haxe
var lastPlay(default, null):Float
```

## Methods

### getData

```haxe
function getData():hxd.snd.Data
```

### dispose

```haxe
function dispose():Void
```

### stop

```haxe
function stop():Void
```

### play

```haxe
function play(?loop:Bool = false, ?volume:Float = 1., ?channelGroup:hxd.snd.ChannelGroup, ?soundGroup:hxd.snd.SoundGroup):hxd.snd.Channel
```

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
