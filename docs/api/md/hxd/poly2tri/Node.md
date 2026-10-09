# hxd.poly2tri.Node

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Node.hx`](../../../../../hxd/poly2tri/Node.hx)

## Constructor

### new

```haxe
function new(?point:Point, ?triangle:Triangle):Void
```

## Variables

### point

```haxe
var point:Point
```

### triangle

```haxe
var triangle:Triangle
```

### prev

```haxe
var prev:Node
```

### next

```haxe
var next:Node
```

### value

```haxe
var value:Float
```

## Methods

### getHoleAngle

```haxe
function getHoleAngle():Float
```

*
* @param node - middle node
* @return the angle between 3 front nodes

### getBasinAngle

```haxe
function getBasinAngle():Float
```
