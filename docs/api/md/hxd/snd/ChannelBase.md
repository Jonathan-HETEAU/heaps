# hxd.snd.ChannelBase

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/ChannelBase.hx`](../../../../../hxd/snd/ChannelBase.hx)

Subclasses: [`hxd.snd.Channel`](Channel.md), [`hxd.snd.ChannelGroup`](ChannelGroup.md)

The common properties of a `Channel` and a `ChannelGroup`: volume, fading, priority and effects.

## Variables

### priority

```haxe
var priority:Float
```

The priority used to select the channels played when there are more channels than hardware sources. Higher values are played first.

### mute

```haxe
var mute:Bool
```

If set, the channel is silent (and virtualized).

### effects

```haxe
var effects:Array<Effect>
```

The effects applied to the channel.

### bindedEffects

```haxe
var bindedEffects:Array<Effect>
```

The effects currently bound to the hardware source of the channel.

### volume

```haxe
var volume(default, set):Float
```

The volume, from `0` to `1`. Setting it stops the current fade.

## Methods

### getEffect

```haxe
function getEffect(etype:Class<getEffect.T>):getEffect.T
```

Returns the first effect of the given class, or `null`.

### fadeTo

```haxe
function fadeTo(volume:Float, ?time:Float = 1., ?onEnd:() -> Void):Void
```

Changes the volume linearly to `volume` over `time` seconds, then calls `onEnd`.

### addEffect

```haxe
function addEffect(e:addEffect.T):addEffect.T
```

Adds an effect to the channel and returns it. Throws if it was already added.

### removeEffect

```haxe
function removeEffect(e:Effect):Void
```

Removes an effect from the channel.
