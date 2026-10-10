# hxd.PixelFormat

**enum** · package [`hxd`](README.md) · source [`hxd/PixelFormat.hx`](../../../../hxd/PixelFormat.hx)

The pixel formats of textures and `Pixels`: color formats (8 bits, half and full floats per channel), compressed
formats (`S3TC`) and depth formats.

## Constructors

### ARGB

```haxe
ARGB
```

8 bits per channel, bytes in the order alpha, red, green, blue.

### BGRA

```haxe
BGRA
```

8 bits per channel, bytes in the order blue, green, red, alpha.

### RGBA

```haxe
RGBA
```

8 bits per channel, bytes in the order red, green, blue, alpha.

### RGBA16F

```haxe
RGBA16F
```

4 half floats.

### RGBA32F

```haxe
RGBA32F
```

4 floats.

### R8

```haxe
R8
```

1 channel of 8 bits.

### R16F

```haxe
R16F
```

1 half float.

### R32F

```haxe
R32F
```

1 float.

### RG8

```haxe
RG8
```

2 channels of 8 bits.

### RG16F

```haxe
RG16F
```

2 half floats.

### RG32F

```haxe
RG32F
```

2 floats.

### RGB8

```haxe
RGB8
```

3 channels of 8 bits.

### RGB16F

```haxe
RGB16F
```

3 half floats.

### RGB32F

```haxe
RGB32F
```

3 floats.

### SRGB

```haxe
SRGB
```

3 channels of 8 bits, in the sRGB color space.

### SRGB_ALPHA

```haxe
SRGB_ALPHA
```

4 channels of 8 bits, with the colors in the sRGB color space.

### RGB10A2

```haxe
RGB10A2
```

10 bits for each color channel and 2 bits for the alpha.

### RG11B10UF

```haxe
RG11B10UF
```

Unsigned floats: 11 bits for red and green, 10 bits for blue.

### R16U

```haxe
R16U
```

1 channel of 16 bits (unsigned, normalized).

### RG16U

```haxe
RG16U
```

2 channels of 16 bits (unsigned, normalized).

### RGB16U

```haxe
RGB16U
```

3 channels of 16 bits (unsigned, normalized).

### RGBA16U

```haxe
RGBA16U
```

4 channels of 16 bits (unsigned, normalized).

### S3TC

```haxe
S3TC(v:Int)
```

A block compressed format: `v` is the BC number, from `1` (DXT1) to `7`.

### Depth16

```haxe
Depth16
```

A 16 bits depth.

### Depth24

```haxe
Depth24
```

A 24 bits depth.

### Depth24Stencil8

```haxe
Depth24Stencil8
```

A 24 bits depth with an 8 bits stencil.

### Depth32

```haxe
Depth32
```

A 32 bits float depth.

### Depth32Stencil8

```haxe
Depth32Stencil8
```

A 32 bits float depth with an 8 bits stencil.
