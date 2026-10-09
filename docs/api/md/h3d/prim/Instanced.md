# h3d.prim.Instanced

**class** · package [`h3d.prim`](README.md) · source [`h3d/prim/Instanced.hx`](../../../../../h3d/prim/Instanced.hx)

Extends: [`h3d.prim.Primitive`](Primitive.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### commands

```haxe
var commands:h3d.impl.InstanceBuffer
```

### bounds

```haxe
var bounds:h3d.col.Bounds
```

## Methods

### setMesh

```haxe
function setMesh(m:MeshPrimitive):Void
```

### initBounds

```haxe
function initBounds():Void
```

### addInstanceBounds

```haxe
inline function addInstanceBounds(absPos:h3d.Matrix):Void
```

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

### render

```haxe
override function render(engine:h3d.Engine):Void
```

## Inherited members

- from [`h3d.prim.Primitive`](Primitive.md): `buffer`, `indexes`, `refCount`, `triCount`, `vertexCount`, `getCollider`, `getBounds`, `incref`, `decref`, `alloc`, `selectMaterial`, `getMaterialIndexes`, `getMaterialIndexStart`, `getMaterialIndexCount`, `render`, `dispose`, `toString`, `lodCount`, `screenRatioToLod`, `getCullingScreenRatio`
