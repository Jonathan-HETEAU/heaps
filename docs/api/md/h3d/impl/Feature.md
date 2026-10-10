# h3d.impl.Feature

**enum** · package [`h3d.impl`](README.md) · module `h3d.impl.Driver` · source [`h3d/impl/Driver.hx`](../../../../../h3d/impl/Driver.hx)

The optional features of a driver, tested with `Driver.hasFeature`.

## Constructors

### StandardDerivatives

```haxe
StandardDerivatives
```

Do the shader support standard derivates functions (ddx ddy).

### FloatTextures

```haxe
FloatTextures
```

Can use allocate floating point textures.

### AllocDepthBuffer

```haxe
AllocDepthBuffer
```

Can we allocate custom depth buffers. If not, default depth buffer
(queried with DepthBuffer.getDefault()) will be clear if we change
the render target resolution or format.

### HardwareAccelerated

```haxe
HardwareAccelerated
```

Is our driver hardware accelerated or CPU emulated.

### MultipleRenderTargets

```haxe
MultipleRenderTargets
```

Allows to render on several render targets with a single draw.

### Queries

```haxe
Queries
```

Does it supports query objects API.

### SRGBTextures

```haxe
SRGBTextures
```

Supports gamma correct textures

### ShaderModel3

```haxe
ShaderModel3
```

Allows advanced shader operations (webgl2, opengl3+, directx 9.0c+)

### BottomLeftCoords

```haxe
BottomLeftCoords
```

Tells if the driver uses bottom-left coordinates for textures.

### Wireframe

```haxe
Wireframe
```

Supports rendering in wireframe mode.

### InstancedRendering

```haxe
InstancedRendering
```

Supports instanced rendering

### Bindless

```haxe
Bindless
```

Supports bindless

### DepthTextureArray

```haxe
DepthTextureArray
```

Can render into a single layer of a depth texture array.

### ComputeShaders

```haxe
ComputeShaders
```

Supports compute shaders and read/write storage buffers.

### DynamicSamplerIndex

```haxe
DynamicSamplerIndex
```

Sampler arrays can be indexed by a non-constant, dynamically uniform expression.

### DepthClamp

```haxe
DepthClamp
```

Supports depth clamping instead of clipping against the near and far planes.

### ResidentMips

```haxe
ResidentMips
```

Textures can allocate only their less detailed mip levels (see Texture.setResidentMip).
