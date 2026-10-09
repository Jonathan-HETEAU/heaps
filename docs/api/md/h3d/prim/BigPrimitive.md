# h3d.prim.BigPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/BigPrimitive.hx`](../../../../../h3d/prim/BigPrimitive.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

Vertex buffers are limited to 65K vertexes because of the 16-bits limitation of the index buffers.
BigPrimitive allows you to easily create large buffers by spliting the buffers.

## Constructor

### new

```haxe
function new(format:hxd.BufferFormat, ?alloc:hxd.impl.Allocator):Void
```

Creates an empty primitive with the given vertex format.
- **param** `alloc` An optional allocator used for the GPU buffers.

## Variables

### format

```haxe
var format(default, null):hxd.BufferFormat
```

The vertex format.

### hasTangents

```haxe
var hasTangents:Bool
```

Tells that the format contains tangents, so that `addSub` transforms them too.

### isStatic

```haxe
var isStatic:Bool
```

If `true`, the temporary buffers are allocated for the maximum size at once (faster for large static geometry).
Set it to `false` for geometry rebuilt often.

## Methods

### begin

```haxe
function begin(vcount:Int, icount:Int):Void
```

Call begin() before starting to add vertexes/indexes to the primitive.
The count value is the number of vertexes you will add, it will automatically flush() if it doesn't fit into the current buffer.

### addPoint

```haxe
inline function addPoint(x:hxd.impl.Float32, y:hxd.impl.Float32, z:hxd.impl.Float32):Void
```

This is similar to addVertexValue for X Y and Z, but will also update the bounds if you wish to have them calculated.

### addBounds

```haxe
inline function addBounds(x:Float, y:Float, z:Float):Void
```

Adds a point to the bounds, without adding a vertex.

### addVertexValue

```haxe
inline function addVertexValue(v:hxd.impl.Float32):Void
```

Adds a raw value to the current vertex (after a `begin`).

### addIndex

```haxe
inline function addIndex(i:Int):Void
```

Adds an index, relative to the first vertex added since the last `begin`.

### triCount

```haxe
override function triCount():Int
```

### vertexCount

```haxe
override function vertexCount():Int
```

### flush

```haxe
function flush():Void
```

Flush the current buffer.
It is required to call begin() after a flush()

### render

```haxe
override function render(engine:h3d.Engine):Void
```

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### dispose

```haxe
override function dispose():Void
```

### clear

```haxe
function clear():Void
```

Removes all the geometry.

### add

```haxe
function add(buf:hxd.FloatBuffer, idx:hxd.IndexBuffer, ?dx:Float = 0., ?dy:Float = 0., ?dz:Float = 0., ?rotation:Float = 0., ?scale:Float = 1., ?stride:Int = -1):Void
```

Adds a complete object to the primitive, with custom position,scale,rotation.
See addSub for complete documentation.

### addSub

```haxe
function addSub(buf:hxd.FloatBuffer, idx:hxd.IndexBuffer, startVert:Int, startTri:Int, nvert:Int, triCount:Int, ?dx:Float = 0., ?dy:Float = 0., ?dz:Float = 0., ?rotation:Float = 0., ?scale:Float = 1., ?stride:Int = -1, ?deltaU:Float = 0., ?deltaV:Float = 0., ?color:Float = 1., ?mat:h3d.Matrix):Void
```

Adds a buffer to the primitive, with custom position,scale,rotation.
The buffer can have more stride than the BigPrimitive, but not less.
It is assumed that the buffer contains [X,Y,Z,NX,NY,NZ,U,V,R,G,B] (depending on his stride) so the different offsets are applied to the corresponding components.
If hasTangent=true, we have [TX,TY,TZ] just after normal.
However if the stride is 5, we assume [X,Y,Z,U,V]
If mat is not null, it overrides dx, dy, dz, rotation, scale

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
