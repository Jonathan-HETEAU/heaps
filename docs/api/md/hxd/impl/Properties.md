# hxd.impl.Properties

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/Properties.hx`](../../../../../hxd/impl/Properties.hx)

Applies a dynamic properties object to an object, recursively.
Arrays are applied to vectors, and `"#AARRGGBB"` strings to color vectors.

## Methods

### getField

```haxe
function getField(obj:Dynamic, f:String):Dynamic
```

Returns a field of the object.

### setField

```haxe
function setField(obj:Dynamic, f:String, value:Dynamic):Void
```

Sets a field of the object.

### apply

```haxe
function apply(props:Dynamic, obj:Dynamic):Void
```

Sets the fields of `obj` from `props`. Throws if a value can't be applied.
