# hxd.impl.UncheckedBytes

**abstract** · package [`hxd.impl`](README.md) · source [`hxd/impl/UncheckedBytes.hx`](../../../../../hxd/impl/UncheckedBytes.hx)

Fast byte access without bounds checking. Converted implicitly from `haxe.io.Bytes`.

Underlying type: `hxd.impl._UncheckedBytes.InnerData`

Implicit casts from: `Bytes`

## Static methods

### fromBytes

```haxe
static inline function fromBytes(b:Bytes):UncheckedBytes
```

Returns unchecked access to the bytes.
