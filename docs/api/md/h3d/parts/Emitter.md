# h3d.parts.Emitter

**class** · package [`h3d.parts`](README.md) · source [`h3d/parts/Emitter.hx`](../../../../../h3d/parts/Emitter.hx)

Extends: [`h3d.parts.Particles`](Particles.md) → [`h3d.scene.Mesh`](../scene/Mesh.md) → [`h3d.scene.Object`](../scene/Object.md)

Implements: [`h3d.parts.Randomized`](Randomized.md)

## Constructor

### new

```haxe
function new(?state:State, ?parent:h3d.scene.Object):Void
```

## Variables

### time

```haxe
var time(default, null):Float
```

### state

```haxe
var state(default, null):State
```

### speed

```haxe
var speed:Float
```

### collider

```haxe
var collider:Collider
```

## Methods

### clear

```haxe
override function clear():Void
```

### setState

```haxe
function setState(s:State):Void
```

### update

```haxe
function update(dt:Float):Void
```

### rand

```haxe
inline function rand():Float
```

### isActive

```haxe
function isActive():Bool
```

## Inherited members

- from [`h3d.parts.Particles`](Particles.md): `frames`, `count`, `hasColor`, `sortMode`, `globalSize`, `emitTrail`, `offsetParticles`, `clear`, `alloc`, `add`, `getParticles`
- from [`h3d.scene.Mesh`](../scene/Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](../scene/Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
