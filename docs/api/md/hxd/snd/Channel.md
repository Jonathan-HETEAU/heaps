# hxd.snd.Channel

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Channel.hx`](../../../../../hxd/snd/Channel.hx)

Extends: [`hxd.snd.ChannelBase`](ChannelBase.md)

## Variables

### sound

```haxe
var sound(default, null):hxd.res.Sound
```

### duration

```haxe
var duration(default, null):Float
```

### soundGroup

```haxe
var soundGroup(default, null):SoundGroup
```

### channelGroup

```haxe
var channelGroup(default, null):ChannelGroup
```

### position

```haxe
var position(default, set):Float
```

### pause

```haxe
var pause(default, set):Bool
```

### loop

```haxe
var loop:Bool
```

### allowVirtual

```haxe
var allowVirtual:Bool
```

## Methods

### onEnd

```haxe
dynamic function onEnd():Void
```

onEnd() is called when a sound which does not loop has finished playing
or when we switch buffer in a queue
or when a sound which is streamed loops.

### calcAudibleVolume

```haxe
function calcAudibleVolume(now:Float):Void
```

### queueSound

```haxe
function queueSound(sound:hxd.res.Sound):Void
```

Add a sound to the queue. When the current sound is finished playing, the next one will seamlessly continue.
This will also trigger an onEnd() event.

### stop

```haxe
function stop():Void
```

### isReleased

```haxe
function isReleased():Bool
```

## Inherited members

- from [`hxd.snd.ChannelBase`](ChannelBase.md): `priority`, `mute`, `effects`, `bindedEffects`, `volume`, `getEffect`, `fadeTo`, `addEffect`, `removeEffect`
