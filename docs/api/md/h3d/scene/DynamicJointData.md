# h3d.scene.DynamicJointData

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Skin` · source [`h3d/scene/Skin.hx`](../../../../../h3d/scene/Skin.hx)

Extends: [`h3d.scene.JointData`](JointData.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### curTargetWorld

```haxe
var curTargetWorld:h3d.Matrix
```

## Methods

### initData

```haxe
function initData(skin:Skin, j:h3d.anim.Joint):Void
```

### sync

```haxe
override function sync(skin:Skin, j:h3d.anim.Joint, syncDyn:Bool):Void
```

## Inherited members

- from [`h3d.scene.JointData`](JointData.md): `currentRelPos`, `currentAbsPos`, `additivePose`, `sync`
