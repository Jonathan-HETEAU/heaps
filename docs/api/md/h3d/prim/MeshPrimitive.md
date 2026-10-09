# h3d.prim.MeshPrimitive

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/MeshPrimitive.hx`](../../../../../h3d/prim/MeshPrimitive.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

Subclasses: [`h3d.prim.BatchPrimitive`](BatchPrimitive.md), [`h3d.prim.HMDModel`](HMDModel.md), [`h3d.prim.Polygon`](Polygon.md)

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

### resolveBuffer

```haxe
function resolveBuffer(name:String):h3d.Buffer
```

### removeBuffer

```haxe
function removeBuffer(buf:h3d.Buffer):Void
```

### addBuffer

```haxe
function addBuffer(buf:h3d.Buffer):Void
```

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
