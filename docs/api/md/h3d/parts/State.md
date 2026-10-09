# h3d.parts.State

**class** · package [`h3d.parts`](README.md) · module `h3d.parts.Data` · source [`h3d/parts/Data.hx`](../../../../../h3d/parts/Data.hx)

The settings of a CPU particle emitter (`Emitter`), usually edited in an editor and saved with `haxe.Serializer`.

## Constructor

### new

```haxe
function new():Void
```

Creates empty settings. Call `setDefaults`.

## Static variables

### defPartAlpha

```haxe
static var defPartAlpha:hxd.res.Any
```

The default particle texture for alpha blending.

### defPart

```haxe
static var defPart:hxd.res.Any
```

The default particle texture.

## Static methods

### eval

```haxe
static inline function eval(v:Value, time:Float, r:Randomized, p:Particle):Float
```

Evaluates the value `v` at `time` (from `0` to `1`) for the particle `p`.

### load

```haxe
static function load(b:Bytes, loadTexture:() -> h2d.Tile):State
```

Loads serialized settings.
- **param** `loadTexture` A function loading the particle texture from its path.

## Variables

### textureName

```haxe
var textureName:String
```

The path of the particle texture, or `null` for the default one.

### frames

```haxe
var frames:Array<h2d.Tile>
```

The tiles of the particle texture (several for animated particles).

### blendMode

```haxe
var blendMode:BlendMode
```

The blend mode.

### sortMode

```haxe
var sortMode:SortMode
```

The drawing order.

### is3D

```haxe
var is3D:Bool
```

If `true`, the particles are oriented in 3D instead of facing the camera.

### isAlphaMap

```haxe
var isAlphaMap:Bool
```

If `true`, the texture is used as an alpha map.

### loop

```haxe
var loop:Bool
```

The emitter restarts at the end of its life.

### emitRate

```haxe
var emitRate:Value
```

The number of particles emitted per second.

### bursts

```haxe
var bursts:Array<{ time:Float, count:Int }>
```

Additional particles emitted at once at given times.

### maxParts

```haxe
var maxParts:Int
```

The maximum number of particles alive.

### shape

```haxe
var shape:Shape
```

The volume the particles are emitted from.

### emitFromShell

```haxe
var emitFromShell:Bool
```

Emits from the surface of the shape instead of its volume.

### emitLocal

```haxe
var emitLocal:Bool
```

The particles move with the emitter instead of staying in world space.

### emitTrail

```haxe
var emitTrail:Bool
```

Emits the particles along the movement of the emitter.

### randomDir

```haxe
var randomDir:Bool
```

Emits in random directions instead of the shape direction.

### globalLife

```haxe
var globalLife:Float
```

The duration of an emitter loop, in seconds.

### globalSpeed

```haxe
var globalSpeed:Value
```

A speed multiplier of all the particles, over the emitter life.

### globalSize

```haxe
var globalSize:Value
```

A size multiplier of all the particles, over the emitter life.

### life

```haxe
var life:Value
```

The life of a particle, in seconds.

### size

```haxe
var size:Value
```

The size of a particle, over its life.

### ratio

```haxe
var ratio:Value
```

The height to width ratio of a particle.

### rotation

```haxe
var rotation:Value
```

The rotation speed of a particle.

### speed

```haxe
var speed:Value
```

The speed of a particle.

### gravity

```haxe
var gravity:Value
```

The gravity applied to the particles.

### force

```haxe
var force:Null<ValueXYZ>
```

An optional force applied to the particles.

### colors

```haxe
var colors:Null<Array<{ time:Float, color:Int }>>
```

An optional color gradient over the particle life.

### light

```haxe
var light:Value
```

The light intensity of a particle, over its life.

### alpha

```haxe
var alpha:Value
```

The opacity of a particle, over its life.

### collide

```haxe
var collide:Bool
```

The particles collide with the emitter collider (see `Emitter.collider`).

### collideKill

```haxe
var collideKill:Bool
```

The particles are removed when they collide.

### bounce

```haxe
var bounce:Float
```

The fraction of the speed kept when bouncing.

### frame

```haxe
var frame:Null<Value>
```

The animation frame of a particle, over its life, for animated textures.

### delay

```haxe
var delay:Float
```

The delay before the emitter starts, in seconds.

### update

```haxe
var update:() -> Void
```

An optional function called to update each particle every frame.

## Methods

### setDefaults

```haxe
function setDefaults():Void
```

Sets the default settings.

### scale

```haxe
function scale(val:Value, v:Float):Value
```

Returns the value `val` multiplied by `v`.

### initFrames

```haxe
function initFrames():Void
```

Initializes `frames` from the texture.
