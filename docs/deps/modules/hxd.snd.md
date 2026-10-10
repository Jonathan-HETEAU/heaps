# Package `hxd.snd`

[← retour](../DEPENDENCIES.md)

## hxd.snd.Channel

- Fichier : `hxd/snd/Channel.hx` — 134 lignes — 14 blocs doc
- Types : `class Channel`
- Héritage : `Channel` extends `ChannelBase`
- Dépend de : `hxd.res.Sound`, `hxd.snd.ChannelBase` (extends/use), `hxd.snd.ChannelGroup`, `hxd.snd.Manager`, `hxd.snd.SoundGroup`
- Utilisé par : `hxd.res.Sound`, `hxd.snd.Manager`

## hxd.snd.ChannelBase

- Fichier : `hxd/snd/ChannelBase.hx` — 94 lignes — 10 blocs doc
- Types : `class ChannelBase`
- Dépend de : `hxd.snd.Effect`, `hxd.snd.Manager`
- Utilisé par : `hxd.res.Sound`, `hxd.snd.Channel`, `hxd.snd.ChannelGroup`

## hxd.snd.ChannelGroup

- Fichier : `hxd/snd/ChannelGroup.hx` — 22 lignes — 3 blocs doc
- Types : `class ChannelGroup`
- Héritage : `ChannelGroup` extends `ChannelBase`
- Dépend de : `hxd.snd.ChannelBase` (extends/use)
- Utilisé par : `hxd.snd.Channel`, `hxd.snd.Manager`

## hxd.snd.Data

- Fichier : `hxd/snd/Data.hx` — 234 lignes — 17 blocs doc
- Types : `enum SampleFormat`, `class Data`
- Dépend de : `hxd.Math`, `hxd.snd.WavData`
- Utilisé par : `hxd.res.Sound`, `hxd.snd.Driver`, `hxd.snd.LoadingData`, `hxd.snd.Manager`, `hxd.snd.Mp3Data`, `hxd.snd.OggData`, `hxd.snd.WavData`, `hxd.snd.openal.Driver`, `hxd.snd.webaudio.Driver`

## hxd.snd.Driver

- Fichier : `hxd/snd/Driver.hx` — 158 lignes — 35 blocs doc — contient du `#if`
- Types : `typedef SourceHandle`, `typedef BufferHandle`, `typedef SourceHandle`, `typedef BufferHandle`, `typedef SourceHandle`, `typedef BufferHandle`, `class EffectDriver`, `enum DriverFeature`, `interface Driver`
- Dépend de : `h3d.Vector`, `hxd.snd.Data`, `hxd.snd.openal.AudioTypes`, `hxd.snd.webaudio.AudioTypes`
- Utilisé par : `hxd.snd.Effect`, `hxd.snd.Manager`, `hxd.snd.NativeChannel`, `hxd.snd.openal.Driver`, `hxd.snd.openal.LowPassDriver`, `hxd.snd.openal.PitchDriver`, `hxd.snd.openal.ReverbDriver`, `hxd.snd.openal.SpatializationDriver`, `hxd.snd.webaudio.Driver`, `hxd.snd.webaudio.LowPassDriver`, `hxd.snd.webaudio.PitchDriver`, `hxd.snd.webaudio.SpatializationDriver`

## hxd.snd.Effect

- Fichier : `hxd/snd/Effect.hx` — 48 lignes — 4 blocs doc
- Types : `class Effect`
- Dépend de : `hxd.snd.Driver` (import/use), `hxd.snd.Manager`
- Utilisé par : `hxd.snd.ChannelBase`, `hxd.snd.Manager`, `hxd.snd.effect.LowPass`, `hxd.snd.effect.Pitch`, `hxd.snd.effect.Reverb`, `hxd.snd.effect.Spatialization`, `hxd.snd.openal.AudioTypes`

## hxd.snd.Listener

- Fichier : `hxd/snd/Listener.hx` — 46 lignes — 7 blocs doc
- Types : `class Listener`
- Dépend de : `h3d.Camera`, `h3d.Vector`
- Utilisé par : `hxd.snd.Manager`

## hxd.snd.LoadingData

- Fichier : `hxd/snd/LoadingData.hx` — 37 lignes — 2 blocs doc
- Types : `class LoadingData`
- Héritage : `LoadingData` extends `Data`
- Dépend de : `hxd.res.Sound`, `hxd.snd.Data` (extends/use)

## hxd.snd.Manager

- Fichier : `hxd/snd/Manager.hx` — 965 lignes — 50 blocs doc — contient du `#if`
- Types : `class Source`, `class Buffer`, `class Manager`
- Dépend de : `hxd.Math`, `hxd.impl.ArrayIterator`, `hxd.res.Sound`, `hxd.snd.Channel`, `hxd.snd.ChannelGroup`, `hxd.snd.Data`, `hxd.snd.Driver` (import/use), `hxd.snd.Effect`, `hxd.snd.Listener`, `hxd.snd.SoundGroup`, `hxd.snd.openal.Driver`, `hxd.snd.openal.Emulator`, `hxd.snd.webaudio.Driver`
- Utilisé par : `hxd.res.Sound`, `hxd.snd.Channel`, `hxd.snd.ChannelBase`, `hxd.snd.Effect`, `hxd.snd.NativeChannel`, `hxd.snd.SoundGroup`, `hxd.snd.effect.Spatialization`

## hxd.snd.Mp3Data

- Fichier : `hxd/snd/Mp3Data.hx` — 203 lignes — 2 blocs doc — contient du `#if`
- Types : `typedef Mp3File`, `class Mp3Data`
- Héritage : `Mp3Data` extends `Data`
- Dépend de : `hxd.Math`, `hxd.impl.TypedArray`, `hxd.snd.Data` (extends/use), `hxd.snd.webaudio.Context`
- Utilisé par : `hxd.res.Sound`

## hxd.snd.NativeChannel

- Fichier : `hxd/snd/NativeChannel.hx` — 248 lignes — 5 blocs doc — contient du `#if`
- Types : `class ALChannel`, `class NativeChannel`
- Dépend de : `hxd.snd.Driver` (import/use), `hxd.snd.Manager` (import/use), `hxd.snd.webaudio.Context`
- Utilisé par : `hxd.snd.openal.Emulator`

## hxd.snd.OggData

- Fichier : `hxd/snd/OggData.hx` — 217 lignes — 6 blocs doc — contient du `#if`
- Types : `typedef OggFile`, `class OggData`, `class BytesOutput`, `class OggData`, `class OggData`
- Héritage : `OggData` extends `Data`, `BytesOutput` extends `haxe.io.Output`, `OggData` extends `Data`, `OggData` extends `Data`
- Dépend de : `hxd.snd.Data` (extends/use)
- Utilisé par : `hxd.fmt.pak.Build`, `hxd.res.Sound`

## hxd.snd.SoundGroup

- Fichier : `hxd/snd/SoundGroup.hx` — 38 lignes — 6 blocs doc
- Types : `class SoundGroup`
- Dépend de : `hxd.snd.Manager`
- Utilisé par : `hxd.snd.Channel`, `hxd.snd.Manager`

## hxd.snd.WavData

- Fichier : `hxd/snd/WavData.hx` — 38 lignes — 2 blocs doc
- Types : `class WavData`
- Héritage : `WavData` extends `hxd.snd.Data`
- Dépend de : `hxd.snd.Data` (extends/use)
- Utilisé par : `hxd.res.Sound`, `hxd.snd.Data`
