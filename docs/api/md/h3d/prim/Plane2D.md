# h3d.prim.Plane2D

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Plane2D.hx`](../../../../../h3d/prim/Plane2D.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

A full screen quad (two triangles covering clip space from -1 to 1), used to draw screen passes (see `h3d.pass.ScreenFx`).

## Constructor

### new

```haxe
function new():Void
```

Creates the quad. Use the shared instance returned by `get` instead.

## Static methods

### get

```haxe
static function get():Null<Dynamic>
```

Returns the shared instance.

## Methods

### triCount

```haxe
override function triCount():Int
```

### vertexCount

```haxe
override function vertexCount():Int
```

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### render

```haxe
override function render(engine:h3d.Engine):Void
```

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
