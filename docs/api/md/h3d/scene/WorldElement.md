# h3d.scene.WorldElement

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.World` · source [`h3d/scene/World.hx`](../../../../../h3d/scene/World.hx)

A model instance placed in a `World` chunk.

## Constructor

### new

```haxe
function new(model:WorldModel, mat:h3d.Matrix, optimized:Bool):Void
```

Creates an instance of `model` with transform `mat`.

## Variables

### model

```haxe
var model:WorldModel
```

The model drawn.

### transform

```haxe
var transform:h3d.Matrix
```

The world transform of the instance.

### optimized

```haxe
var optimized:Bool
```

`true` for instances added with `World.add` (only position, uniform scale and Z rotation), which are merged faster.
