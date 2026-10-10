# hxd.res.TiledMapLayer

**typedef** · package [`hxd.res`](README.md) · module `hxd.res.TiledMap` · source [`hxd/res/TiledMap.hx`](../../../../../hxd/res/TiledMap.hx)

A layer of a Tiled map.

## Fields

### opacity

```haxe
var opacity:Float
```

The opacity of the layer.

### objects

```haxe
var objects:Array<{ y:Int, x:Int, type:String, name:String }>
```

The named objects of an object layer.

### name

```haxe
var name:String
```

The name of the layer.

### data

```haxe
var data:Array<Int>
```

The tile ids of the cells, row by row, or `null` for an object layer.
