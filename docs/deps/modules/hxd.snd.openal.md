# Package `hxd.snd.openal`

[← retour](../DEPENDENCIES.md)

## hxd.snd.openal.AudioTypes

- Fichier : `hxd/snd/openal/AudioTypes.hx` — 52 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef AL`, `typedef EFX`, `typedef AL`, `class BufferHandle`, `class SourceHandle`
- Dépend de : `hxd.snd.Effect`, `hxd.snd.openal.Emulator` (import/use)
- Utilisé par : `hxd.snd.Driver`, `hxd.snd.openal.Driver`, `hxd.snd.openal.LowPassDriver`, `hxd.snd.openal.PitchDriver`, `hxd.snd.openal.ReverbDriver`, `hxd.snd.openal.SpatializationDriver`

## hxd.snd.openal.Driver

- Fichier : `hxd/snd/openal/Driver.hx` — 224 lignes — 0 blocs doc — contient du `#if`
- Types : `class Driver`
- Héritage : `Driver` implements `hxd.snd.Driver`
- Dépend de : `h3d.Vector`, `hxd.snd.Data`, `hxd.snd.Driver` (implements/import/use), `hxd.snd.openal.AudioTypes` (import/use), `hxd.snd.openal.Emulator` (import/use), `hxd.snd.openal.LowPassDriver`, `hxd.snd.openal.PitchDriver`, `hxd.snd.openal.ReverbDriver`, `hxd.snd.openal.SpatializationDriver`
- Utilisé par : `hxd.snd.Manager`, `hxd.snd.openal.LowPassDriver`, `hxd.snd.openal.ReverbDriver`

## hxd.snd.openal.Emulator

- Fichier : `hxd/snd/openal/Emulator.hx` — 870 lignes — 1 blocs doc — contient du `#if`
- Types : `typedef F32`, `typedef Bytes`, `class Channel`, `class Source`, `class Buffer`, `class Emulator`, `class Device`, `class Context`, `class ALC`, `class EFX`
- Héritage : `Channel` extends `NativeChannel`
- Dépend de : `hxd.snd.NativeChannel` (extends/use), `hxd.snd.webaudio.Context`
- Utilisé par : `hxd.snd.Manager`, `hxd.snd.openal.AudioTypes`, `hxd.snd.openal.Driver`

## hxd.snd.openal.LowPassDriver

- Fichier : `hxd/snd/openal/LowPassDriver.hx` — 40 lignes — 0 blocs doc
- Types : `class LowPassDriver`
- Héritage : `LowPassDriver` extends `hxd.snd.Driver.EffectDriver`
- Dépend de : `hxd.snd.Driver` (extends/use), `hxd.snd.effect.LowPass` (import/use), `hxd.snd.openal.AudioTypes` (import/use), `hxd.snd.openal.Driver`
- Utilisé par : `hxd.snd.openal.Driver`, `hxd.snd.openal.ReverbDriver`

## hxd.snd.openal.PitchDriver

- Fichier : `hxd/snd/openal/PitchDriver.hx` — 16 lignes — 0 blocs doc
- Types : `class PitchDriver`
- Héritage : `PitchDriver` extends `EffectDriver`
- Dépend de : `hxd.snd.Driver` (extends/import/use), `hxd.snd.effect.Pitch` (import/use), `hxd.snd.openal.AudioTypes` (import/use)
- Utilisé par : `hxd.snd.openal.Driver`

## hxd.snd.openal.ReverbDriver

- Fichier : `hxd/snd/openal/ReverbDriver.hx` — 92 lignes — 0 blocs doc
- Types : `class ReverbDriver`
- Héritage : `ReverbDriver` extends `hxd.snd.Driver.EffectDriver`
- Dépend de : `hxd.Math`, `hxd.snd.Driver` (extends/use), `hxd.snd.effect.LowPass`, `hxd.snd.effect.Reverb`, `hxd.snd.openal.AudioTypes` (import/use), `hxd.snd.openal.Driver`, `hxd.snd.openal.LowPassDriver`
- Utilisé par : `hxd.snd.openal.Driver`

## hxd.snd.openal.SpatializationDriver

- Fichier : `hxd/snd/openal/SpatializationDriver.hx` — 37 lignes — 0 blocs doc
- Types : `class SpatializationDriver`
- Héritage : `SpatializationDriver` extends `EffectDriver`
- Dépend de : `hxd.snd.Driver` (extends/import/use), `hxd.snd.effect.Spatialization` (import/use), `hxd.snd.openal.AudioTypes` (import/use)
- Utilisé par : `hxd.snd.openal.Driver`
