# Package `h3d`

[← API index](../README.md)

Sub-packages: [`h3d.anim`](anim/README.md), [`h3d.col`](col/README.md), [`h3d.impl`](impl/README.md), [`h3d.mat`](mat/README.md), [`h3d.parts`](parts/README.md), [`h3d.pass`](pass/README.md), [`h3d.prim`](prim/README.md), [`h3d.scene`](scene/README.md), [`h3d.shader`](shader/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Buffer`](Buffer.md) | class | A GPU buffer: vertex data (with the layout given by `format`), index data, or data read by shaders. |
| [`BufferFlag`](BufferFlag.md) | enum | The flags of a `Buffer`, given at creation. |
| [`BufferHandle`](BufferHandle.md) | class | A bindless handle of a buffer, allowing shaders to access it without binding it. |
| [`Camera`](Camera.md) | class | A 3D camera: a position `pos` looking at `target`, with a perspective (or orthographic, see `orthoBounds`) projection. |
| [`ColorAdjust`](ColorAdjust.md) | typedef | Color adjustments applied by `Matrix.adjustColor` (and `h2d.Drawable.adjustColor`). |
| [`DepthBinding`](DepthBinding.md) | enum | How the depth buffer is bound when rendering to a target (see `Engine.pushTarget`). |
| [`Engine`](Engine.md) | class | The 3D engine: it owns the graphics driver and the GPU memory manager, and manages the render targets and the frame. |
| [`GPUCounter`](GPUCounter.md) | class | A buffer of integer counters written by compute shaders and read back on the CPU. |
| [`IDrawable`](IDrawable.md) | interface | Something which can be rendered by the engine, such as a `h3d.scene.Scene` or a `h2d.Scene` (see `hxd.App`). |
| [`Indexes`](Indexes.md) | abstract | A GPU index buffer: the vertex indexes of the triangles of a primitive (16-bit, or 32-bit with `is32`). |
| [`Matrix`](Matrix.md) | abstract | A 4x4 transformation matrix. |
| [`MatrixImpl`](MatrixImpl.md) | class | The implementation of `Matrix`: use `h3d.Matrix` instead. |
| [`Quat`](Quat.md) | class | A quaternion representing a 3D rotation, used for instance by `h3d.scene.Object` to store its rotation. |
| [`Vector`](Vector.md) | abstract | A 3 floats vector. |
| [`Vector4`](Vector4.md) | abstract | A 4 floats vector. |
| [`Vector4Impl`](Vector4Impl.md) | class | A 4 floats vector. |
| [`VectorImpl`](VectorImpl.md) | class | A 3 floats vector. |
