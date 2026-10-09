# h3d.prim.BatchPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/BatchPrimitive.hx`](../../../../../h3d/prim/BatchPrimitive.hx)

Extends: [`h3d.prim.MeshPrimitive`](MeshPrimitive.md) → [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new(format:hxd.BufferFormat, ?isDynamic:Bool = true, ?maxByteSize:Int = -1):Void
```

## Variables

### vertexFormat

```haxe
var vertexFormat(default, null):hxd.BufferFormat
```

### subMeshes

```haxe
var subMeshes(default, null):Array<SubMesh>
```

### cpuSubMeshInfos

```haxe
var cpuSubMeshInfos:Bytes
```

### gpuSubMeshInfos

```haxe
var gpuSubMeshInfos:h3d.Buffer
```

### cpuSubPartInfos

```haxe
var cpuSubPartInfos:Bytes
```

### gpuSubPartInfos

```haxe
var gpuSubPartInfos:h3d.Buffer
```

### cpuLodInfos

```haxe
var cpuLodInfos:hxd.FloatBuffer
```

### gpuLodInfos

```haxe
var gpuLodInfos:h3d.Buffer
```

### hasLogicNormal

```haxe
var hasLogicNormal:Bool
```

## Methods

### addModel

```haxe
function addModel(model:MeshPrimitive):Int
```

### addLogicNormal

```haxe
function addLogicNormal():Void
```

### getSubMeshID

```haxe
function getSubMeshID(model:MeshPrimitive):Int
```

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
