# Package `h3d.scene`

[← retour](../DEPENDENCIES.md)

## h3d.scene.AnimMeshBatcher

- Fichier : `h3d/scene/AnimMeshBatcher.hx` — 91 lignes — 5 blocs doc
- Types : `class AnimMeshBatchShader`, `class AnimMeshBatch`, `class AnimMeshBatcher`
- Héritage : `AnimMeshBatchShader` extends `hxsl.Shader`, `AnimMeshBatch` extends `MeshBatch`, `AnimMeshBatcher` extends `Object`
- Dépend de : `h3d.Matrix`, `h3d.anim.Animation`, `h3d.mat.Material`, `h3d.prim.MeshPrimitive`, `h3d.scene.MeshBatch` (extends/use), `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `hxsl.Shader` (extends/use)

## h3d.scene.Batcher

- Fichier : `h3d/scene/Batcher.hx` — 1564 lignes — 47 blocs doc — contient du `#if`
- Types : `enum BatcherFlags`, `class ObjectInstance`, `class BatchLibrary`, `class BatchGroup`, `class Batcher`, `class BaseSync`, `interface SyncShaderInterface`, `class MeshInstance`, `class MaterialInstance`, `class DrawInstance`, `class ShaderData`, `class Batch`, `class GroupData`, `class BatchCommandBuilder`, `class BatchPass`, `class EmitData`
- Héritage : `Batcher` extends `h3d.scene.Object`, `BaseSync` extends `hxsl.Shader`, `BatchCommandBuilder` extends `hxsl.Shader`
- Dépend de : `h3d.Buffer`, `h3d.BufferHandle`, `h3d.Engine`, `h3d.GPUCounter`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.col.Bounds`, `h3d.impl.InstanceBuffer`, `h3d.mat.Material`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `h3d.prim.BatchPrimitive`, `h3d.prim.HMDModel`, `h3d.prim.Polygon`, `h3d.scene.Mesh`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `h3d.scene.Renderer`, `h3d.scene.pbr.Light`, `h3d.shader.ApplyTransformShader`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.FloatBufferLoader`, `hxd.Math`, `hxd.impl.Allocator`, `hxsl.BatchShader`, `hxsl.Cache`, `hxsl.Globals`, `hxsl.Shader` (extends/use), `hxsl.ShaderList`

## h3d.scene.Box

- Fichier : `h3d/scene/Box.hx` — 104 lignes — 5 blocs doc
- Types : `class Box`
- Héritage : `Box` extends `Graphics`
- Dépend de : `h3d.col.Bounds`, `h3d.scene.Graphics` (extends/use), `h3d.scene.Object`
- Utilisé par : `h3d.col.SkinCollider`, `h3d.scene.HierarchicalWorld`, `hxd.fmt.fbx.Writer`

## h3d.scene.CameraController

- Fichier : `h3d/scene/CameraController.hx` — 599 lignes — 34 blocs doc
- Types : `class CameraController`, `class OrbitCameraController`, `class FPSCameraController`
- Héritage : `CameraController` extends `h3d.scene.Object`, `OrbitCameraController` extends `CameraController`, `FPSCameraController` extends `CameraController`
- Dépend de : `h2d.col.Point`, `h3d.Vector`, `h3d.Vector4`, `h3d.col.Point`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `h3d.scene.Scene`, `hxd.Key`, `hxd.Math`, `hxd.Pad`, `hxd.Timer`, `hxd.Window.js`
- Utilisé par : `h3d.impl.Benchmark`

## h3d.scene.Capsule

- Fichier : `h3d/scene/Capsule.hx` — 91 lignes — 5 blocs doc
- Types : `class Capsule`
- Héritage : `Capsule` extends `Graphics`
- Dépend de : `h3d.scene.Graphics` (extends/use), `hxd.Math`

## h3d.scene.GPUMeshBatch

- Fichier : `h3d/scene/GPUMeshBatch.hx` — 360 lignes — 6 blocs doc — contient du `#if`
- Types : `class GPUMeshBatch`
- Héritage : `GPUMeshBatch` extends `MeshBatch`
- Dépend de : `h3d.Buffer`, `h3d.GPUCounter`, `h3d.Vector4`, `h3d.impl.GlDriver`, `h3d.mat.Pass`, `h3d.prim.HMDModel`, `h3d.scene.MeshBatch` (extends/import/use), `h3d.scene.RenderContext`, `h3d.shader.InstanceIndirect`, `hxd.BufferFormat`, `hxd.Math`, `hxd.impl.Allocator`

## h3d.scene.Graphics

- Fichier : `h3d/scene/Graphics.hx` — 356 lignes — 10 blocs doc
- Types : `class GPoint`, `class Graphics`
- Héritage : `Graphics` extends `Mesh`
- Dépend de : `h3d.col.Point`, `h3d.mat.Texture`, `h3d.prim.BigPrimitive`, `h3d.scene.Mesh` (extends/use), `h3d.scene.RenderContext`, `h3d.shader.LineShader`, `h3d.shader.VertexColorAlpha`, `hxd.BufferFormat`, `hxd.Math` (import/use)
- Utilisé par : `h3d.col.OrientedBounds`, `h3d.pass.CascadeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.Shadows`, `h3d.scene.Box`, `h3d.scene.Capsule`, `h3d.scene.HierarchicalWorld`, `h3d.scene.Skin`, `h3d.scene.Sphere`, `h3d.scene.pbr.LightBuffer`

## h3d.scene.HierarchicalWorld

- Fichier : `h3d/scene/HierarchicalWorld.hx` — 390 lignes — 24 blocs doc
- Types : `typedef WorldData`, `class HierarchicalWorld`
- Héritage : `HierarchicalWorld` extends `Object`
- Dépend de : `h2d.col.Point`, `h3d.col.Bounds`, `h3d.col.Point`, `h3d.scene.Box`, `h3d.scene.Graphics`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `h3d.shader.FixedColor`

## h3d.scene.Interactive

- Fichier : `h3d/scene/Interactive.hx` — 392 lignes — 34 blocs doc
- Types : `class Interactive`
- Héritage : `Interactive` extends `Object`, `Interactive` implements `hxd.SceneEvents.Interactive`
- Dépend de : `h3d.Engine`, `h3d.Vector4`, `h3d.col.Collider`, `h3d.col.Ray`, `h3d.scene.Object` (extends/use), `h3d.scene.Scene`, `hxd.Cursor`, `hxd.Pad`, `hxd.SceneEvents` (implements/use), `hxd.Timer`
- Utilisé par : `h3d.scene.Scene`, `hxd.fmt.fbx.Writer`

## h3d.scene.Light

- Fichier : `h3d/scene/Light.hx` — 50 lignes — 3 blocs doc
- Types : `class Light`
- Héritage : `Light` extends `Object`
- Dépend de : `h3d.Vector`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `hxsl.Shader`
- Utilisé par : `h3d.pass.CapsuleShadowMap`, `h3d.pass.CascadeShadowMap`, `h3d.pass.CubeShadowMap`, `h3d.pass.DirShadowMap`, `h3d.pass.PointShadowMap`, `h3d.pass.ProjectedShadowMap`, `h3d.pass.Shadows`, `h3d.scene.LightSystem`, `h3d.scene.RenderContext`, `h3d.scene.fwd.Light`, `h3d.scene.fwd.LightSystem`, `h3d.scene.pbr.Light`

## h3d.scene.LightSystem

- Fichier : `h3d/scene/LightSystem.hx` — 69 lignes — 8 blocs doc
- Types : `class LightSystem`
- Dépend de : `h3d.scene.Light`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `hxsl.Globals`, `hxsl.ShaderList`
- Utilisé par : `h3d.mat.MaterialSetup`, `h3d.scene.RenderContext`, `h3d.scene.Renderer`, `h3d.scene.Scene`, `h3d.scene.fwd.LightSystem`, `h3d.scene.pbr.LightSystem`

## h3d.scene.Mesh

- Fichier : `h3d/scene/Mesh.hx` — 230 lignes — 14 blocs doc
- Types : `class Mesh`
- Héritage : `Mesh` extends `Object`
- Dépend de : `h3d.Camera`, `h3d.Matrix`, `h3d.col.Bounds`, `h3d.col.Collider`, `h3d.mat.Material`, `h3d.mat.MaterialSetup`, `h3d.prim.Blendshape`, `h3d.prim.HMDModel`, `h3d.prim.Primitive`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `hxd.Math`
- Utilisé par : `h2d.Scene3D`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Cylinder`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.Sphere`, `h3d.mat.MaterialSetup`, `h3d.parts.Particles`, `h3d.prim.Blendshape`, `h3d.scene.Batcher`, `h3d.scene.Graphics`, `h3d.scene.MultiMaterial`, `h3d.scene.Object`, `h3d.scene.Trail`, `h3d.scene.World`, `h3d.scene.pbr.Decal`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hmd.Library`

## h3d.scene.MeshBatch

- Fichier : `h3d/scene/MeshBatch.hx` — 994 lignes — 55 blocs doc — contient du `#if`
- Types : `enum MeshBatchFlag`, `typedef CpuIndirectCallBuffer`, `class MeshBatch`, `class BatchData`, `class SubMesh`, `class SubPart`
- Héritage : `MeshBatch` extends `MultiMaterial`
- Dépend de : `h3d.Buffer`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.col.Bounds`, `h3d.impl.InstanceBuffer`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.mat.TextureHandle`, `h3d.prim.HMDModel`, `h3d.prim.Instanced`, `h3d.prim.MeshPrimitive`, `h3d.scene.MultiMaterial` (extends/use), `h3d.scene.RenderContext`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.FloatBufferLoader`, `hxd.Math`, `hxd.impl.Allocator`, `hxsl.Ast`, `hxsl.BatchShader`, `hxsl.Cache`, `hxsl.Globals`, `hxsl.RuntimeShader`, `hxsl.Shader`
- Utilisé par : `h3d.pass.CascadeShadowMap`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.GPUMeshBatch`

## h3d.scene.MultiMaterial

- Fichier : `h3d/scene/MultiMaterial.hx` — 78 lignes — 3 blocs doc
- Types : `class MultiMaterial`
- Héritage : `MultiMaterial` extends `Mesh`
- Dépend de : `h3d.mat.Material`, `h3d.scene.Mesh` (extends/use), `h3d.scene.Object`, `h3d.scene.RenderContext`
- Utilisé par : `h3d.parts.GpuParticles`, `h3d.scene.MeshBatch`, `h3d.scene.Skin`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hmd.Library`

## h3d.scene.Object

- Fichier : `h3d/scene/Object.hx` — 1190 lignes — 105 blocs doc — contient du `#if`
- Types : `enum_abstract ObjectFlags`, `class Object`
- Dépend de : `h3d.Matrix`, `h3d.Quat`, `h3d.Vector`, `h3d.anim.Animation`, `h3d.col.Bounds`, `h3d.col.Collider`, `h3d.col.ObjectCollider`, `h3d.col.Point`, `h3d.impl.SceneProf`, `h3d.mat.Material`, `h3d.scene.Mesh`, `h3d.scene.RenderContext`, `h3d.scene.Scene`, `hxd.Math`, `hxd.Timer`, `hxd.impl.ArrayIterator`
- Utilisé par : `h2d.ObjectFollower`, `h3d.Camera`, `h3d.anim.Animation`, `h3d.anim.BlendSpace2D`, `h3d.anim.SmoothTarget`, `h3d.anim.Transition`, `h3d.col.Bounds`, `h3d.col.Capsule`, `h3d.col.Collider`, `h3d.col.Cylinder`, `h3d.col.HeightMap`, `h3d.col.InsideCollider`, `h3d.col.ObjectCollider`, `h3d.col.Polygon`, `h3d.col.PolygonBuffer`, `h3d.col.SkinCollider`, `h3d.col.Sphere`, `h3d.col.TransformCollider`, `h3d.impl.Benchmark`, `h3d.impl.SceneProf`, `h3d.pass.DirShadowMap`, `h3d.pass.PassObject`, `h3d.prim.ModelCache`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.Batcher`, `h3d.scene.Box`, `h3d.scene.CameraController`, `h3d.scene.HierarchicalWorld`, `h3d.scene.Interactive`, `h3d.scene.Light`, `h3d.scene.LightSystem`, `h3d.scene.Mesh`, `h3d.scene.MultiMaterial`, `h3d.scene.RenderContext`, `h3d.scene.Renderer`, `h3d.scene.Scene`, `h3d.scene.Skin`, `h3d.scene.World`, `h3d.scene.fwd.LightSystem`, `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.DirLight`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.LightSystem`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.SpotLight`, `hxd.fmt.fbx.BaseLibrary`, `hxd.fmt.fbx.Writer`, `hxd.fmt.hmd.Library`

## h3d.scene.RenderContext

- Fichier : `h3d/scene/RenderContext.hx` — 544 lignes — 51 blocs doc
- Types : `class SharedGlobal`, `class View`, `class RenderContext`
- Héritage : `RenderContext` extends `h3d.impl.RenderContext`
- Dépend de : `h3d.Buffer`, `h3d.BufferHandle`, `h3d.Camera`, `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.col.Collider`, `h3d.col.Frustum` (import/use), `h3d.col.Plane`, `h3d.impl.RenderContext` (extends/use), `h3d.mat.Material`, `h3d.mat.Pass`, `h3d.mat.Texture` (import/use), `h3d.mat.TextureHandle`, `h3d.pass.PassObject`, `h3d.scene.Light`, `h3d.scene.LightSystem`, `h3d.scene.Object`, `h3d.scene.Renderer`, `h3d.scene.Scene`, `hxd.BufferFormat`, `hxd.impl.Allocator`, `hxsl.Cache`, `hxsl.Macros`, `hxsl.Shader`, `hxsl.ShaderList`
- Utilisé par : `h3d.col.SkinCollider`, `h3d.parts.Emitter`, `h3d.parts.GpuParticles`, `h3d.parts.Particles`, `h3d.pass.Output`, `h3d.scene.AnimMeshBatcher`, `h3d.scene.Batcher`, `h3d.scene.CameraController`, `h3d.scene.GPUMeshBatch`, `h3d.scene.Graphics`, `h3d.scene.HierarchicalWorld`, `h3d.scene.Light`, `h3d.scene.LightSystem`, `h3d.scene.Mesh`, `h3d.scene.MeshBatch`, `h3d.scene.MultiMaterial`, `h3d.scene.Object`, `h3d.scene.Renderer`, `h3d.scene.Scene`, `h3d.scene.Skin`, `h3d.scene.Trail`, `h3d.scene.World`, `h3d.scene.pbr.CapsuleLight`, `h3d.scene.pbr.Decal`, `h3d.scene.pbr.DirLight`, `h3d.scene.pbr.LightBuffer`, `h3d.scene.pbr.PointLight`, `h3d.scene.pbr.RectangleLight`, `h3d.scene.pbr.SpotLight`

## h3d.scene.Renderer

- Fichier : `h3d/scene/Renderer.hx` — 298 lignes — 23 blocs doc — contient du `#if`
- Types : `class PassObjects`, `enum RenderMode`, `class Renderer`
- Héritage : `Renderer` extends `hxd.impl.AnyProps`
- Dépend de : `h3d.Engine`, `h3d.impl.RendererFX`, `h3d.mat.Data`, `h3d.mat.Texture`, `h3d.pass.Copy`, `h3d.pass.Output`, `h3d.pass.PassList`, `h3d.pass.Shadows`, `h3d.scene.LightSystem`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `hxd.impl.AnyProps` (extends/use), `hxsl.Shader`
- Utilisé par : `h3d.impl.RendererFX`, `h3d.mat.MaterialSetup`, `h3d.mat.PbrMaterialSetup`, `h3d.pass.SSR`, `h3d.scene.Batcher`, `h3d.scene.RenderContext`, `h3d.scene.Scene`, `h3d.scene.fwd.Renderer`, `h3d.scene.pbr.LightSystem`, `h3d.scene.pbr.Renderer`

## h3d.scene.Scene

- Fichier : `h3d/scene/Scene.hx` — 640 lignes — 23 blocs doc — contient du `#if`
- Types : `enum_abstract CollisionGroup`, `class Scene`
- Héritage : `Scene` extends `Object`, `Scene` implements `h3d.IDrawable`, `Scene` implements `hxd.SceneEvents.InteractiveScene`
- Dépend de : `h3d.Camera`, `h3d.Engine`, `h3d.IDrawable` (implements/use), `h3d.Matrix`, `h3d.Vector`, `h3d.col.Collider`, `h3d.col.Ray`, `h3d.impl.SceneProf`, `h3d.mat.MaterialSetup`, `h3d.mat.Pass`, `h3d.mat.Texture`, `h3d.scene.Interactive`, `h3d.scene.LightSystem`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `h3d.scene.Renderer`, `hxd.Math`, `hxd.Pad`, `hxd.SceneEvents` (implements/use), `hxd.Timer`, `hxd.Window.js`
- Utilisé par : `h2d.Scene3D`, `h2d.domkit.Style`, `h3d.impl.Benchmark`, `h3d.scene.CameraController`, `h3d.scene.Interactive`, `h3d.scene.Object`, `h3d.scene.RenderContext`, `hxd.App`

## h3d.scene.Skin

- Fichier : `h3d/scene/Skin.hx` — 810 lignes — 30 blocs doc — contient du `#if`
- Types : `class Joint`, `class JointData`, `class DynamicJointData`, `class Skin`, `class SubSkin`
- Héritage : `Joint` extends `Object`, `DynamicJointData` extends `JointData`, `Skin` extends `MultiMaterial`, `SubSkin` extends `h3d.scene.Skin`
- Dépend de : `h3d.Buffer`, `h3d.Matrix`, `h3d.Quat`, `h3d.Vector`, `h3d.anim.Animation`, `h3d.anim.Skin` (import/use), `h3d.col.Bounds`, `h3d.col.Collider`, `h3d.col.PolygonBuffer`, `h3d.col.SkinCollider`, `h3d.col.TransformCollider`, `h3d.prim.HMDModel`, `h3d.scene.Graphics`, `h3d.scene.MultiMaterial` (extends/use), `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `h3d.shader.Skin`, `h3d.shader.SkinBase`, `h3d.shader.SkinTangent`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.FloatBufferLoader`, `hxd.Math`, `hxd.Timer`, `hxd.impl.Allocator`
- Utilisé par : `h3d.anim.Animation`, `h3d.anim.BlendSpace2D`, `h3d.anim.BufferAnimation`, `h3d.anim.LinearAnimation`, `h3d.anim.Skin`, `h3d.anim.SmoothTransition`, `h3d.col.SkinCollider`, `h3d.prim.ModelDatabase`, `hxd.fmt.hmd.Library`

## h3d.scene.Sphere

- Fichier : `h3d/scene/Sphere.hx` — 73 lignes — 4 blocs doc
- Types : `class Sphere`
- Héritage : `Sphere` extends `Graphics`
- Dépend de : `h3d.scene.Graphics` (extends/use), `hxd.Math`

## h3d.scene.Trail

- Fichier : `h3d/scene/Trail.hx` — 328 lignes — 15 blocs doc
- Types : `class TrailElement`, `class Trail`
- Héritage : `Trail` extends `Mesh`
- Dépend de : `h3d.Quat`, `h3d.col.Point`, `h3d.mat.MaterialSetup`, `h3d.mat.Texture`, `h3d.prim.DynamicPrimitive`, `h3d.scene.Mesh` (extends/use), `h3d.scene.RenderContext`, `hxd.BufferFormat`, `hxd.Math`, `hxd.Timer`, `hxd.res.Loader`, `hxd.res.NotFound`

## h3d.scene.World

- Fichier : `h3d/scene/World.hx` — 912 lignes — 69 blocs doc
- Types : `class WorldElement`, `class WorldChunk`, `class WorldMaterial`, `class WorldModelGeometry`, `enum OptAlgorithm`, `class WorldModel`, `class World`
- Héritage : `World` extends `Object`
- Dépend de : `h3d.Engine`, `h3d.Matrix`, `h3d.Vector`, `h3d.Vector4`, `h3d.col.Bounds`, `h3d.mat.BigTexture`, `h3d.mat.BlendMode`, `h3d.mat.Data`, `h3d.prim.BigPrimitive`, `h3d.scene.Mesh`, `h3d.scene.Object` (extends/use), `h3d.scene.RenderContext`, `hxd.BufferFormat`, `hxd.FloatBuffer`, `hxd.IndexBuffer`, `hxd.Math`, `hxd.fmt.hmd.Data`, `hxd.res.Image`, `hxd.res.Loader`, `hxd.res.Model`, `hxd.res.NotFound`, `hxsl.Shader`
