# h3d.prim.Cylinder

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Cylinder.hx`](../../../../../h3d/prim/Cylinder.hx)

Extends: [`h3d.prim.Quads`](Quads.md) → [`h3d.prim.Primitive`](Primitive.md)

An open cylinder (without caps) along the Z axis.

## Constructor

### new

```haxe
function new(segs:Int, ?ray:Float = 1.0, ?height:Float = 1.0, ?centered:Bool = false):Void
```

Creates a cylinder.
- **param** `segs` The number of sides.
- **param** `ray` The radius.
- **param** `height` The height along Z.
- **param** `centered` If `true`, the cylinder goes from `-height/2` to `height/2`, otherwise from `0` to `height`.

## Static methods

### defaultUnitCylinder

```haxe
static function defaultUnitCylinder(?segs:Int = 16):Cylinder
```

* Get a default unit Cylinder with
* segs = 16, ray = 0.5, height = 1.0, centered = false
* and add UVs to it. If it has not be cached, it is cached and subsequent
* calls to this method will return Cylinder from cache.
* @param segs Optional number of segments of the cylinder, default 16

## Methods

### getCollider

```haxe
override function getCollider():h3d.col.Collider
```

### addUVs

```haxe
override function addUVs():Void
```

## Inherited members

- from [`h3d.prim.Quads`](Quads.md): `getBounds`, `triCount`, `vertexCount`, `transform`, `translate`, `scale`, `addUVs`, `alloc`, `addNormals`, `getPoints`, `render`
- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
