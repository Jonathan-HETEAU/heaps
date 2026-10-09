# h3d.prim.DynamicPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/DynamicPrimitive.hx`](../../../../../h3d/prim/DynamicPrimitive.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

A primitive whose geometry is rebuilt often (for instance every frame, see `h3d.scene.Trail`): fill the buffers
returned by `getBuffer` and `getIndexes`, then call `flush` to upload them.

## Constructor

### new

```haxe
function new(format:hxd.BufferFormat):Void
```

Creates an empty dynamic primitive with the given vertex format.

## Variables

### minVSize

```haxe
var minVSize:Int
```

Minimum number of elements in vertex buffer

### minISize

```haxe
var minISize:Int
```

Minimum number of elements in index index buffer

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The bounds of the geometry, to be updated by the user.

## Methods

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### getBuffer

```haxe
function getBuffer(vertices:Int):hxd.FloatBuffer
```

Returns a vertex buffer large enough for `vertices` vertexes, to fill before `flush`.

### getIndexes

```haxe
function getIndexes(count:Int):hxd.IndexBuffer
```

Returns an index buffer large enough for `count` indexes, to fill before `flush`.

### flush

```haxe
function flush():Void
```

Uploads the vertexes and indexes filled since the last call.

### dispose

```haxe
override function dispose():Void
```

### triCount

```haxe
override function triCount():Int
```

### render

```haxe
override function render(engine:h3d.Engine):Void
```

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
