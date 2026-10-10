# hxd.impl.BitSet

**abstract** · package [`hxd.impl`](README.md) · source [`hxd/impl/BitSet.hx`](../../../../../hxd/impl/BitSet.hx)

A fixed size set of bits.

Underlying type: `Bytes`

## Methods

### get

```haxe
function get(index:Int):Bool
```

Tells if the bit is set.

### set

```haxe
function set(index:Int):Void
```

Sets the bit.

### unset

```haxe
function unset(index:Int):Void
```

Unsets the bit.

### toggle

```haxe
function toggle(index:Int, b:Bool):Void
```

Sets the bit to `b`.

### clear

```haxe
function clear(?b:Bool = false):Void
```

Sets all the bits to `b`.
