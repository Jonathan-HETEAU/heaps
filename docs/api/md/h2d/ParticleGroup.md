# h2d.ParticleGroup

**class** · package [`h2d`](README.md) · module `h2d.Particles` · source [`h2d/Particles.hx`](../../../../h2d/Particles.hx)

An emitter of a single particle group. Part of `Particles` simulation system.

## Constructor

### new

```haxe
function new(p:Particles):Void
```

Create a new particle group instance.
- **param** `p` The parent Particles instance. Group does not automatically adds itself to the Particles.

## Variables

### name

```haxe
var name:String
```

The group name.

### enable

```haxe
var enable(default, set):Bool
```

Disabling the group immediately removes it from rendering and resets it's state.

### sortMode

```haxe
var sortMode(default, set):PartSortMode
```

Does nothing.

### blendMode

```haxe
var blendMode(default, set):BlendMode
```

Configures blending mode for this group.

### nparts

```haxe
var nparts(default, set):Int
```

Maximum number of particles alive at a time.

### dx

```haxe
var dx(default, set):Int
```

Initial particle X offset.

### dy

```haxe
var dy(default, set):Int
```

Initial particle Y offset.

### emitLoop

```haxe
var emitLoop(default, set):Bool
```

If enabled, group will emit new particles indefinitely maintaining number of particles at `ParticleGroup.nparts`.

### emitMode

```haxe
var emitMode(default, set):PartEmitMode
```

The pattern in which particles are emitted. See individual `PartEmitMode` values for more details.

### emitStartDist

```haxe
var emitStartDist(default, set):Float
```

Initial particle position distance from emission point.

### emitDist

```haxe
var emitDist(default, set):Float
```

Additional random particle position distance from emission point.

### emitDistY

```haxe
var emitDistY(default, set):Float
```

Secondary random position distance modifier (used by `Box` emitMode)

### emitAngle

```haxe
var emitAngle(default, set):Float
```

Normalized particle emission direction angle.

### emitDirectionAsAngle

```haxe
var emitDirectionAsAngle(default, set):Bool
```

When enabled, particle rotation will match the particle movement direction angle.

### emitSync

```haxe
var emitSync(default, set):Float
```

Randomized synchronization delay before particle appears after being emitted.

Usage note for non-relative mode: Particle will use configuration that was happened at time of emission, not when delay timer runs out.

### emitDelay

```haxe
var emitDelay(default, set):Float
```

Fixed delay before particle appears after being emitted.

Usage note for non-relative mode: Particle will use configuration that was happened at time of emission, not when delay timer runs out.

### size

```haxe
var size(default, set):Float
```

Initial particle size.

### sizeIncr

```haxe
var sizeIncr(default, set):Float
```

If set, particle will change it's size with time.

### incrX

```haxe
var incrX(default, set):Bool
```

If enabled, particle will increase on X-axis with `sizeIncr`.

### incrY

```haxe
var incrY(default, set):Bool
```

If enabled, particle will increase on Y-axis with `sizeIncr`.

### sizeRand

```haxe
var sizeRand(default, set):Float
```

Additional random size increase when particle is created.

### life

```haxe
var life(default, set):Float
```

Initial particle lifetime.

### lifeRand

```haxe
var lifeRand(default, set):Float
```

Additional random lifetime increase when particle is created.

### speed

```haxe
var speed(default, set):Float
```

Initial particle velocity.

### speedRand

```haxe
var speedRand(default, set):Float
```

Additional random velocity increase when particle is created.

### speedIncr

```haxe
var speedIncr(default, set):Float
```

If set, particle velocity will change over time.

### gravity

```haxe
var gravity(default, set):Float
```

Gravity applied to the particle.

### gravityAngle

```haxe
var gravityAngle(default, set):Float
```

The gravity angle in radians. `0` points down.

### rotInit

```haxe
var rotInit(default, set):Float
```

Initial particle rotation.

### rotSpeed

```haxe
var rotSpeed(default, set):Float
```

Initial rotation speed of the particle.

### rotSpeedRand

```haxe
var rotSpeedRand(default, set):Float
```

Additional random rotation speed when particle is created.

### rotAuto

```haxe
var rotAuto:Bool
```

If enabled, particles will be automatically rotated in the direction of particle velocity.

### fadeIn

```haxe
var fadeIn:Float
```

The time in seconds during which particle alpha fades in after being emitted.

### fadeOut

```haxe
var fadeOut:Float
```

The time in seconds at which particle will start to fade out before dying. Fade out time can be calculated with `lifetime - fadeOut`.

### fadePower

```haxe
var fadePower:Float
```

The exponent of the alpha transition speed on fade in and fade out.

### frameCount

```haxe
var frameCount(default, set):Int
```

Total count of frames used by the group.

When 0, amount of frames in a group calculated by `frameDivisionX * frameDivisionY`.

Otherwise it's `min(frameDivisionX * frameDivisionY, frameCount)`.

### frameDivisionX

```haxe
var frameDivisionX(default, set):Int
```

Horizontal frame divisor.

### frameDivisionY

```haxe
var frameDivisionY(default, set):Int
```

Vertical frame divisor.

### animationRepeat

```haxe
var animationRepeat(default, set):Float
```

The amount of times the animations will loop during lifetime.
Settings it to 0 will stop the animation playback and each particle will have a random frame assigned at emission time.

### texture

```haxe
var texture(default, set):h3d.mat.Texture
```

The texture used to render particles.

### colorGradient

```haxe
var colorGradient(default, set):h3d.mat.Texture
```

Optional color gradient texture for tinting.

### isRelative

```haxe
var isRelative(default, set):Bool
```

When enabled, causes particles to always render relative to the emitter position, moving along with it.
Otherwise, once emitted, particles won't follow the emitter, and will render relative to the scene origin.

Non-relative mode is useful for simulating something like a smoke coming from a moving object,
while relative mode things like jet flame that have to stick to its emission source.

### rebuildOnChange

```haxe
var rebuildOnChange:Bool
```

Should group rebuild on parameters change.

Note that some parameters take immediate effect on the existing particles, and some would force rebuild regardless of this setting.

Parameters that take immediate effect:
`speedIncr`, `gravity`, `gravityAngle`, `fadeIn`, `fadeOut`, `fadePower`, `rotAuto`, `rotInit`, `incrX`, `incrY`, `emitLoop` and `blendMode`

Parameters that will always force rebuild:
`enable`, `sortMode`, `isRelative`, `texture`, `frameCount`, `frameDivisionX`, `frameDivisionY` and `nparts`

Parameters that newer cause rebuild:
`blendMode`, `colorGradient` and `animationRepeat`

## Methods

### rebuild

```haxe
function rebuild():Void
```

Reset current state of particle group and re-emit all particles.

### save

```haxe
function save():Dynamic
```

Saves the particle group configuration into a `Dynamic` object.

### load

```haxe
function load(version:Int, o:Dynamic):Void
```

Loads the particle group configuration from a given object.

- **param** `version` The version of Particles that were used to save the configuration.
- **param** `o` The previously saved configuration data to load.
