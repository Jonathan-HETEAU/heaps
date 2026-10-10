# Package `hxd.snd.webaudio`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`BufferHandle`](BufferHandle.md) | class | A Web Audio sound buffer. |
| [`BufferPlayback`](BufferPlayback.md) | class | A buffer queued on a Web Audio source, with its scheduled play times. |
| [`Context`](Context.md) | class | Common part between webaudio and OpenAL emulator - AudioContext and masterGain. |
| [`Driver`](Driver.md) | class | The Web Audio sound driver, used on JS (unless `-D useal` is set). |
| [`LowPassDriver`](LowPassDriver.md) | class | Implements `hxd.snd.effect.LowPass` with a Web Audio biquad filter. |
| [`PitchDriver`](PitchDriver.md) | class | Implements `hxd.snd.effect.Pitch` with the playback rate of the Web Audio buffers. |
| [`SourceHandle`](SourceHandle.md) | class | A Web Audio sound source: the chain of nodes (effects and gain) the buffers are played through. |
| [`SpatializationDriver`](SpatializationDriver.md) | class | Implements `hxd.snd.effect.Spatialization` with a Web Audio panner node. |
