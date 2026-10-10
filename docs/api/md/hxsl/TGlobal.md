# hxsl.TGlobal

**enum** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

The built-in functions and values of the shader language.

## Constructors

### Radians

```haxe
Radians
```

`radians(x)`: converts degrees to radians.

### Degrees

```haxe
Degrees
```

`degrees(x)`: converts radians to degrees.

### Sin

```haxe
Sin
```

`sin(x)`.

### Cos

```haxe
Cos
```

`cos(x)`.

### Tan

```haxe
Tan
```

`tan(x)`.

### Asin

```haxe
Asin
```

`asin(x)`.

### Acos

```haxe
Acos
```

`acos(x)`.

### Atan

```haxe
Atan
```

`atan(x)` or `atan(y, x)`.

### Pow

```haxe
Pow
```

`pow(x, y)`.

### Exp

```haxe
Exp
```

`exp(x)`.

### Log

```haxe
Log
```

`log(x)`: natural logarithm.

### Exp2

```haxe
Exp2
```

`exp2(x)`.

### Log2

```haxe
Log2
```

`log2(x)`.

### Sqrt

```haxe
Sqrt
```

`sqrt(x)`.

### Inversesqrt

```haxe
Inversesqrt
```

`inversesqrt(x)`: `1 / sqrt(x)`.

### Abs

```haxe
Abs
```

`abs(x)`.

### Sign

```haxe
Sign
```

`sign(x)`.

### Floor

```haxe
Floor
```

`floor(x)`.

### Ceil

```haxe
Ceil
```

`ceil(x)`.

### Fract

```haxe
Fract
```

`fract(x)`: the fractional part.

### Mod

```haxe
Mod
```

`mod(x, y)`.

### Min

```haxe
Min
```

`min(a, b)`.

### Max

```haxe
Max
```

`max(a, b)`.

### Clamp

```haxe
Clamp
```

`clamp(value, min, max)`.

### Mix

```haxe
Mix
```

`mix(x, y, a)`: linear interpolation.

### InvLerp

```haxe
InvLerp
```

`invLerp(v, a, b)`: the position of `v` between `a` and `b`, clamped to `[0, 1]`.

### Step

```haxe
Step
```

`step(edge, x)`.

### Smoothstep

```haxe
Smoothstep
```

`smoothstep(edge0, edge1, x)`.

### Length

```haxe
Length
```

`length(v)`.

### Distance

```haxe
Distance
```

`distance(a, b)`.

### Dot

```haxe
Dot
```

`dot(a, b)`.

### Cross

```haxe
Cross
```

`cross(a, b)`.

### Normalize

```haxe
Normalize
```

`normalize(v)`.

### LReflect

```haxe
LReflect
```

`reflect(i, n)`.

### Texture

```haxe
Texture
```

`tex.get(uv)` or `texture(tex, uv)`: samples a texture.

### TextureLod

```haxe
TextureLod
```

`tex.getLod(uv, lod)`: samples a mip level of a texture.

### Texel

```haxe
Texel
```

`tex.fetch(pos)`: reads a texel at integer coordinates.

### TextureSize

```haxe
TextureSize
```

`tex.size()`: the size of a texture.

### ToInt

```haxe
ToInt
```

`int(x)` or `x.toInt()`.

### ToFloat

```haxe
ToFloat
```

`float(x)` or `x.toFloat()`.

### ToBool

```haxe
ToBool
```

`x.toBool()`.

### Vec2

```haxe
Vec2
```

`vec2(...)`.

### Vec3

```haxe
Vec3
```

`vec3(...)`.

### Vec4

```haxe
Vec4
```

`vec4(...)`.

### IVec2

```haxe
IVec2
```

`ivec2(...)`.

### IVec3

```haxe
IVec3
```

`ivec3(...)`.

### IVec4

```haxe
IVec4
```

`ivec4(...)`.

### BVec2

```haxe
BVec2
```

`bvec2(...)`.

### BVec3

```haxe
BVec3
```

`bvec3(...)`.

### BVec4

```haxe
BVec4
```

`bvec4(...)`.

### Mat2

```haxe
Mat2
```

`mat2(...)`.

### Mat3

```haxe
Mat3
```

`mat3(...)`.

### Mat4

```haxe
Mat4
```

`mat4(...)`.

### Mat3x4

```haxe
Mat3x4
```

`mat3x4(...)`.

### Saturate

```haxe
Saturate
```

`saturate(x)`: clamps to `[0, 1]`.

### Pack

```haxe
Pack
```

`pack(v)`: packs a float in `[0, 1]` into a color.

### Unpack

```haxe
Unpack
```

`unpack(c)`: the float packed by `pack`.

### PackNormal

```haxe
PackNormal
```

`packNormal(n)`: packs a normal into a color.

### UnpackNormal

```haxe
UnpackNormal
```

`unpackNormal(c)`: the normal from the XY of a normal map color.

### ScreenToUv

```haxe
ScreenToUv
```

`screenToUv(p)`: converts screen coordinates (`[-1, 1]`, Y up) to texture coordinates.

### UvToScreen

```haxe
UvToScreen
```

`uvToScreen(uv)`: converts texture coordinates to screen coordinates.

### DFdx

```haxe
DFdx
```

`dFdx(x)`: the derivative along X.

### DFdy

```haxe
DFdy
```

`dFdy(x)`: the derivative along Y.

### Fwidth

```haxe
Fwidth
```

`fwidth(x)`: `abs(dFdx(x)) + abs(dFdy(x))`.

### ChannelRead

```haxe
ChannelRead
```

`channel.get(uv)`: reads a `TChannel`.

### ChannelReadLod

```haxe
ChannelReadLod
```

`channel.getLod(uv, lod)`: reads a mip level of a `TChannel`.

### ChannelFetch

```haxe
ChannelFetch
```

`channel.fetch(pos)`: reads a `TChannel` at integer coordinates.

### ChannelTextureSize

```haxe
ChannelTextureSize
```

`channel.size()`: the size of the texture of a `TChannel`.

### Trace

```haxe
Trace
```

`trace(...)`: prints its arguments when the shader is evaluated (debug).

### VertexID

```haxe
VertexID
```

`vertexID`: the index of the vertex.

### InstanceID

```haxe
InstanceID
```

`instanceID`: the index of the instance.

### FragCoord

```haxe
FragCoord
```

`fragCoord`: the window coordinates of the pixel.

### FrontFacing

```haxe
FrontFacing
```

`frontFacing`: tells if the face is front facing.

### Barycentrics

```haxe
Barycentrics
```

`barycentrics`: the barycentric coordinates of the pixel in its triangle (DirectX 12).

### VertexAt

```haxe
VertexAt
```

`vertexAt(v, index)`: the value of an input at a vertex of the triangle (DirectX 12).

### FloatBitsToInt

```haxe
FloatBitsToInt
```

`floatBitsToInt(x)`.

### FloatBitsToUint

```haxe
FloatBitsToUint
```

`floatBitsToUint(x)`.

### IntBitsToFloat

```haxe
IntBitsToFloat
```

`intBitsToFloat(x)`.

### UintBitsToFloat

```haxe
UintBitsToFloat
```

`uintBitsToFloat(x)`.

### RoundEven

```haxe
RoundEven
```

`roundEven(x)`.

### SetLayout

```haxe
SetLayout
```

`setLayout(x, y, z)`: the size of a work group of a compute shader.

### ImageStore

```haxe
ImageStore
```

`tex.store(pos, color)`: writes a texel of a read-write texture.

### ComputeVar_GlobalInvocation

```haxe
ComputeVar_GlobalInvocation
```

`computeVar.globalInvocation`: the index of the invocation of a compute shader.

### ComputeVar_LocalInvocation

```haxe
ComputeVar_LocalInvocation
```

`computeVar.localInvocation`: the index of the invocation in its work group.

### ComputeVar_WorkGroup

```haxe
ComputeVar_WorkGroup
```

`computeVar.workGroup`: the index of the work group.

### ComputeVar_LocalInvocationIndex

```haxe
ComputeVar_LocalInvocationIndex
```

`computeVar.localInvocationIndex`: the flattened index of the invocation in its work group.

### AtomicAdd

```haxe
AtomicAdd
```

`atomicAdd(buf, index, data)`: adds to an element of a buffer and returns its previous value.

### GroupMemoryBarrier

```haxe
GroupMemoryBarrier
```

`groupMemoryBarrier()`: synchronizes the memory accesses of a work group.

### UnpackSnorm4x8

```haxe
UnpackSnorm4x8
```

`unpackSnorm4x8(x)`: four signed normalized bytes to a vector.

### UnpackUnorm4x8

```haxe
UnpackUnorm4x8
```

`unpackUnorm4x8(x)`: four unsigned normalized bytes to a vector.

### Transpose

```haxe
Transpose
```

`transpose(m)`.

### TexelLod

```haxe
TexelLod
```

`tex.fetchLod(pos, lod)`: reads a texel of a mip level at integer coordinates.

### ResolveSampler

```haxe
ResolveSampler
```

`resolveSampler(handle, tex)`: sets a texture from a bindless handle.

### ResolveBuffer

```haxe
ResolveBuffer
```

`resolveBuffer(handle, buf)`: sets a buffer from a bindless handle.

### FindLSB

```haxe
FindLSB
```

`findLSB(x)`: the index of the least significant bit set.

### FindMSB

```haxe
FindMSB
```

`findMSB(x)`: the index of the most significant bit set.

### AtomicAnd

```haxe
AtomicAnd
```

`atomicAnd(buf, index, data)`: combines an element of a buffer with a bitwise and, and returns its previous value.

### AtomicOr

```haxe
AtomicOr
```

`atomicOr(buf, index, data)`: combines an element of a buffer with a bitwise or, and returns its previous value.

### BitCount

```haxe
BitCount
```

`bitCount(x)`: the number of bits set.

### ToUInt

```haxe
ToUInt
```

`uint(x)` or `x.toUInt()`.
