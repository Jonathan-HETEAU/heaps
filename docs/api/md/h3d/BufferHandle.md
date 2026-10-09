# h3d.BufferHandle

**class** · package [`h3d`](README.md) · source [`h3d/BufferHandle.hx`](../../../../h3d/BufferHandle.hx)

A bindless handle of a buffer, allowing shaders to access it without binding it. Created by the driver
(see `Buffer.getHandle`).

## Variables

### buffer

```haxe
var buffer(default, null):Buffer
```

The buffer referenced by the handle.

### handle

```haxe
var handle(default, null):Int
```

The driver handle value.
