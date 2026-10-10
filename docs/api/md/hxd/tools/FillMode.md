# hxd.tools.FillMode

**enum abstract** · package [`hxd.tools`](README.md) · module `hxd.tools.VHACD` · source [`hxd/tools/VHACD.hx`](../../../../../hxd/tools/VHACD.hx) · available on hl/sdl, hl/directx

How V-HACD fills the interior of the voxelized mesh.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `FLOOD_FILL` | `0` | Flood fill from the outside. |
| `SURFACE_ONLY` | `1` | Only the surface voxels. |
| `RAYCAST_FILL` | `2` | Fill with raycasts, for meshes that are not closed. |
