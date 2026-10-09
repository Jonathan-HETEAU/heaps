# hxd.res.Atlas

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Atlas.hx`](../../../../../hxd/res/Atlas.hx)

Extends: [`hxd.res.Resource`](Resource.md)

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

### getAnim

```haxe
function getAnim(?name:String, ?horizontalAlign:h2d.FlowAlign, ?verticalAlign:h2d.FlowAlign):Array<h2d.Tile>
```

### getContents

```haxe
function getContents():Map<String, Array<{ width:Int, t:h2d.Tile, height:Int }>>
```

## Inherited members

- from [`hxd.res.Resource`](Resource.md): `name`, `entry`, `watch`
