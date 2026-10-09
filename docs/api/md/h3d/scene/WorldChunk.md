# h3d.scene.WorldChunk

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.World` · source [`h3d/scene/World.hx`](../../../../../h3d/scene/World.hx)

A square area of a `World`, of `World.chunkSize` units. The meshes of a chunk are built when it becomes visible
and released by the garbage collection of the `World`.

## Constructor

### new

```haxe
function new(cx:Int, cy:Int):Void
```

Creates an empty chunk at the given indexes.

## Variables

### cx

```haxe
var cx:Int
```

The X index of the chunk.

### cy

```haxe
var cy:Int
```

The Y index of the chunk.

### x

```haxe
var x:Float
```

The X world position of the chunk.

### y

```haxe
var y:Float
```

The Y world position of the chunk.

### root

```haxe
var root:Object
```

The object containing the meshes of the chunk.

### buffers

```haxe
var buffers:Map<Int, Mesh>
```

The meshes of the chunk, one per material (indexed by `WorldMaterial.bits`).

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The world bounds of the elements of the chunk, used for culling.

### initialized

```haxe
var initialized:Bool
```

`true` when the meshes of the chunk are built.

### lastFrame

```haxe
var lastFrame:Int
```

The last frame the chunk was visible, used to release the least recently seen chunks first.

### elements

```haxe
var elements:Array<WorldElement>
```

The model instances of the chunk.

## Methods

### dispose

```haxe
function dispose():Void
```

Removes the chunk meshes from the scene.
