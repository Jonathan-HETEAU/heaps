# hxd.impl.BufferFlags

**enum abstract** · package [`hxd.impl`](README.md) · module `hxd.impl.Allocator` · source [`hxd/impl/Allocator.hx`](../../../../../hxd/impl/Allocator.hx)

The kind of buffer requested from an `Allocator`.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `Dynamic` | `0` | A vertex buffer updated often. |
| `Static` | `1` | A vertex buffer uploaded once. |
| `UniformDynamic` | `2` | A uniform buffer updated often. |
| `UniformReadWrite` | `3` | A uniform buffer that shaders can write. |
| `Uniform` | `4` | A uniform buffer. |

## Methods

### toInt

```haxe
inline function toInt():Int
```

Returns the integer value of the flags.
