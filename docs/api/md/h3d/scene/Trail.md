# h3d.scene.Trail

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Trail.hx`](../../../../../h3d/scene/Trail.hx)

Extends: [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

## Variables

### duration

```haxe
var duration:Float
```

### angle

```haxe
var angle:Float
```

### sizeStart

```haxe
var sizeStart:Float
```

### sizeEnd

```haxe
var sizeEnd:Float
```

### movementMin

```haxe
var movementMin:Float
```

### movementMax

```haxe
var movementMax:Float
```

### smoothness

```haxe
var smoothness:Float
```

### materialData

```haxe
var materialData:{  }
```

### texture

```haxe
var texture(get, set):h3d.mat.Texture
```

## Methods

### getMaterialProps

```haxe
function getMaterialProps():Null<Any>
```

### clear

```haxe
function clear():Void
```

### save

```haxe
function save():Dynamic
```

### load

```haxe
function load(obj:Dynamic):Void
```

## Inherited members

- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
