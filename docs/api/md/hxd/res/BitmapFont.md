# hxd.res.BitmapFont

**class** · package [`hxd.res`](README.md) · source [`hxd/res/BitmapFont.hx`](../../../../../hxd/res/BitmapFont.hx)

Extends: [`hxd.res.Resource`](Resource.md)

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Methods

### toFont

```haxe
function toFont():h2d.Font
```

Load and cache the font instance.

Because font instance is cached, operations like `resizeTo` should be performed on a copy of the font, to avoid affecting other text fields.

### toSdfFont

```haxe
function toSdfFont(?size:Int, ?channel:h2d.SDFChannel = 0, ?alphaCutoff:Float = 0.5, ?smoothing:Float = -1):h2d.Font
```

Load and cache Signed Distance Field font with specified size, channel, alphaCutoff and smoothing. ( default : initial size, red, 0.5, -1 )
For more information on SDF texture generation refer to this page: https://github.com/libgdx/libgdx/wiki/Distance-field-fonts
For more information on MSDF texture generation refer to this page: https://github.com/Chlumsky/msdfgen

Because font instance is cached, operations like `resizeTo` should be performed on a copy of the font, to avoid affecting other text fields.

- **param** `channel` The channel that serves as distance data source.
- **param** `alphaCutoff` The distance value that is considered to be the edge. Usually should be 0.5.
- **param** `smoothing` The smoothing of edge. Lower value lead to sharper edges. Value of -1 sets it to automatic.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
