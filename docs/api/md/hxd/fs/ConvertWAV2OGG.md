# hxd.fs.ConvertWAV2OGG

**class** · package [`hxd.fs`](README.md) · module `hxd.fs.Convert` · source [`hxd/fs/Convert.hx`](../../../../../hxd/fs/Convert.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.fs.Convert`](Convert.md)

Converts WAV to Ogg Vorbis with the `oggenc` command (`oggenc2` on Windows). Parameters: `samplerate` (default 44100), `mono`, `bitrate`.

## Constructor

### new

```haxe
function new():Void
```

Creates the conversion.

## Methods

### convert

```haxe
override function convert():Void
```

## Inherited members

- from [`hxd.fs.Convert`](Convert.md): `sourceExts`, `destExt`, `version`, `params`, `localParams`, `srcPath`, `dstPath`, `baseDir`, `originalFilename`, `srcBytes`, `setSource`, `hash`, `cleanup`, `convert`, `hasLocalParams`, `getLocalContext`, `computeLocalParams`
