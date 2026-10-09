# h3d.anim.Joint

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.Skin` · source [`h3d/anim/Skin.hx`](../../../../../h3d/anim/Skin.hx)

Subclasses: [`h3d.anim.DynamicJoint`](DynamicJoint.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### index

```haxe
var index:Int
```

### name

```haxe
var name:String
```

### bindIndex

```haxe
var bindIndex:Int
```

### splitIndex

```haxe
var splitIndex:Int
```

### defMat

```haxe
var defMat:h3d.Matrix
```

### transPos

```haxe
var transPos:h3d.Matrix
```

### parent

```haxe
var parent:Joint
```

### follow

```haxe
var follow:Joint
```

### subs

```haxe
var subs:Array<Joint>
```

### offsets

```haxe
var offsets:h3d.col.Bounds
```

### offsetRay

```haxe
var offsetRay:Float
```

### retargetAnim

```haxe
var retargetAnim:Bool
```

When animated, we will use the default bind pose translation instead of the animated translation,
enabling retargeting on a skeleton with different proportions

## Methods

### shouldReceiveAnimation

```haxe
function shouldReceiveAnimation():Bool
```

### makeRuntimeData

```haxe
function makeRuntimeData():h3d.scene.JointData
```
