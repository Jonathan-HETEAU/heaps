# h3d.scene.WorldModel

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.World` · source [`h3d/scene/World.hx`](../../../../../h3d/scene/World.hx)

A model loaded by `World.loadModel`: its geometry is kept on the CPU to be merged into the chunks.

## Constructor

### new

```haxe
function new(r:hxd.res.Model):Void
```

Creates an empty model for resource `r`.

## Variables

### r

```haxe
var r:hxd.res.Model
```

The model resource.

### format

```haxe
var format:hxd.BufferFormat
```

The vertex format.

### buf

```haxe
var buf:hxd.FloatBuffer
```

The vertexes of the model.

### idx

```haxe
var idx:hxd.IndexBuffer
```

The indexes of the model.

### geometries

```haxe
var geometries:Array<WorldModelGeometry>
```

The parts of the model, one per material.

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The local bounds of the model.

## Methods

### optimize

```haxe
function optimize(algo:OptAlgorithm):Void
```

Reorders the geometry with the given algorithm.
