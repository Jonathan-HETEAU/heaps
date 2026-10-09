# h3d.parts.Emitter

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/Emitter.hx`](../../../../../h3d/parts/Emitter.hx)

Extends: [`h3d.parts.Particles`](Particles.md) → [`h3d.scene.Mesh`](../scene/Mesh.md) → [`h3d.scene.Object`](../scene/Object.md)

Implements: [`h3d.parts.Randomized`](Randomized.md)

A CPU particle emitter configured by a `State`. For large numbers of particles, prefer `GpuParticles`.

## Constructor

### new

```haxe
function new(?state:State, ?parent:h3d.scene.Object):Void
```

Creates an emitter with the given settings (the defaults if `null`).

## Variables

### time

```haxe
var time(default, null):Float
```

The time in the emitter life, from `0` to `1` (looping if `State.loop`).

### state

```haxe
var state(default, null):State
```

The emitter settings. See `setState`.

### speed

```haxe
var speed:Float
```

The playback speed multiplier.

### collider

```haxe
var collider:Collider
```

The collision handler used when `State.collide` is set.

## Methods

### clear

```haxe
override function clear():Void
```

### setState

```haxe
function setState(s:State):Void
```

Applies new settings.

### update

```haxe
function update(dt:Float):Void
```

Emits and updates the particles for `dt` seconds. Done automatically during sync.

### rand

```haxe
inline function rand():Float
```

Returns a random number between `0` and `1`.

### isActive

```haxe
function isActive():Bool
```

Tells if the emitter still has particles or will emit more.

## Inherited members

- from [`h3d.parts.Particles`](Particles.md): `frames`, `count`, `hasColor`, `sortMode`, `globalSize`, `emitTrail`, `offsetParticles`, `clear`, `alloc`, `add`, `getParticles`
- from [`h3d.scene.Mesh`](../scene/Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](../scene/Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
