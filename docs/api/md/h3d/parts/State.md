# h3d.parts.State

**class** · package [`h3d.parts`](README.md) · module `h3d.parts.Data` · source [`h3d/parts/Data.hx`](../../../../../h3d/parts/Data.hx)

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### defPartAlpha

```haxe
static var defPartAlpha:hxd.res.Any
```

### defPart

```haxe
static var defPart:hxd.res.Any
```

## Static methods

### eval

```haxe
static inline function eval(v:Value, time:Float, r:Randomized, p:Particle):Float
```

### load

```haxe
static function load(b:Bytes, loadTexture:() -> h2d.Tile):State
```

## Variables

### textureName

```haxe
var textureName:String
```

### frames

```haxe
var frames:Array<h2d.Tile>
```

### blendMode

```haxe
var blendMode:BlendMode
```

### sortMode

```haxe
var sortMode:SortMode
```

### is3D

```haxe
var is3D:Bool
```

### isAlphaMap

```haxe
var isAlphaMap:Bool
```

### loop

```haxe
var loop:Bool
```

### emitRate

```haxe
var emitRate:Value
```

### bursts

```haxe
var bursts:Array<{ time:Float, count:Int }>
```

### maxParts

```haxe
var maxParts:Int
```

### shape

```haxe
var shape:Shape
```

### emitFromShell

```haxe
var emitFromShell:Bool
```

### emitLocal

```haxe
var emitLocal:Bool
```

### emitTrail

```haxe
var emitTrail:Bool
```

### randomDir

```haxe
var randomDir:Bool
```

### globalLife

```haxe
var globalLife:Float
```

### globalSpeed

```haxe
var globalSpeed:Value
```

### globalSize

```haxe
var globalSize:Value
```

### life

```haxe
var life:Value
```

### size

```haxe
var size:Value
```

### ratio

```haxe
var ratio:Value
```

### rotation

```haxe
var rotation:Value
```

### speed

```haxe
var speed:Value
```

### gravity

```haxe
var gravity:Value
```

### force

```haxe
var force:Null<ValueXYZ>
```

### colors

```haxe
var colors:Null<Array<{ time:Float, color:Int }>>
```

### light

```haxe
var light:Value
```

### alpha

```haxe
var alpha:Value
```

### collide

```haxe
var collide:Bool
```

### collideKill

```haxe
var collideKill:Bool
```

### bounce

```haxe
var bounce:Float
```

### frame

```haxe
var frame:Null<Value>
```

### delay

```haxe
var delay:Float
```

### update

```haxe
var update:() -> Void
```

## Methods

### setDefaults

```haxe
function setDefaults():Void
```

### scale

```haxe
function scale(val:Value, v:Float):Value
```

### initFrames

```haxe
function initFrames():Void
```
