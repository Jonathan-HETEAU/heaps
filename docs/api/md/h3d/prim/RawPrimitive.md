# h3d.prim.RawPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/RawPrimitive.hx`](../../../../../h3d/prim/RawPrimitive.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

A primitive created from raw vertex data (and optional indexes) in any buffer format.

## Constructor

### new

```haxe
function new(inf:{ vbuf:hxd.FloatBuffer, ?ibuf:Null<hxd.IndexBuffer>, format:hxd.BufferFormat, ?bounds:Null<h3d.col.Bounds> }, ?persist:Bool = false):Void
```

Creates the primitive and uploads its data.
- **param** `inf` The vertexes (`vbuf` in `format`), optional indexes (`ibuf`, otherwise every 3 vertexes form a triangle) and bounds.
- **param** `persist` If `true`, keeps a reference to the data to reupload it after a context loss.

## Variables

### onContextLost

```haxe
var onContextLost:() -> { vbuf:hxd.FloatBuffer, ?ibuf:Null<hxd.IndexBuffer>, format:hxd.BufferFormat }
```

If set, called to get the data again when the GPU buffers must be reallocated.

## Methods

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### dispose

```haxe
override function dispose():Void
```

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### triCount

```haxe
override function triCount():Int
```

### vertexCount

```haxe
override function vertexCount():Int
```

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
