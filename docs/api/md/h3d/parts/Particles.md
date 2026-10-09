# h3d.parts.Particles

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/Particles.hx`](../../../../../h3d/parts/Particles.hx)

Extends: [`h3d.scene.Mesh`](../scene/Mesh.md) → [`h3d.scene.Object`](../scene/Object.md)

Subclasses: [`h3d.parts.Emitter`](Emitter.md)

A set of camera facing particles (sprites) drawn in a single draw call. Particles are added with `alloc` and
updated by the user (or by an `Emitter`).

## Constructor

### new

```haxe
function new(?texture:h3d.mat.Texture, ?parent:h3d.scene.Object):Void
```

Creates an empty set of particles using `texture`.

## Variables

### frames

```haxe
var frames:Array<h2d.Tile>
```

The tiles of the particle texture, selected by `Particle.frame`.

### count

```haxe
var count(default, null):Int
```

The number of particles.

### hasColor

```haxe
var hasColor(default, set):Bool
```

Enables the per particle colors.

### sortMode

```haxe
var sortMode:SortMode
```

The drawing order of the particles.

### globalSize

```haxe
var globalSize:Float
```

A size multiplier of all the particles.

### emitTrail

```haxe
var emitTrail:Bool
```

Draws the particles as a continuous trail.

## Methods

### offsetParticles

```haxe
function offsetParticles(dx:Float, dy:Float, ?dz:Float = 0.):Void
```

Offset all existing particles by the given values.

### clear

```haxe
function clear():Void
```

Removes all the particles.

### alloc

```haxe
function alloc():Null<Particle>
```

Adds a white particle at the position of the object and returns it.

### add

```haxe
function add(p:Null<Particle>):Null<Particle>
```

Adds an existing particle and returns it.

### getParticles

```haxe
inline function getParticles():h3d.parts._Particles.ParticleIterator
```

Returns an iterator on the particles.

## Inherited members

- from [`h3d.scene.Mesh`](../scene/Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](../scene/Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
