# hxsl.Channel

**enum** · package [`hxsl`](README.md) · source [`hxsl/Channel.hx`](../../../../hxsl/Channel.hx)

The channel of a texture read by a `Channel` shader parameter.

## Constructors

### Unknown

```haxe
Unknown
```

Not set: reads `0` without texture, and the packed value of a texture that has the native format.

### R

```haxe
R
```

The red channel.

### G

```haxe
G
```

The green channel.

### B

```haxe
B
```

The blue channel.

### A

```haxe
A
```

The alpha channel.

### PackedFloat

```haxe
PackedFloat
```

A float packed in the 4 channels.

### PackedNormal

```haxe
PackedNormal
```

A normal packed in the RGB channels.
