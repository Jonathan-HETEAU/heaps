# hxd.res.Font

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Font.hx`](../../../../../hxd/res/Font.hx)

Extends: [`hxd.res.Resource`](Resource.md)

Allows to build a font bitmap to be used by h2d.Text. Only some platforms support such runtime Font building
and the result in terms of font quality, antialiasing, etc might vary depending on the platform.
It is recommended to use offline BitmapFont instead, read https://heaps.io/documentation/text.html

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Methods

### build

```haxe
function build(size:Int, ?options:FontBuildOptions):h2d.Font
```

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
