# hxd.snd.SoundGroup

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/SoundGroup.hx`](../../../../../hxd/snd/SoundGroup.hx)

A group of sounds sharing a volume and a limit of channels playing at the same time.
The channels without a group use `Manager.masterSoundGroup`.

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

The name of the group, used by `Manager.stopByName`.

### volume

```haxe
var volume:Float
```

The volume of the sounds of the group, from `0` to `1`.

### maxAudible

```haxe
var maxAudible:Int
```

The maximum number of sounds of the group played at the same time (the others are virtualized), or `-1` for no limit.

### mono

```haxe
var mono:Bool
```

If set, the sounds of the group are converted to mono.
