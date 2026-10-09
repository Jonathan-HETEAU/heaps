# hxd.snd.ChannelBase

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/ChannelBase.hx`](../../../../../hxd/snd/ChannelBase.hx)

Subclasses: [`hxd.snd.Channel`](Channel.md), [`hxd.snd.ChannelGroup`](ChannelGroup.md)

## Variables

### priority

```haxe
var priority:Float
```

### mute

```haxe
var mute:Bool
```

### effects

```haxe
var effects:Array<Effect>
```

### bindedEffects

```haxe
var bindedEffects:Array<Effect>
```

### volume

```haxe
var volume(default, set):Float
```

## Methods

### getEffect

```haxe
function getEffect(etype:Class<getEffect.T>):getEffect.T
```

### fadeTo

```haxe
function fadeTo(volume:Float, ?time:Float = 1., ?onEnd:() -> Void):Void
```

### addEffect

```haxe
function addEffect(e:addEffect.T):addEffect.T
```

### removeEffect

```haxe
function removeEffect(e:Effect):Void
```
