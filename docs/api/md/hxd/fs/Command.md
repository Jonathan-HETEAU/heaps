# hxd.fs.Command

**class** · package [`hxd.fs`](README.md) · module `hxd.fs.Convert` · source [`hxd/fs/Convert.hx`](../../../../../hxd/fs/Convert.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.fs.Convert`](Convert.md)

A conversion running an external command. `%SRC` and `%DST` in the arguments are replaced by the source and destination paths.

## Constructor

### new

```haxe
function new(fr:String, to:String, cmd:String, args:Array<String>):Void
```

Creates a conversion from the `fr` to the `to` extensions, running `cmd` with `args`.

## Methods

### convert

```haxe
override function convert():Void
```

## Inherited members

- from [`hxd.fs.Convert`](Convert.md): `sourceExts`, `destExt`, `version`, `params`, `localParams`, `srcPath`, `dstPath`, `baseDir`, `originalFilename`, `srcBytes`, `setSource`, `hash`, `cleanup`, `convert`, `hasLocalParams`, `getLocalContext`, `computeLocalParams`
