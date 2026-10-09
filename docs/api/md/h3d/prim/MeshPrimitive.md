# h3d.prim.MeshPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/MeshPrimitive.hx`](../../../../../h3d/prim/MeshPrimitive.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

Subclasses: [`h3d.prim.BatchPrimitive`](BatchPrimitive.md), [`h3d.prim.HMDModel`](HMDModel.md), [`h3d.prim.Polygon`](Polygon.md)

A primitive whose vertex inputs can be spread over several buffers (for instance a base geometry buffer plus an
extra buffer of tangents or per-vertex colors added later).

## Constructor

### new

```haxe
function new():Void
```

## Methods

### hasInput

```haxe
function hasInput(name:String):Bool
```

Tells if one of the buffers provides the vertex input `name` (such as `"normal"` or `"uv"`).

### resolveBuffer

```haxe
function resolveBuffer(name:String):h3d.Buffer
```

Returns the buffer providing the vertex input `name`, or `null`.

### removeBuffer

```haxe
function removeBuffer(buf:h3d.Buffer):Void
```

Removes an additional buffer.

### addBuffer

```haxe
function addBuffer(buf:h3d.Buffer):Void
```

Adds a buffer providing additional vertex inputs (with the same number of vertexes).

### dispose

```haxe
override function dispose():Void
```

### render

```haxe
override function render(engine:h3d.Engine):Void
```

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
