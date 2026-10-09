# h2d.ObjectFollower

**class** · package [`h2d`](README.md) · source [`h2d/ObjectFollower.hx`](../../../../h2d/ObjectFollower.hx)

Extends: [`h2d.Object`](Object.md)

Follows the 3D object position in current 3D camera, synchronizing the follower position to projected 2D position of the followed object.

## Constructor

### new

```haxe
function new(obj:h3d.scene.Object, ?parent:Object):Void
```

Create a new ObjectFollower instance.
- **param** `obj` The 3D object to follow.
- **param** `parent` An optional parent `h2d.Object` instance to which ObjectFollower adds itself if set.

## Variables

### follow

```haxe
var follow:h3d.scene.Object
```

Reference to target 3D object to follow.

### pixelSnap

```haxe
var pixelSnap:Bool
```

Rounds the resulting 2d position of follower aligning it to s2d pixel grid.

### followVisibility

```haxe
var followVisibility:Bool
```

If enabled, follower will mirror visibility of target object.

### offsetX

```haxe
var offsetX:Float
```

Extra camera projection offset along X-axis to which follower will attach to.

### offsetY

```haxe
var offsetY:Float
```

Extra camera projection offset along Y-axis to which follower will attach to.

### offsetZ

```haxe
var offsetZ:Float
```

Extra camera projection offset along Z-axis to which follower will attach to.

### horizontalAlign

```haxe
var horizontalAlign:FlowAlign
```

Horizontal object alignment relative to anchoring point.

### verticalAlign

```haxe
var verticalAlign:FlowAlign
```

Vertical object alignment relative to anchoring point.

### depthMask

```haxe
var depthMask:Bool
```

Mask with current depth buffer

### depthBias

```haxe
var depthBias:Float
```

Calculate the depth for masking with the given bias in 3D position units, relative to current camera.

### cameraRelative

```haxe
var cameraRelative:Bool
```

Express the offset in terms of the current camera direction.

### autoRemove

```haxe
var autoRemove:Bool
```

If enabled, the ObjectFollower will remove itself if the object followed is null or removed.

## Inherited members

- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
