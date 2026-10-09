# h3d.scene.DynamicJointData

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Skin` · source [`h3d/scene/Skin.hx`](../../../../../h3d/scene/Skin.hx)

Extends: [`h3d.scene.JointData`](JointData.md)

The runtime state of a dynamic joint (`h3d.anim.Skin.DynamicJoint`): a joint simulated as a spring
following its animated position, for hair, cloth or other secondary motion.
The simulation runs at the fixed time step `Skin.FIXED_DT`.

## Constructor

### new

```haxe
function new():Void
```

Creates the state of a dynamic joint.

## Variables

### curTargetWorld

```haxe
var curTargetWorld:h3d.Matrix
```

The current simulated world transform of the joint.

## Methods

### initData

```haxe
function initData(skin:Skin, j:h3d.anim.Joint):Void
```

Initializes the simulation from the current joint position.

### sync

```haxe
override function sync(skin:Skin, j:h3d.anim.Joint, syncDyn:Bool):Void
```

## Inherited members

- from [`h3d.scene.JointData`](JointData.md): `currentRelPos`, `currentAbsPos`, `additivePose`, `sync`
