# hxd.tools.TangentOptions

**enum abstract** · package [`hxd.tools`](README.md) · module `hxd.tools.MeshOptimizer` · source [`hxd/tools/MeshOptimizer.hx`](../../../../../hxd/tools/MeshOptimizer.hx)

Options of the meshoptimizer tangent generation.

Underlying type: `Int`

Implicit casts from: `Int`

Implicit casts to: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `TangentCompatible` | `1 << 0` | Produce tangents compatible with MikkTSpace (same weighting and fallbacks) at the cost of reduced quality. |
| `TangentZeroFallback` | `1 << 1` | Experimental: For vertices only connected to degenerate triangles, output zero tangents instead of an arbitrary fallback. |
