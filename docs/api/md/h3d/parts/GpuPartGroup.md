# h3d.parts.GpuPartGroup

**class** · package [`h3d.parts`](README.md) · module `h3d.parts.GpuParticles` · source [`h3d/parts/GpuParticles.hx`](../../../../../h3d/parts/GpuParticles.hx)

## Constructor

### new

```haxe
function new(parent:GpuParticles):Void
```

## Variables

### amount

```haxe
var amount:Float
```

### name

```haxe
var name:String
```

### enable

```haxe
var enable:Bool
```

### material

```haxe
var material:{  }
```

### sortMode

```haxe
var sortMode(default, set):GpuSortMode
```

### nparts

```haxe
var nparts(default, set):Int
```

### emitLoop

```haxe
var emitLoop(default, set):Bool
```

### emitMode

```haxe
var emitMode(default, set):GpuEmitMode
```

### emitStartDist

```haxe
var emitStartDist(default, set):Float
```

### emitDist

```haxe
var emitDist(default, set):Float
```

### emitAngle

```haxe
var emitAngle(default, set):Float
```

### emitSync

```haxe
var emitSync(default, set):Float
```

### emitDelay

```haxe
var emitDelay(default, set):Float
```

### emitOnBorder

```haxe
var emitOnBorder(default, set):Bool
```

### clipBounds

```haxe
var clipBounds:Bool
```

### transform3D

```haxe
var transform3D:Bool
```

### size

```haxe
var size(default, set):Float
```

### sizeIncr

```haxe
var sizeIncr(default, set):Float
```

### sizeRand

```haxe
var sizeRand(default, set):Float
```

### life

```haxe
var life(default, set):Float
```

### lifeRand

```haxe
var lifeRand(default, set):Float
```

### speed

```haxe
var speed(default, set):Float
```

### speedRand

```haxe
var speedRand(default, set):Float
```

### speedIncr

```haxe
var speedIncr(default, set):Float
```

### gravity

```haxe
var gravity(default, set):Float
```

### rotInit

```haxe
var rotInit(default, set):Float
```

### rotSpeed

```haxe
var rotSpeed(default, set):Float
```

### rotSpeedRand

```haxe
var rotSpeedRand(default, set):Float
```

### fadeIn

```haxe
var fadeIn:Float
```

### fadeOut

```haxe
var fadeOut:Float
```

### fadePower

```haxe
var fadePower:Float
```

### frameCount

```haxe
var frameCount:Int
```

### frameDivisionX

```haxe
var frameDivisionX:Int
```

### frameDivisionY

```haxe
var frameDivisionY:Int
```

### animationRepeat

```haxe
var animationRepeat:Float
```

### texture

```haxe
var texture:h3d.mat.Texture
```

### colorGradient

```haxe
var colorGradient:h3d.mat.Texture
```

### isRelative

```haxe
var isRelative(default, set):Bool
```

### attachToCam

```haxe
var attachToCam(default, set):Bool
```

### distanceToCam

```haxe
var distanceToCam(default, set):Float
```

## Methods

### syncParams

```haxe
function syncParams():Void
```

### getMaterialProps

```haxe
function getMaterialProps():Null<Any>
```

### save

```haxe
function save():Dynamic
```

### load

```haxe
function load(version:Int, o:Dynamic):Void
```

### updateBounds

```haxe
function updateBounds(bounds:h3d.col.Bounds):Void
```

### emitPart

```haxe
function emitPart(rnd:hxd.Rand, pt:GpuPart, absPos:h3d.Matrix):Void
```
