# hxd.snd.Channel

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Channel.hx`](../../../../../hxd/snd/Channel.hx)

Extends: [`hxd.snd.ChannelBase`](ChannelBase.md)

A sound being played, returned by `hxd.res.Sound.play` or `Manager.play`.
When there are more channels than hardware sources, or a channel is not audible, it becomes virtual: its position still advances, but it is not played.

## Variables

### sound

```haxe
var sound(default, null):hxd.res.Sound
```

The sound being played.

### duration

```haxe
var duration(default, null):Float
```

The duration of the sound, in seconds.

### soundGroup

```haxe
var soundGroup(default, null):SoundGroup
```

The sound group of the channel.

### channelGroup

```haxe
var channelGroup(default, null):ChannelGroup
```

The channel group of the channel.

### position

```haxe
var position(default, set):Float
```

The play position, in seconds.

### pause

```haxe
var pause(default, set):Bool
```

Pauses the channel.

### loop

```haxe
var loop:Bool
```

If set, the sound loops instead of stopping at its end.

### allowVirtual

```haxe
var allowVirtual:Bool
```

If set, the channel is virtualized when its volume is inaudible.

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

Updates the volume of the channel, including the fades and effects.

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

Stops the channel.

### isReleased

```haxe
function isReleased():Bool
```

Tells if the channel was stopped.

## Inherited members

- from [`hxd.snd.ChannelBase`](ChannelBase.md): `priority`, `mute`, `effects`, `bindedEffects`, `volume`, `getEffect`, `fadeTo`, `addEffect`, `removeEffect`
