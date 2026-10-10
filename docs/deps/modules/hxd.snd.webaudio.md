# Package `hxd.snd.webaudio`

[← retour](../DEPENDENCIES.md)

## hxd.snd.webaudio.AudioTypes

- Fichier : `hxd/snd/webaudio/AudioTypes.hx` — 289 lignes — 35 blocs doc — contient du `#if`
- Types : `class BufferHandle`, `class SourceHandle`, `class BufferPlayback`
- Dépend de : `hxd.Math`, `hxd.snd.webaudio.Context`, `hxd.snd.webaudio.Driver`
- Utilisé par : `hxd.snd.Driver`, `hxd.snd.webaudio.Driver`, `hxd.snd.webaudio.LowPassDriver`, `hxd.snd.webaudio.PitchDriver`, `hxd.snd.webaudio.SpatializationDriver`

## hxd.snd.webaudio.Context

- Fichier : `hxd/snd/webaudio/Context.hx` — 149 lignes — 8 blocs doc — contient du `#if`
- Types : `class Context`, `class BufferPool`
- Utilisé par : `hxd.snd.Mp3Data`, `hxd.snd.NativeChannel`, `hxd.snd.openal.Emulator`, `hxd.snd.webaudio.AudioTypes`, `hxd.snd.webaudio.Driver`

## hxd.snd.webaudio.Driver

- Fichier : `hxd/snd/webaudio/Driver.hx` — 335 lignes — 27 blocs doc — contient du `#if`
- Types : `class Driver`
- Héritage : `Driver` implements `hxd.snd.Driver`
- Dépend de : `h3d.Vector`, `hxd.Math`, `hxd.impl.TypedArray`, `hxd.snd.Data`, `hxd.snd.Driver` (implements/import/use), `hxd.snd.webaudio.AudioTypes` (import/use), `hxd.snd.webaudio.Context`, `hxd.snd.webaudio.LowPassDriver`, `hxd.snd.webaudio.PitchDriver`, `hxd.snd.webaudio.SpatializationDriver`
- Utilisé par : `hxd.snd.Manager`, `hxd.snd.webaudio.AudioTypes`

## hxd.snd.webaudio.LowPassDriver

- Fichier : `hxd/snd/webaudio/LowPassDriver.hx` — 56 lignes — 2 blocs doc — contient du `#if`
- Types : `class LowPassDriver`
- Héritage : `LowPassDriver` extends `EffectDriver`
- Dépend de : `hxd.Math`, `hxd.snd.Driver` (extends/import/use), `hxd.snd.effect.LowPass` (import/use), `hxd.snd.webaudio.AudioTypes` (import/use)
- Utilisé par : `hxd.snd.webaudio.Driver`

## hxd.snd.webaudio.PitchDriver

- Fichier : `hxd/snd/webaudio/PitchDriver.hx` — 25 lignes — 1 blocs doc — contient du `#if`
- Types : `class PitchDriver`
- Héritage : `PitchDriver` extends `EffectDriver`
- Dépend de : `hxd.snd.Driver` (extends/import/use), `hxd.snd.effect.Pitch` (import/use), `hxd.snd.webaudio.AudioTypes` (import)
- Utilisé par : `hxd.snd.webaudio.Driver`

## hxd.snd.webaudio.SpatializationDriver

- Fichier : `hxd/snd/webaudio/SpatializationDriver.hx` — 57 lignes — 2 blocs doc — contient du `#if`
- Types : `class SpatializationDriver`
- Héritage : `SpatializationDriver` extends `EffectDriver`
- Dépend de : `hxd.snd.Driver` (extends/import/use), `hxd.snd.effect.Spatialization` (import/use), `hxd.snd.webaudio.AudioTypes` (import/use)
- Utilisé par : `hxd.snd.webaudio.Driver`
