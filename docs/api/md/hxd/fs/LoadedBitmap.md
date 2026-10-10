# hxd.fs.LoadedBitmap

**abstract** · package [`hxd.fs`](README.md) · source [`hxd/fs/LoadedBitmap.hx`](../../../../../hxd/fs/LoadedBitmap.hx)

An image decoded by the platform, returned by `FileEntry.loadBitmap`.

Underlying type: [`hxd.fs.LoadedBitmapData`](LoadedBitmapData.md)

## Methods

### toBitmap

```haxe
function toBitmap():hxd.BitmapData
```

Returns the image as a `BitmapData` (drawn into a canvas on JS).

### toNative

```haxe
inline function toNative():LoadedBitmapData
```

Returns the native image.
