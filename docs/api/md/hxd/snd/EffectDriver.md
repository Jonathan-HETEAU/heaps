# hxd.snd.EffectDriver

**class** · package [`hxd.snd`](README.md) · module `hxd.snd.Driver` · source [`hxd/snd/Driver.hx`](../../../../../hxd/snd/Driver.hx)

Type parameters: `<T>`

Subclasses: [`hxd.snd.openal.LowPassDriver`](openal/LowPassDriver.md), [`hxd.snd.openal.PitchDriver`](openal/PitchDriver.md), [`hxd.snd.openal.ReverbDriver`](openal/ReverbDriver.md), [`hxd.snd.openal.SpatializationDriver`](openal/SpatializationDriver.md), [`hxd.snd.webaudio.LowPassDriver`](webaudio/LowPassDriver.md), [`hxd.snd.webaudio.PitchDriver`](webaudio/PitchDriver.md), [`hxd.snd.webaudio.SpatializationDriver`](webaudio/SpatializationDriver.md)

The driver implementation of an effect type: it applies the effect parameters to the sources.

## Constructor

### new

```haxe
function new():Void
```

Creates the driver.

## Methods

### acquire

```haxe
function acquire():Void
```

Called when the effect starts being used.

### release

```haxe
function release():Void
```

Called when the effect is no longer used.

### update

```haxe
function update(e:hxd.snd.EffectDriver.T):Void
```

Called on each update of the manager.

### bind

```haxe
function bind(e:hxd.snd.EffectDriver.T, source:SourceHandle):Void
```

Called when the effect is bound to a source.

### apply

```haxe
function apply(e:hxd.snd.EffectDriver.T, source:SourceHandle):Void
```

Applies the effect parameters to a source, on each update.

### unbind

```haxe
function unbind(e:hxd.snd.EffectDriver.T, source:SourceHandle):Void
```

Called when the effect is unbound from a source.
