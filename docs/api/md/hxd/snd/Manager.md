# hxd.snd.Manager

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Manager.hx`](../../../../../hxd/snd/Manager.hx)

Plays the sounds: it assigns the channels to the hardware sources of the driver (Web Audio on JS, OpenAL otherwise), streams the long sounds and applies the effects.
It is updated automatically by the main loop. Use `Manager.get()` to get the instance.

## Static variables

### STREAM_DURATION

```haxe
static var STREAM_DURATION:Float
```

The sounds longer than this duration (in seconds) are streamed instead of decoded at once.

### STREAM_BUFFER_SAMPLE_COUNT

```haxe
static var STREAM_BUFFER_SAMPLE_COUNT:Int
```

The number of samples of each buffer of a streamed sound.

### BUFFER_QUEUE_LENGTH

```haxe
static var BUFFER_QUEUE_LENGTH:Int
```

The number of buffers queued on a source playing a streamed sound.

### MAX_SOURCES

```haxe
static var MAX_SOURCES:Int
```

The number of hardware sources: the maximum number of channels played at the same time. Must be set before the manager is created.

### SOUND_BUFFER_CACHE_SIZE

```haxe
static var SOUND_BUFFER_CACHE_SIZE:Int
```

The number of decoded sounds kept in cache before the unused ones are released.

### VIRTUAL_VOLUME_THRESHOLD

```haxe
static var VIRTUAL_VOLUME_THRESHOLD:Float
```

The volume under which a channel is virtualized.

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

Returns the sound manager, created on the first call.

## Variables

### masterVolume

```haxe
var masterVolume:Float
```

The global volume, from `0` to `1`.

### masterSoundGroup

```haxe
var masterSoundGroup(default, null):SoundGroup
```

The default sound group.

### masterChannelGroup

```haxe
var masterChannelGroup(default, null):ChannelGroup
```

The default channel group.

### listener

```haxe
var listener:Listener
```

The listener of the spatialized sounds.

### timeOffset

```haxe
var timeOffset:Float
```

A time offset (in seconds) applied to the channel timestamps on the next update, to compensate a pause of the application.

### suspended

```haxe
var suspended:Bool
```

If set, all the channels are virtualized: nothing is played, but the positions still advance.

## Methods

### stopAll

```haxe
function stopAll():Void
```

Stops all the channels.

### stopAllNotLooping

```haxe
function stopAllNotLooping():Void
```

Stops all the channels that don't loop.

### stopByName

```haxe
function stopByName(name:String):Void
```

Stops all the channels of the sound group of the given name.

### getAll

```haxe
function getAll(sound:hxd.res.Sound):Iterator<Channel>
```

Returns iterator with all active instances of a Sound at the call time.

### cleanCache

```haxe
function cleanCache():Void
```

Releases the decoded sounds that are not playing.

### dispose

```haxe
function dispose():Void
```

Stops all the channels and releases the driver.

### play

```haxe
function play(sound:hxd.res.Sound, ?channelGroup:ChannelGroup, ?soundGroup:SoundGroup):Channel
```

Plays the sound and returns its channel. It starts playing on the next update.

### update

```haxe
function update():Void
```

Updates the channels and the sources. Called automatically every frame.
