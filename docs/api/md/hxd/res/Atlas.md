# hxd.res.Atlas

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Atlas.hx`](../../../../../hxd/res/Atlas.hx)

Extends: [`hxd.res.Resource`](Resource.md)

A texture atlas in the libGDX/Spine `.atlas` text format, giving named tiles in one or more images.
Several tiles with the same name and different `index` values form an animation.

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Methods

### get

```haxe
function get(name:String, ?horizontalAlign:h2d.FlowAlign, ?verticalAlign:h2d.FlowAlign):h2d.Tile
```

Returns the tile of the given name (the first frame of an animation), or `null`.
The alignment sets the tile pivot relative to the original (untrimmed) size: top left by default.

### getAnim

```haxe
function getAnim(?name:String, ?horizontalAlign:h2d.FlowAlign, ?verticalAlign:h2d.FlowAlign):Array<h2d.Tile>
```

Returns the frames of the animation of the given name, or `null`. If `name` is not set, the atlas must contain a single animation.

### getContents

```haxe
function getContents():Map<String, Array<{ width:Int, t:h2d.Tile, height:Int }>>
```

Returns all the tiles of the atlas, by name. The atlas is parsed on the first call.

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
