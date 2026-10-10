# hxd.fs.ConvertFBX2HMD

**class** · package [`hxd.fs`](README.md) · module `hxd.fs.Convert` · source [`hxd/fs/Convert.hx`](../../../../../hxd/fs/Convert.hx) · available on hl/sdl, hl/directx

Extends: [`hxd.fs.Convert`](Convert.md)

Converts FBX models to the HMD format.

## Constructor

### new

```haxe
function new():Void
```

Creates the conversion.

## Methods

### cleanup

```haxe
override function cleanup():Void
```

### hasLocalParams

```haxe
override function hasLocalParams():Bool
```

### getLocalContext

```haxe
override function getLocalContext():Dynamic
```

### computeLocalParams

```haxe
override function computeLocalParams(context:Dynamic):Dynamic
```

### convert

```haxe
override function convert():Void
```

## Inherited members

- from [`hxd.fs.Convert`](Convert.md): `sourceExts`, `destExt`, `version`, `params`, `localParams`, `srcPath`, `dstPath`, `baseDir`, `originalFilename`, `srcBytes`, `setSource`, `hash`, `cleanup`, `convert`, `hasLocalParams`, `getLocalContext`, `computeLocalParams`
