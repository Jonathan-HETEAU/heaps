# h3d.prim.DynamicPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/DynamicPrimitive.hx`](../../../../../h3d/prim/DynamicPrimitive.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new(format:hxd.BufferFormat):Void
```

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

## Methods

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### getBuffer

```haxe
function getBuffer(vertices:Int):hxd.FloatBuffer
```

### getIndexes

```haxe
function getIndexes(count:Int):hxd.IndexBuffer
```

### flush

```haxe
function flush():Void
```

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
