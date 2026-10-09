# h3d.prim.Instanced

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Instanced.hx`](../../../../../h3d/prim/Instanced.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

A primitive drawing many instances of a `MeshPrimitive` in a single draw call (used by `h3d.scene.MeshBatch`).

## Constructor

### new

```haxe
function new():Void
```

Creates an instanced primitive. Call `setMesh` before using it.

## Variables

### commands

```haxe
var commands:h3d.impl.InstanceBuffer
```

The draw commands: number of instances and index ranges.

### bounds

```haxe
var bounds:h3d.col.Bounds
```

The bounds of all the instances, used for culling.

## Methods

### setMesh

```haxe
function setMesh(m:MeshPrimitive):Void
```

Sets the primitive drawn by each instance.

### initBounds

```haxe
function initBounds():Void
```

Empties the bounds before adding the bounds of the instances.

### addInstanceBounds

```haxe
inline function addInstanceBounds(absPos:h3d.Matrix):Void
```

Adds the bounds of an instance with the given transform.

### dispose

```haxe
override function dispose():Void
```

### incref

```haxe
override function incref():Void
```

### decref

```haxe
override function decref():Void
```

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### screenRatioToLod

```haxe
override function screenRatioToLod(screenRatio:Float):Int
```

### setCommand

```haxe
function setCommand(material:Int, lod:Int, count:Int):Void
```

Sets the draw command drawing `count` instances of the given material group and level of detail.

### render

```haxe
override function render(engine:h3d.Engine):Void
```

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
