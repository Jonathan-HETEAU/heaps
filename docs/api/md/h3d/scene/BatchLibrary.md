# h3d.scene.BatchLibrary

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Batcher` · source [`h3d/scene/Batcher.hx`](../../../../../h3d/scene/Batcher.hx)

The geometry storage shared by `Batcher` instances: the models are packed in one big primitive per vertex format.
Share a library between several batchers drawing the same models to avoid duplicating the geometry.

## Constructor

### new

```haxe
function new(?isDynamic:Bool = true, ?maxUploadSize:Int = -1):Void
```

Creates an empty library.
- **param** `isDynamic` If `true`, models can be added after the first upload.
- **param** `maxUploadSize` The maximum number of bytes uploaded per frame, or `-1` for no limit.

## Methods

### addModel

```haxe
function addModel(m:h3d.prim.HMDModel):Void
```

Adds the geometry of a model to the library.

### addPolygon

```haxe
function addPolygon(m:h3d.prim.Polygon):Void
```

Adds the geometry of a polygon to the library.

### dispose

```haxe
function dispose():Void
```

Releases the GPU resources of the library.

### checkOffsetBuffer

```haxe
function checkOffsetBuffer(instanceCount:Int):Void
```

Makes sure the per instance index buffer can hold `instanceCount` instances.
