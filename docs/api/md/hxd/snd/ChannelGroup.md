# hxd.snd.ChannelGroup

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/ChannelGroup.hx`](../../../../../hxd/snd/ChannelGroup.hx)

Extends: [`hxd.snd.ChannelBase`](ChannelBase.md)

A group of channels sharing a volume, a priority and effects, such as the music or the sound effects.
The channels without a group use `Manager.masterChannelGroup`.

## Constructor

### new

```haxe
function new(name:String):Void
```

Creates a group.

## Variables

### name

```haxe
var name(default, null):String
```

The name of the group.

## Inherited members

- from [`hxd.snd.ChannelBase`](ChannelBase.md): `priority`, `mute`, `effects`, `bindedEffects`, `volume`, `getEffect`, `fadeTo`, `addEffect`, `removeEffect`
