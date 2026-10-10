# hxd.tools.SimplifyOptions

**enum abstract** · package [`hxd.tools`](README.md) · module `hxd.tools.MeshOptimizer` · source [`hxd/tools/MeshOptimizer.hx`](../../../../../hxd/tools/MeshOptimizer.hx)

Options of the meshoptimizer simplification functions.

Underlying type: `Int`

Implicit casts from: `Int`

Implicit casts to: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `LockBorder` | `1 << 0` | Do not move vertices that are located on the topological border (vertices on triangle edges that don't have a paired triangle). |
| `Sparse` | `1 << 1` | Improve simplification performance assuming input indices are a sparse subset of the mesh. |
| `ErrorAbsolute` | `1 << 2` | Treat error limit and resulting error as absolute instead of relative to mesh extents. |
| `Prune` | `1 << 3` | Remove disconnected parts of the mesh during simplification incrementally, regardless of the topological restrictions inside components. |
