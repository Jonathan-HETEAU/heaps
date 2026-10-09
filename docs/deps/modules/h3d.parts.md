# Package `h3d.parts`

[← retour](../DEPENDENCIES.md)

## h3d.parts.Collider

- Fichier : `h3d/parts/Collider.hx` — 7 lignes — 0 blocs doc
- Types : `interface Collider`
- Dépend de : `h3d.Vector`, `h3d.parts.Particle`
- Utilisé par : `h3d.parts.Emitter`

## h3d.parts.Data

- Fichier : `h3d/parts/Data.hx` — 242 lignes — 0 blocs doc
- Types : `enum Value`, `enum Converge`, `enum Shape`, `class ValueXYZ`, `class ColorKey`, `enum BlendMode`, `enum SortMode`, `interface Randomized`, `class State`
- Dépend de : `h2d.Tile`, `h3d.parts.Emitter`, `h3d.parts.Particle`, `hxd.res.Embed`
- Utilisé par : `h3d.parts.Emitter`, `h3d.parts.Particle`, `h3d.parts.Particles`

## h3d.parts.Emitter

- Fichier : `h3d/parts/Emitter.hx` — 277 lignes — 0 blocs doc
- Types : `class Emitter`
- Héritage : `Emitter` extends `Particles`, `Emitter` implements `Randomized`
- Dépend de : `h3d.Vector`, `h3d.parts.Collider`, `h3d.parts.Data` (implements/import/use), `h3d.parts.Particle`, `h3d.parts.Particles` (extends/use), `h3d.scene.RenderContext`
- Utilisé par : `h3d.parts.Data`

## h3d.parts.GpuParticles

- Fichier : `h3d/parts/GpuParticles.hx` — 1022 lignes — 11 blocs doc — contient du `#if`
- Types : `typedef GpuSave`, `enum GpuSortMode`, `enum GpuEmitMode`, `class GpuPart`, `class GpuPartGroup`, `class GpuParticles`
- Héritage : `GpuParticles` extends `h3d.scene.MultiMaterial`
- Dépend de : `h3d.Camera`, `h3d.Matrix`, `h3d.Quat`, `h3d.col.Bounds`, `h3d.col.Point`, `h3d.mat.Material`, `h3d.mat.MaterialSetup`, `h3d.mat.Texture`, `h3d.prim.Primitive`, `h3d.prim.RawPrimitive`, `h3d.prim.UV`, `h3d.scene.MultiMaterial` (extends/use), `h3d.scene.RenderContext`, `h3d.shader.GpuParticle`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.Math` (import/use), `hxd.Rand`, `hxd.res.Loader`, `hxd.res.NotFound`

## h3d.parts.Particle

- Fichier : `h3d/parts/Particle.hx` — 77 lignes — 0 blocs doc
- Types : `class Particle`
- Héritage : `Particle` implements `Data.Randomized`
- Dépend de : `h3d.parts.Data`, `h3d.parts.Particles`
- Utilisé par : `h3d.parts.Collider`, `h3d.parts.Data`, `h3d.parts.Emitter`, `h3d.parts.Particles`

## h3d.parts.Particles

- Fichier : `h3d/parts/Particles.hx` — 399 lignes — 1 blocs doc
- Types : `class ParticleIterator`, `class Particles`
- Héritage : `Particles` extends `h3d.scene.Mesh`
- Dépend de : `h2d.Tile`, `h3d.Vector`, `h3d.parts.Data`, `h3d.parts.Particle`, `h3d.scene.Mesh` (extends/use), `h3d.scene.RenderContext`, `h3d.shader.ParticleShader`, `h3d.shader.VertexColorAlpha`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.Math`, `hxd.impl.Allocator`
- Utilisé par : `h3d.parts.Emitter`, `h3d.parts.Particle`
