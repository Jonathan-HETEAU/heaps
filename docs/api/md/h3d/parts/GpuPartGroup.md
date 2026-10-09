# h3d.parts.GpuPartGroup

**class** · package [`h3d.parts`](README.md) · module `h3d.parts.GpuParticles` · source [`h3d/parts/GpuParticles.hx`](../../../../../h3d/parts/GpuParticles.hx)

A group of GPU particles sharing the same settings and material, part of a `GpuParticles`.
Changing most settings rebuilds the particles.

## Constructor

### new

```haxe
function new(parent:GpuParticles):Void
```

Creates a group of the particles `parent`.

## Variables

### amount

```haxe
var amount:Float
```

A multiplier of the number of particles, from `0` to `1`.

### name

```haxe
var name:String
```

The group name.

### enable

```haxe
var enable:Bool
```

Enables the group.

### material

```haxe
var material:{  }
```

The material properties per `h3d.mat.MaterialSetup` name.

### sortMode

```haxe
var sortMode(default, set):GpuSortMode
```

How the particles are sorted.

### nparts

```haxe
var nparts(default, set):Int
```

The number of particles.

### emitLoop

```haxe
var emitLoop(default, set):Bool
```

If `true`, particles are emitted again when they die; otherwise each particle lives once.

### emitMode

```haxe
var emitMode(default, set):GpuEmitMode
```

The shape the particles are emitted from.

### emitStartDist

```haxe
var emitStartDist(default, set):Float
```

The minimum distance from the emitter at which particles appear.

### emitDist

```haxe
var emitDist(default, set):Float
```

The size of the emission area, added to `emitStartDist`.

### emitAngle

```haxe
var emitAngle(default, set):Float
```

The opening of the emission cone, in radians (negative values emit backwards).

### emitSync

```haxe
var emitSync(default, set):Float
```

How synchronized the particle births are, from `0` (spread over their life) to `1` (all born at once).

### emitDelay

```haxe
var emitDelay(default, set):Float
```

The delay before the first particles appear, in seconds.

### emitOnBorder

```haxe
var emitOnBorder(default, set):Bool
```

Emits on the border of the disc only (`Disc` mode).

### clipBounds

```haxe
var clipBounds:Bool
```

Wraps the particles in the volume bounds (always enabled in `CameraBounds` mode).

### transform3D

```haxe
var transform3D:Bool
```

Orients the particle quads in 3D instead of facing the camera.

### size

```haxe
var size(default, set):Float
```

The size of the particles.

### sizeIncr

```haxe
var sizeIncr(default, set):Float
```

The size increase per second.

### sizeRand

```haxe
var sizeRand(default, set):Float
```

The random variation of the size (fraction of `size`).

### life

```haxe
var life(default, set):Float
```

The life duration of the particles, in seconds.

### lifeRand

```haxe
var lifeRand(default, set):Float
```

The random variation of the life (fraction of `life`).

### speed

```haxe
var speed(default, set):Float
```

The speed of the particles.

### speedRand

```haxe
var speedRand(default, set):Float
```

The random variation of the speed (fraction of `speed`).

### speedIncr

```haxe
var speedIncr(default, set):Float
```

The speed increase over time.

### gravity

```haxe
var gravity(default, set):Float
```

The gravity applied to the particles.

### rotInit

```haxe
var rotInit(default, set):Float
```

The random initial rotation, as a fraction of a half turn.

### rotSpeed

```haxe
var rotSpeed(default, set):Float
```

The rotation speed.

### rotSpeedRand

```haxe
var rotSpeedRand(default, set):Float
```

The random variation of the rotation speed.

### fadeIn

```haxe
var fadeIn:Float
```

The fraction of the life during which the particles fade in.

### fadeOut

```haxe
var fadeOut:Float
```

The fraction of the life after which the particles fade out.

### fadePower

```haxe
var fadePower:Float
```

The exponent of the fade curves.

### frameCount

```haxe
var frameCount:Int
```

The number of animation frames in the texture (`0` for all the cells).

### frameDivisionX

```haxe
var frameDivisionX:Int
```

The number of animation cells horizontally in the texture.

### frameDivisionY

```haxe
var frameDivisionY:Int
```

The number of animation cells vertically in the texture.

### animationRepeat

```haxe
var animationRepeat:Float
```

The number of times the animation plays during a particle life (`0` uses a random fixed frame per particle).

### texture

```haxe
var texture:h3d.mat.Texture
```

The particle texture.

### colorGradient

```haxe
var colorGradient:h3d.mat.Texture
```

A texture giving the color over the life (horizontally) and per particle (vertically).

### isRelative

```haxe
var isRelative(default, set):Bool
```

If `true`, the particles move with the emitter instead of staying in world space.

### attachToCam

```haxe
var attachToCam(default, set):Bool
```

Places the emitter in front of the camera, at `distanceToCam`.

### distanceToCam

```haxe
var distanceToCam(default, set):Float
```

The distance from the camera when `attachToCam` is set.

## Methods

### syncParams

```haxe
function syncParams():Void
```

Updates the shader parameters from the settings.

### getMaterialProps

```haxe
function getMaterialProps():Null<Any>
```

Returns the material properties for the current material setup.

### save

```haxe
function save():Dynamic
```

Returns the settings of the group as a serializable object.

### load

```haxe
function load(version:Int, o:Dynamic):Void
```

Loads the settings of the group saved with the given format version.

### updateBounds

```haxe
function updateBounds(bounds:h3d.col.Bounds):Void
```

Adds the bounds of the particles to `bounds`.

### emitPart

```haxe
function emitPart(rnd:hxd.Rand, pt:GpuPart, absPos:h3d.Matrix):Void
```

Computes the initial state of the particle `pt`.
