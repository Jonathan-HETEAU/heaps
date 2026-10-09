# Package `h3d.parts`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`BlendMode`](BlendMode.md) | enum | The blend mode of the particles. |
| [`Collider`](Collider.md) | interface | A collision handler for the particles of an `Emitter` (see `Emitter.collider` and `State.collide`). |
| [`ColorKey`](ColorKey.md) | class | A key of a color gradient: the color at a given time. |
| [`Converge`](Converge.md) | enum | How the range of a `VRandom` value changes over time. |
| [`Emitter`](Emitter.md) | class | A CPU particle emitter configured by a `State`. |
| [`GpuEmitMode`](GpuEmitMode.md) | enum | The shape the particles of a `GpuPartGroup` are emitted from. |
| [`GpuPart`](GpuPart.md) | class | The initial state of a particle of a `GpuPartGroup`, computed on the CPU and uploaded once. |
| [`GpuPartGroup`](GpuPartGroup.md) | class | A group of GPU particles sharing the same settings and material, part of a `GpuParticles`. |
| [`GpuParticles`](GpuParticles.md) | class | A particle system animated on the GPU: the initial state of each particle is computed once, then the shader computes its position, size and color over time. |
| [`GpuSave`](GpuSave.md) | typedef | The serialized form of a `GpuParticles` (see `GpuParticles.save`). |
| [`GpuSortMode`](GpuSortMode.md) | enum | How the particles of a `GpuPartGroup` are sorted. |
| [`Particle`](Particle.md) | class | A particle of a `Particles` set or an `Emitter`. |
| [`Particles`](Particles.md) | class | A set of camera facing particles (sprites) drawn in a single draw call. |
| [`Randomized`](Randomized.md) | interface | A source of random numbers for the particle values. |
| [`Shape`](Shape.md) | enum | The volume the particles are emitted from. |
| [`SortMode`](SortMode.md) | enum | The drawing order of the particles. |
| [`State`](State.md) | class | The settings of a CPU particle emitter (`Emitter`), usually edited in an editor and saved with `haxe.Serializer`. |
| [`Value`](Value.md) | enum | A value of a particle property, evaluated at a time `t` (the fraction of the particle life, or of the emitter loop, from `0` to `1`). |
| [`ValueXYZ`](ValueXYZ.md) | class | A 3D vector whose components are `Value`s. |
