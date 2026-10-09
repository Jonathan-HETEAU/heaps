# hxd.snd.EffectDriver

**class** · package [`hxd.snd`](README.md) · module `hxd.snd.Driver` · source [`hxd/snd/Driver.hx`](../../../../../hxd/snd/Driver.hx)

Type parameters: `<T>`

Subclasses: [`hxd.snd.openal.LowPassDriver`](openal/LowPassDriver.md), [`hxd.snd.openal.PitchDriver`](openal/PitchDriver.md), [`hxd.snd.openal.ReverbDriver`](openal/ReverbDriver.md), [`hxd.snd.openal.SpatializationDriver`](openal/SpatializationDriver.md), [`hxd.snd.webaudio.LowPassDriver`](webaudio/LowPassDriver.md), [`hxd.snd.webaudio.PitchDriver`](webaudio/PitchDriver.md), [`hxd.snd.webaudio.SpatializationDriver`](webaudio/SpatializationDriver.md)

## Constructor

### new

```haxe
function new():Void
```

## Methods

### acquire

```haxe
function acquire():Void
```

### release

```haxe
function release():Void
```

### update

```haxe
function update(e:hxd.snd.EffectDriver.T):Void
```

### bind

```haxe
function bind(e:hxd.snd.EffectDriver.T, source:SourceHandle):Void
```

### apply

```haxe
function apply(e:hxd.snd.EffectDriver.T, source:SourceHandle):Void
```

### unbind

```haxe
function unbind(e:hxd.snd.EffectDriver.T, source:SourceHandle):Void
```
