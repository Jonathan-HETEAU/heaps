# h3d.scene.Trail

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Trail.hx`](../../../../../h3d/scene/Trail.hx)

Extends: [`h3d.scene.Mesh`](Mesh.md) → [`h3d.scene.Object`](Object.md)

A ribbon following the movements of the object, such as a sword or projectile trail.

Every frame the trail records the absolute position and orientation of the object, and draws a strip
through the recorded points that fades after `duration` seconds. Move the object (or its parent) to draw.
The strip is drawn in world space.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Creates a trail.

## Variables

### duration

```haxe
var duration:Float
```

The time, in seconds, a point stays in the trail.

### angle

```haxe
var angle:Float
```

The orientation of the strip width, in radians: at `0` the strip extends along the local Y axis of the object,
other values rotate it around the local X axis.

### sizeStart

```haxe
var sizeStart:Float
```

The width of the strip at the head of the trail (most recent point).

### sizeEnd

```haxe
var sizeEnd:Float
```

The width of the strip at the tail of the trail (oldest point).

### movementMin

```haxe
var movementMin:Float
```

Movements smaller than this distance do not add width to the trail (the strip collapses while the object stays still).

### movementMax

```haxe
var movementMax:Float
```

Movements larger than this distance are split into several points, interpolated with a curve.

### smoothness

```haxe
var smoothness:Float
```

The curvature of the interpolation between points, from `0` (straight segments) to `1`.

### materialData

```haxe
var materialData:{  }
```

The material properties per `h3d.mat.MaterialSetup` name, saved with `save`. See `getMaterialProps`.

### texture

```haxe
var texture(get, set):h3d.mat.Texture
```

The texture applied to the strip: its U coordinate goes along the trail (`0` at the head, `1` at the tail)
and its V coordinate across the strip.

## Methods

### getMaterialProps

```haxe
function getMaterialProps():Null<Any>
```

Returns the material properties for the current `h3d.mat.MaterialSetup`, creating them from the setup
defaults for `"trail3D"` if needed.

### clear

```haxe
function clear():Void
```

Removes all the points of the trail.

### save

```haxe
function save():Dynamic
```

Returns the trail parameters as a serializable object (the texture is stored by its resource path).

### load

```haxe
function load(obj:Dynamic):Void
```

Loads the parameters returned by `save`. The texture is loaded from the resources, or replaced by a pink
texture if not found.

## Inherited members

- from [`h3d.scene.Mesh`](Mesh.md): `primitive`, `material`, `inheritLod`, `blendshapeInstance`, `forcedLod`, `getMeshMaterials`, `clone`, `getLocalCollider`, `getMaterialByName`, `getMaterials`, `getLodIndex`, `setBlendshapeWeight`, `setBlendshapeWeights`, `getBlenshapeNames`, `hasBlendshapes`
- from [`h3d.scene.Object`](Object.md): `currentAnimation`, `parent`, `numChildren`, `visible`, `culled`, `alwaysSyncAnimation`, `inheritCulled`, `ignoreBounds`, `forceBounds`, `ignoreCollide`, `modelRoot`, `ignoreParentTransform`, `lightCameraCenter`, `fixedPosition`, `alwaysSync`, `drawn`, `cullingCollider`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `follow`, `followPositionOnly`, `defaultTransform`, `name`, `playAnimation`, `switchToAnimation`, `stopAnimation`, `applyAnimationTransform`, `getObjectsCount`, `getMaterialByName`, `contains`, `find`, `findAll`, `getMaterials`, `localToGlobal`, `globalToLocal`, `getInvPos`, `getBounds`, `getMeshes`, `getMeshByName`, `getObjectByName`, `clone`, `addChild`, `addChildAt`, `iterVisibleMeshes`, `removeChild`, `removeChildren`, `remove`, `getScene`, `getAbsPos`, `getRelPos`, `isMesh`, `toMesh`, `getCollider`, `getGlobalCollider`, `getLocalCollider`, `getPosition`, `setPosition`, `setTransform`, `getTransform`, `rotate`, `setRotation`, `setRotationAxis`, `setDirection`, `getLocalDirection`, `getRotationQuat`, `setRotationQuat`, `scale`, `setScale`, `toString`, `getChildAt`, `getChildIndex`, `iterator`
