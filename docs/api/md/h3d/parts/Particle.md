# h3d.parts.Particle

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/Particle.hx`](../../../../../h3d/parts/Particle.hx)

Implements: [`h3d.parts.Randomized`](Randomized.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### x

```haxe
var x:Float
```

### y

```haxe
var y:Float
```

### z

```haxe
var z:Float
```

### r

```haxe
var r:Float
```

### g

```haxe
var g:Float
```

### b

```haxe
var b:Float
```

### a

```haxe
var a:Float
```

### alpha

```haxe
var alpha(get, set):Float
```

### frame

```haxe
var frame:Int
```

### size

```haxe
var size:Float
```

### ratio

```haxe
var ratio:Float
```

### rotation

```haxe
var rotation:Float
```

### prev

```haxe
var prev:Particle
```

### next

```haxe
var next:Particle
```

### time

```haxe
var time:Float
```

### lifeTimeFactor

```haxe
var lifeTimeFactor:Float
```

### dx

```haxe
var dx:Float
```

### dy

```haxe
var dy:Float
```

### dz

```haxe
var dz:Float
```

### fx

```haxe
var fx:Float
```

### fy

```haxe
var fy:Float
```

### fz

```haxe
var fz:Float
```

### randIndex

```haxe
var randIndex:Int
```

### randValues

```haxe
var randValues:Array<Float>
```

## Methods

### setColor

```haxe
function setColor(color:Int, ?alpha:Float = 1.):Void
```

### remove

```haxe
function remove():Void
```

### eval

```haxe
inline function eval(v:Value, time:Float):Float
```

### rand

```haxe
function rand():Float
```
