# h3d.anim.DynamicJoint

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.Skin` · source [`h3d/anim/Skin.hx`](../../../../../h3d/anim/Skin.hx)

Extends: [`h3d.anim.Joint`](Joint.md)

A joint simulated as a spring following its animated position (hair, cloth, tails...).
See `h3d.scene.Skin.DynamicJointData`.

## Constructor

### new

```haxe
function new():Void
```

Creates a dynamic joint.

## Static variables

### SLEEP_THRESHOLD

```haxe
static var SLEEP_THRESHOLD:Float
```

Under this squared speed, the joint does not move.

### MAX_THRESHOLD

```haxe
static var MAX_THRESHOLD:Float
```

Above this squared speed, the speed is reset (to avoid instabilities).

## Variables

### globalForce

```haxe
var globalForce:h3d.Vector
```

A constant force applied to the joint, such as gravity or wind.

### additive

```haxe
var additive:Bool
```

If `true`, the simulation is applied on top of the animation of the joint, otherwise the joint is only simulated.

### lockAxis

```haxe
var lockAxis:h3d.Vector
```

The axes (components greater than `0`) along which the joint does not move relative to its parent.

### damping

```haxe
var damping:Float
```

The speed attenuation per step, from `0` (none) to `1` (no inertia).

### stiffness

```haxe
var stiffness:Float
```

How much the joint is pulled back to its animated position, from `0` to `1`.

### resistance

```haxe
var resistance:Float
```

How much the joint resists to `globalForce`, from `0` (none) to `1` (ignores it).

### slackness

```haxe
var slackness:Float
```

How much the joint can move away from its parent, from `0` (keeps its length) to `1` (free).

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
