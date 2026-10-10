# hxd.fs.CompressIMG

**class** · package [`hxd.fs`](README.md) · module `hxd.fs.Convert` · source [`hxd/fs/Convert.hx`](../../../../../hxd/fs/Convert.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.fs.Convert`](Convert.md)

Converts images to compressed DDS textures with the `texconv` or `CompressonatorCLI` commands.
Parameters: `format` (required, such as `BC1`, `BC3` or `RGBA`), `mips`, `size` (maximum size), `alpha` (BC1 alpha threshold).

## Constructor

### new

```haxe
function new(sourceExts:String, destExt:String):Void
```

## Methods

### convert

```haxe
override function convert():Void
```

## Inherited members

- from [`hxd.fs.Convert`](Convert.md): `sourceExts`, `destExt`, `version`, `params`, `localParams`, `srcPath`, `dstPath`, `baseDir`, `originalFilename`, `srcBytes`, `setSource`, `hash`, `cleanup`, `convert`, `hasLocalParams`, `getLocalContext`, `computeLocalParams`
