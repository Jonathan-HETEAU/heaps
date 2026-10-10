# hxd.fs.ConvertCacheItem

**typedef** · package [`hxd.fs`](README.md) · module `hxd.fs.FileConverter` · source [`hxd/fs/FileConverter.hx`](../../../../../hxd/fs/FileConverter.hx) · available on hl/sdl, hl/directx

A conversion stored in the cache (`.tmp/cache.dat`), used to skip the conversion when the source file did not change.

## Fields

### ver

```haxe
var ver:Null<Int>
```

The version of the converter that generated the file.

### time

```haxe
var time:Int
```

The modification time of the source file.

### size

```haxe
var size:Int
```

The size of the source file.

### out

```haxe
var out:String
```

The path of the converted file.

### localParamsHash

```haxe
var localParamsHash:Null<String>
```

The hash of the local parameters of the conversion, or `null`.

### localContextJson

```haxe
var localContextJson:Null<String>
```

The local context of the conversion, as JSON, or `null`.

### hash

```haxe
var hash:String
```

The SHA1 hash of the source file.
