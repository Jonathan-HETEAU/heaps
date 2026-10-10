# h2d.LevelLayerData

**enum** · package [`h2d`](README.md) · module `h2d.CdbLevel` · source [`h2d/CdbLevel.hx`](../../../../h2d/CdbLevel.hx)

[CastleDB](http://castledb.org) integration; A part of `CdbLevel` decoder.

## Constructors

### LTiles

```haxe
LTiles(data:Array<Int>)
```

A tile layer: the tile index plus one of each cell (`0` for empty), row by row.

### LGround

```haxe
LGround(data:Array<Int>)
```

A ground layer: like `LTiles`, with the border tiles of the grounds generated around them.

### LObjects

```haxe
LObjects(objects:Array<LevelObjectInstance>)
```

An object layer: the objects placed freely.
