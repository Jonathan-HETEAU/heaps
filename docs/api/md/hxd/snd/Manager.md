# hxd.snd.Manager

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Manager.hx`](../../../../../hxd/snd/Manager.hx)

## Static variables

### STREAM_DURATION

```haxe
static var STREAM_DURATION:Float
```

### STREAM_BUFFER_SAMPLE_COUNT

```haxe
static var STREAM_BUFFER_SAMPLE_COUNT:Int
```

### BUFFER_QUEUE_LENGTH

```haxe
static var BUFFER_QUEUE_LENGTH:Int
```

### MAX_SOURCES

```haxe
static var MAX_SOURCES:Int
```

### SOUND_BUFFER_CACHE_SIZE

```haxe
static var SOUND_BUFFER_CACHE_SIZE:Int
```

### VIRTUAL_VOLUME_THRESHOLD

```haxe
static var VIRTUAL_VOLUME_THRESHOLD:Float
```

### BUFFER_STREAM_SPLIT

```haxe
static var BUFFER_STREAM_SPLIT:Int
```

Allows to decode big streaming buffers over X split frames. 0 to disable

## Static methods

### get

```haxe
static function get():Manager
```

## Variables

### masterVolume

```haxe
var masterVolume:Float
```

### masterSoundGroup

```haxe
var masterSoundGroup(default, null):SoundGroup
```

### masterChannelGroup

```haxe
var masterChannelGroup(default, null):ChannelGroup
```

### listener

```haxe
var listener:Listener
```

### timeOffset

```haxe
var timeOffset:Float
```

### suspended

```haxe
var suspended:Bool
```

## Methods

### stopAll

```haxe
function stopAll():Void
```

### stopAllNotLooping

```haxe
function stopAllNotLooping():Void
```

### stopByName

```haxe
function stopByName(name:String):Void
```

### getAll

```haxe
function getAll(sound:hxd.res.Sound):Iterator<Channel>
```

Returns iterator with all active instances of a Sound at the call time.

### cleanCache

```haxe
function cleanCache():Void
```

### dispose

```haxe
function dispose():Void
```

### play

```haxe
function play(sound:hxd.res.Sound, ?channelGroup:ChannelGroup, ?soundGroup:SoundGroup):Channel
```

### update

```haxe
function update():Void
```
