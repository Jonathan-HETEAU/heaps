# h3d.anim.DynamicJoint

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.Skin` · source [`h3d/anim/Skin.hx`](../../../../../h3d/anim/Skin.hx)

Extends: [`h3d.anim.Joint`](Joint.md)

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### SLEEP_THRESHOLD

```haxe
static var SLEEP_THRESHOLD:Float
```

### MAX_THRESHOLD

```haxe
static var MAX_THRESHOLD:Float
```

## Variables

### globalForce

```haxe
var globalForce:h3d.Vector
```

### additive

```haxe
var additive:Bool
```

### lockAxis

```haxe
var lockAxis:h3d.Vector
```

### damping

```haxe
var damping:Float
```

### stiffness

```haxe
var stiffness:Float
```

### resistance

```haxe
var resistance:Float
```

### slackness

```haxe
var slackness:Float
```

## Methods

### shouldReceiveAnimation

```haxe
override function shouldReceiveAnimation():Bool
```

### makeRuntimeData

```haxe
override function makeRuntimeData():h3d.scene.DynamicJointData
```

## Inherited members

- from [`h3d.anim.Joint`](Joint.md): `index`, `name`, `bindIndex`, `splitIndex`, `defMat`, `transPos`, `parent`, `follow`, `subs`, `offsets`, `offsetRay`, `retargetAnim`, `shouldReceiveAnimation`, `makeRuntimeData`
