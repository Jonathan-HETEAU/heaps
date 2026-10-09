# h3d.prim.Quads

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Quads.hx`](../../../../../h3d/prim/Quads.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

Subclasses: [`h3d.prim.Cylinder`](Cylinder.md)

## Constructor

### new

```haxe
function new(pts:Array<h3d.col.Point>, ?uvs:Array<UV>, ?normals:Array<h3d.col.Point>):Void
```

* You have to pass vertices in this order: top left, top right, bottom left, bottom right

## Methods

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

### transform

```haxe
function transform(m:h3d.Matrix):Void
```

### translate

```haxe
function translate(dx:Float, dy:Float, dz:Float):Void
```

### scale

```haxe
function scale(x:Float, y:Float, z:Float):Void
```

### addUVs

```haxe
function addUVs():Void
```

* Warning : This will splice four basic uv value but can provoke aliasing problems.

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### addNormals

```haxe
function addNormals():Void
```

### getPoints

```haxe
function getPoints():Array<h3d.col.Point>
```

### render

```haxe
override function render(engine:h3d.Engine):Void
```

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
