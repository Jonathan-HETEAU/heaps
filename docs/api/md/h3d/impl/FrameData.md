# h3d.impl.FrameData

**abstract** · package [`h3d.impl`](README.md) · source [`h3d/impl/FrameData.hx`](../../../../../h3d/impl/FrameData.hx)

A ring buffer of the values of the last frames, with array access.

Underlying type: [`h3d.impl.FrameDataImpl`](FrameDataImpl.md)

Members of [`h3d.impl.FrameDataImpl`](FrameDataImpl.md) are forwarded (`@:forward`): they are usable directly on this type.

## Methods

### get

```haxe
inline function get(index:Int):Float
```

Returns the value at the index, from the oldest one.
