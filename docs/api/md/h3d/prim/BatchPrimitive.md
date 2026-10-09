# h3d.prim.BatchPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/BatchPrimitive.hx`](../../../../../h3d/prim/BatchPrimitive.hx)

Extends: [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

A primitive packing many models of the same vertex format in a single vertex and index buffer, with the information
needed by GPU culling and level of detail selection (see `h3d.scene.Batcher` and `h3d.scene.Batcher.BatchLibrary`).

## Constructor

### new

```haxe
function new(format:hxd.BufferFormat, ?isDynamic:Bool = true, ?maxByteSize:Int = -1):Void
```

Creates an empty batch primitive.
- **param** `isDynamic` If `true`, models can be added after the first upload (their data is kept on the CPU).
- **param** `maxByteSize` The maximum number of bytes uploaded per chunk, or `-1` for no limit.

## Variables

### vertexFormat

```haxe
var vertexFormat(default, null):hxd.BufferFormat
```

The vertex format of the packed models.

### subMeshes

```haxe
var subMeshes(default, null):Array<SubMesh>
```

The packed models.

### cpuSubMeshInfos

```haxe
var cpuSubMeshInfos:Bytes
```

The bounding sphere and level of detail info of each model, on the CPU.

### gpuSubMeshInfos

```haxe
var gpuSubMeshInfos:h3d.Buffer
```

The bounding sphere and level of detail info of each model, read by the culling compute shader.

### cpuSubPartInfos

```haxe
var cpuSubPartInfos:Bytes
```

The index ranges of each model material and level of detail, on the CPU.

### gpuSubPartInfos

```haxe
var gpuSubPartInfos:h3d.Buffer
```

The index ranges of each model material and level of detail, read by the culling compute shader.

### cpuLodInfos

```haxe
var cpuLodInfos:hxd.FloatBuffer
```

The level of detail screen ratios, on the CPU.

### gpuLodInfos

```haxe
var gpuLodInfos:h3d.Buffer
```

The level of detail screen ratios, read by the culling compute shader.

### hasLogicNormal

```haxe
var hasLogicNormal:Bool
```

`true` if a `logicNormal` vertex input was added (see `addLogicNormal`).

## Methods

### addModel

```haxe
function addModel(model:MeshPrimitive):Int
```

Adds a model (if not already added) and returns its sub mesh index.

### addLogicNormal

```haxe
function addLogicNormal():Void
```

Adds a `logicNormal` vertex input holding the original normals of the models.

### getSubMeshID

```haxe
function getSubMeshID(model:MeshPrimitive):Int
```

Returns the sub mesh index of `model`, or `-1`.

### dispose

```haxe
override function dispose():Void
```

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

## Inherited members

- from [`h3d.prim.MeshPrimitive`](MeshPrimitive.md): `hasInput`, `resolveBuffer`, `removeBuffer`, `addBuffer`, `dispose`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
