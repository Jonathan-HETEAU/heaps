# Package `hxd.snd.openal`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AL`](AL.md) | typedef | The OpenAL API. |
| [`BufferHandle`](BufferHandle.md) | class | An OpenAL sound buffer. |
| [`Driver`](Driver.md) | class | The OpenAL sound driver, used on HashLink (with the `hlopenal` library) and on JS with `-D useal` (through an emulator over Web Audio). |
| [`EFX`](EFX.md) | typedef | The OpenAL effects extension API. |
| [`LowPassDriver`](LowPassDriver.md) | class | Implements `hxd.snd.effect.LowPass` with an OpenAL EFX filter. |
| [`PitchDriver`](PitchDriver.md) | class | Implements `hxd.snd.effect.Pitch` with the OpenAL source pitch. |
| [`ReverbDriver`](ReverbDriver.md) | class | Implements `hxd.snd.effect.Reverb` with an OpenAL EFX reverb on an auxiliary send. |
| [`SourceHandle`](SourceHandle.md) | class | An OpenAL sound source, with the auxiliary sends used by its effects. |
| [`SpatializationDriver`](SpatializationDriver.md) | class | Implements `hxd.snd.effect.Spatialization` with the OpenAL source position. |
