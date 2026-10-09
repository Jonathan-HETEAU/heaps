# h3d.anim.AnimatedObject

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.Animation` · source [`h3d/anim/Animation.hx`](../../../../../h3d/anim/Animation.hx)

Subclasses: [`h3d.anim.BlendSpaceObject`](BlendSpaceObject.md), [`h3d.anim.BufferObject`](BufferObject.md), [`h3d.anim.LinearObject`](LinearObject.md), [`h3d.anim.SmoothedObject`](SmoothedObject.md)

An object animated by an `Animation`, identified by name, and its target once the animation is bound.

## Constructor

### new

```haxe
function new(name:String):Void
```

Creates an animated object for the object named `name`.

## Variables

### objectName

```haxe
var objectName:String
```

The name of the animated object (or joint) in the model.

### targetObject

```haxe
var targetObject:h3d.scene.Object
```

The object found by `Animation.bind`, or `null`.

### targetSkin

```haxe
var targetSkin:h3d.scene.Skin
```

The skin containing the animated joint, or `null` if the target is an object.

### targetJoint

```haxe
var targetJoint:Int
```

The index of the animated joint in `targetSkin`.

## Methods

### clone

```haxe
function clone():AnimatedObject
```

Returns a copy, not bound to any target.
