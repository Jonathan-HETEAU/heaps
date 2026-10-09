# h3d.scene.JointData

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Skin` · source [`h3d/scene/Skin.hx`](../../../../../h3d/scene/Skin.hx)

Subclasses: [`h3d.scene.DynamicJointData`](DynamicJointData.md)

The runtime state of a joint of a `Skin` (one per joint of the skin data).

## Constructor

### new

```haxe
function new():Void
```

Creates the state of a joint.

## Variables

### currentRelPos

```haxe
var currentRelPos:h3d.Matrix
```

The current transform of the joint relative to its parent, written by animations. `null` uses the default pose.

### currentAbsPos

```haxe
var currentAbsPos:h3d.Matrix
```

The absolute transform of the joint computed during the last joints sync.

### additivePose

```haxe
var additivePose:h3d.Matrix
```

An optional transform applied on top of the animated pose (see `Skin.setJointRelPosition` with `additive`).

## Methods

### sync

```haxe
function sync(skin:Skin, j:h3d.anim.Joint, syncDyn:Bool):Void
```

Computes the absolute transform of the joint and its skinning matrix.
- **param** `syncDyn` `true` when a dynamic joint simulation step must be performed.
