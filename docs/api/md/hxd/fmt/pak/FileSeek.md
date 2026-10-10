# hxd.fmt.pak.FileSeek

**class** · package [`hxd.fmt.pak`](README.md) · module `hxd.fmt.pak.FileSystem` · source [`hxd/fmt/pak/FileSystem.hx`](../../../../../../hxd/fmt/pak/FileSystem.hx)

Seeks in files bigger than 2 GB, when supported.

## Static methods

### seek

```haxe
static function seek(f:FileInput, pos:Float, mode:FileSeekMode):Void
```

Moves the read position of the file (a `Float` position, for files bigger than 2 GB on HashLink).
