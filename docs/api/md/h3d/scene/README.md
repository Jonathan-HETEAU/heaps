# Package `h3d.scene`

[← API index](../../README.md)

Sub-packages: [`h3d.scene.fwd`](fwd/README.md), [`h3d.scene.pbr`](pbr/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnimMeshBatch`](AnimMeshBatch.md) | class | A `MeshBatch` whose instances all follow the animated transform of a source mesh (see `AnimMeshBatcher`). |
| [`AnimMeshBatchShader`](AnimMeshBatchShader.md) | class | Shader applying the animated transform of the source object to all the instances of an `AnimMeshBatch`. |
| [`AnimMeshBatcher`](AnimMeshBatcher.md) | class | Draws many copies of an animated object with instancing: one `MeshBatch` is created per mesh of the object, and all the copies play the same animation in sync. |
| [`BaseSync`](BaseSync.md) | class | Base class of the compute shaders updating the instance transforms on the GPU (see `Batcher.syncShader`). |
| [`BatchData`](BatchData.md) | class | The instance data of one material pass of a `MeshBatch`. |
| [`BatchGroup`](BatchGroup.md) | class | A group of instances of a `Batcher` which can be removed together. |
| [`BatchLibrary`](BatchLibrary.md) | class | The geometry storage shared by `Batcher` instances: the models are packed in one big primitive per vertex format. |
| [`Batcher`](Batcher.md) | class | A GPU driven renderer for very large numbers of static instances of many different models. |
| [`BatcherFlags`](BatcherFlags.md) | enum | Options of a `Batcher`. |
| [`Box`](Box.md) | class | A debug wireframe box, drawn with 12 lines. |
| [`CameraController`](CameraController.md) | class | Base class of the mouse/keyboard camera controllers. |
| [`Capsule`](Capsule.md) | class | A debug wireframe capsule aligned on the X axis: a cylinder of `length` capped by two half spheres of `radius`. |
| [`CpuIndirectCallBuffer`](CpuIndirectCallBuffer.md) | typedef | The indirect draw commands of one material, built on the CPU when using sub meshes. |
| [`DynamicJointData`](DynamicJointData.md) | class | The runtime state of a dynamic joint (`h3d.anim.Skin.DynamicJoint`): a joint simulated as a spring following its animated position, for hair, cloth or other secondary motion. |
| [`FPSCameraController`](FPSCameraController.md) | class | A free flying "first person" camera controller: - right button drag: looks around; - while holding the right or middle button: arrow keys or ZQSD move forward/backward/sideways (W, S and D also work),   A moves down a... |
| [`GPUMeshBatch`](GPUMeshBatch.md) | class | A `MeshBatch` using GPU driven rendering: the level of detail selection and the frustum culling of each instance can be computed by a compute shader (see `enableGpuLod` and `enableGpuCulling`), and the instances are d... |
| [`Graphics`](Graphics.md) | class | Draws 3D lines with an API similar to `h2d.Graphics`: set a style with `lineStyle`, then `moveTo` / `lineTo`. |
| [`HierarchicalWorld`](HierarchicalWorld.md) | class | A streamed world split in a quadtree of square chunks on the XY plane. |
| [`Interactive`](Interactive.md) | class | A 3D object receiving mouse, touch and keyboard events through a collision shape. |
| [`Joint`](Joint.md) | class | A temporary object representing a joint (bone) of a `Skin`, returned by `Skin.getObjectByName`. |
| [`JointData`](JointData.md) | class | The runtime state of a joint of a `Skin` (one per joint of the skin data). |
| [`Light`](Light.md) | class | Base class for all 3D lights. |
| [`LightSystem`](LightSystem.md) | class | Base class of the lighting setup used by a `Renderer`. |
| [`Mesh`](Mesh.md) | class | h3d.scene.Mesh is the base class for all 3D objects displayed on screen. |
| [`MeshBatch`](MeshBatch.md) | class | h3d.scene.MeshBatch allows to draw multiple meshed in a single draw call. |
| [`MeshBatchFlag`](MeshBatchFlag.md) | enum | Options of a `MeshBatch`, set with its `enable*` methods. |
| [`MultiMaterial`](MultiMaterial.md) | class | A `Mesh` using several materials, one per material group of its primitive. |
| [`Object`](Object.md) | class | h3d.scene.Object is the base 3D class that all scene tree elements inherit from. |
| [`ObjectFlags`](ObjectFlags.md) | enum abstract | Bit flags storing the boolean state of an `Object`. |
| [`ObjectInstance`](ObjectInstance.md) | class | A model registered in a `Batcher` with `Batcher.addInstance`, which can then be emitted many times. |
| [`OptAlgorithm`](OptAlgorithm.md) | enum | Geometry optimizations available for `WorldModel.optimize`. |
| [`OrbitCameraController`](OrbitCameraController.md) | class | A camera controller orbiting around a target, as in 3D editors: - right button drag: pans the target; - middle button drag (or Alt + left button drag): rotates around the target; - mouse wheel: zooms (see `enableZoom`... |
| [`PassObjects`](PassObjects.md) | class | The list of draw passes emitted for one pass name (such as `"default"`, `"alpha"` or `"shadow"`) during a frame, handed to the `Renderer` by the `Scene`. |
| [`RenderContext`](RenderContext.md) | class | The per-frame state of a 3D `Scene` rendering, shared by the scene objects, the `Renderer` and the render passes. |
| [`RenderMode`](RenderMode.md) | enum | The rendering mode of a `Renderer`. |
| [`Renderer`](Renderer.md) | class | Base class of the scene renderers. |
| [`Scene`](Scene.md) | class | h3d.scene.Scene is the root class for a 3D scene. |
| [`Skin`](Skin.md) | class | A skinned mesh: a mesh deformed by a skeleton of joints (bones), driven by skeletal animations. |
| [`Sphere`](Sphere.md) | class | A debug wireframe sphere, drawn as three orthogonal circles of 32 segments. |
| [`SubMesh`](SubMesh.md) | class | A part of the primitive of a `MeshBatch` which can be drawn by an instance (see `MeshBatch.primitiveSubMeshes`). |
| [`SubPart`](SubPart.md) | class | An index range of the primitive, for one material and its levels of detail. |
| [`SubSkin`](SubSkin.md) | class | A skin following the skeleton of another skin: the joints with the same name copy the pose of `baseSkin`. |
| [`SyncShaderInterface`](SyncShaderInterface.md) | interface | The parameters of a `Batcher.syncShader`, filled by the batcher before running it. |
| [`Trail`](Trail.md) | class | A ribbon following the movements of the object, such as a sword or projectile trail. |
| [`View`](View.md) | class | A rendering view: the frustum used to cull objects for the current view (see `RenderContext.currentView`). |
| [`World`](World.md) | class | A static world made of many model instances, split in square chunks on the XY plane. |
| [`WorldChunk`](WorldChunk.md) | class | A square area of a `World`, of `World.chunkSize` units. |
| [`WorldData`](WorldData.md) | typedef | The parameters of a node of a `HierarchicalWorld`. |
| [`WorldElement`](WorldElement.md) | class | A model instance placed in a `World` chunk. |
| [`WorldMaterial`](WorldMaterial.md) | class | A material of a `World` model: the geometries sharing the same material bits are merged in the same mesh. |
| [`WorldModel`](WorldModel.md) | class | A model loaded by `World.loadModel`: its geometry is kept on the CPU to be merged into the chunks. |
| [`WorldModelGeometry`](WorldModelGeometry.md) | class | A part of a `WorldModel` using one material. |
