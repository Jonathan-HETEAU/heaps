# h3d.parts.Particles

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/Particles.hx`](../../../../../h3d/parts/Particles.hx)

Extends: [`h3d.scene.Mesh`](../scene/Mesh.md) → [`h3d.scene.Object`](../scene/Object.md)

Subclasses: [`h3d.parts.Emitter`](Emitter.md)

## Constructor

### new

```haxe
function new(?texture:h3d.mat.Texture, ?parent:h3d.scene.Object):Void
```

## Variables

### frames

```haxe
var frames:Array<h2d.Tile>
```

### count

```haxe
var count(default, null):Int
```

### hasColor

```haxe
var hasColor(default, set):Bool
```

### sortMode

```haxe
var sortMode:SortMode
```

### globalSize

```haxe
var globalSize:Float
```

### emitTrail

```haxe
var emitTrail:Bool
```

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

### alloc

```haxe
function alloc():Null<Particle>
```

### add

```haxe
function add(p:Null<Particle>):Null<Particle>
```

### getParticles

```haxe
inline function getParticles():h3d.parts._Particles.ParticleIterator
```

## Inherited members

- from [`h3d.scene.Mesh`](../scene/Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](../scene/Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
