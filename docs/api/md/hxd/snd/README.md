# Package `hxd.snd`

[← API index](../../README.md)

Sub-packages: [`hxd.snd.effect`](effect/README.md), [`hxd.snd.openal`](openal/README.md), [`hxd.snd.webaudio`](webaudio/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Buffer`](Buffer.md) | class | A driver buffer containing the samples of a sound, or a part of a streamed sound. |
| [`BufferHandle`](BufferHandle.md) | typedef | The driver handle of a sound buffer. |
| [`Channel`](Channel.md) | class | A sound being played, returned by `hxd.res.Sound.play` or `Manager.play`. |
| [`ChannelBase`](ChannelBase.md) | class | The common properties of a `Channel` and a `ChannelGroup`: volume, fading, priority and effects. |
| [`ChannelGroup`](ChannelGroup.md) | class | A group of channels sharing a volume, a priority and effects, such as the music or the sound effects. |
| [`Data`](Data.md) | class | Decoded audio data: the base class of the decoders of each file format. |
| [`Driver`](Driver.md) | interface | The interface of the low level sound API used by `hxd.snd.Manager`: OpenAL (`hxd.snd.openal.Driver`) or Web Audio (`hxd.snd.webaudio.Driver`). |
| [`DriverFeature`](DriverFeature.md) | enum | The optional features of a sound driver. |
| [`Effect`](Effect.md) | class | The base class of the sound effects (such as `hxd.snd.effect.Spatialization` or `hxd.snd.effect.Reverb`), added to a `Channel` or `ChannelGroup`. |
| [`EffectDriver`](EffectDriver.md) | class | The driver implementation of an effect type: it applies the effect parameters to the sources. |
| [`Listener`](Listener.md) | class | The position and orientation of the listener of spatialized sounds (see `hxd.snd.effect.Spatialization`). |
| [`LoadingData`](LoadingData.md) | class | The data of a sound that is not loaded yet: decoding it throws until `load` completes. |
| [`Manager`](Manager.md) | class | Plays the sounds: it assigns the channels to the hardware sources of the driver (Web Audio on JS, OpenAL otherwise), streams the long sounds and applies the effects. |
| [`Mp3Data`](Mp3Data.md) | class | The decoder of MP3 data: with the native decoder on HashLink, with the browser decoder on JS (asynchronously). |
| [`NativeChannel`](NativeChannel.md) | class | A channel playing generated samples: subclass it and override `onSample` to fill the buffers with stereo float samples. |
| [`OggData`](OggData.md) | class | The decoder of Ogg Vorbis data: native on HashLink, with the `stb_ogg_sound` library on other targets (without it, decoding throws an error). |
| [`SampleFormat`](SampleFormat.md) | enum | The format of the audio samples. |
| [`SoundGroup`](SoundGroup.md) | class | A group of sounds sharing a volume and a limit of channels playing at the same time. |
| [`Source`](Source.md) | class | A hardware source of the sound driver, playing a channel. |
| [`SourceHandle`](SourceHandle.md) | typedef | The driver handle of a sound source. |
| [`WavData`](WavData.md) | class | The decoder of WAV (PCM) data. |
