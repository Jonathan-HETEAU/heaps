# h3d.prim.RawPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/RawPrimitive.hx`](../../../../../h3d/prim/RawPrimitive.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new(inf:{ vbuf:hxd.FloatBuffer, ?ibuf:Null<hxd.IndexBuffer>, format:hxd.BufferFormat, ?bounds:Null<h3d.col.Bounds> }, ?persist:Bool = false):Void
```

## Variables

### onContextLost

```haxe
var onContextLost:() -> { vbuf:hxd.FloatBuffer, ?ibuf:Null<hxd.IndexBuffer>, format:hxd.BufferFormat }
```

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
