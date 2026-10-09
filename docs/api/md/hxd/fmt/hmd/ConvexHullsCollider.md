# hxd.fmt.hmd.ConvexHullsCollider

**class** · package [`hxd.fmt.hmd`](README.md) · module `hxd.fmt.hmd.Data` · source [`hxd/fmt/hmd/Data.hx`](../../../../../../hxd/fmt/hmd/Data.hx)

Extends: [`hxd.fmt.hmd.Collider`](Collider.md)

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### UNITS

```haxe
static final UNITS:Map<String, Float>
```

## Static methods

### buildConvexHulls

```haxe
static function buildConvexHulls(vertices:Array<Float>, indexes:Array<Int>, params:ConvexHullParams):Array<{ vertices:Array<Float>, indexes:Array<Int> }>
```

### scale

```haxe
static function scale(vertices:Array<Float>, indexes:Array<Int>, f:Float):{ vertices:Array<Float>, indexes:Array<Int> }
```

## Variables

### vertexCounts

```haxe
var vertexCounts:Array<Int>
```

### vertexPosition

```haxe
var vertexPosition:DataPosition
```

### indexCounts

```haxe
var indexCounts:Array<Int>
```

### indexPosition

```haxe
var indexPosition:DataPosition
```

## Inherited members

- from [`hxd.fmt.hmd.Collider`](Collider.md): `type`
