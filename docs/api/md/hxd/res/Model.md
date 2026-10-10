# hxd.res.Model

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Model.hx`](../../../../../hxd/res/Model.hx)

Extends: [`hxd.res.Resource`](Resource.md)

A 3D model file. FBX files are converted to the HMD format when the resources are built.

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Methods

### toHmd

```haxe
function toHmd():hxd.fmt.hmd.Library
```

Reads the header of the HMD file and returns the library to create its objects and animations.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
