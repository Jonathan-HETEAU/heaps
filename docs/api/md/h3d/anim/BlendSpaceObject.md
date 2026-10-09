# h3d.anim.BlendSpaceObject

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.BlendSpace2D` · source [`h3d/anim/BlendSpace2D.hx`](../../../../../h3d/anim/BlendSpace2D.hx)

Extends: [`h3d.anim.AnimatedObject`](AnimatedObject.md)

An object animated by a `BlendSpace2D`, with the transforms of each point animation.

## Constructor

### new

```haxe
function new(name:String):Void
```

## Variables

### matrices

```haxe
var matrices:Array<h3d.Matrix>
```

The transforms of the object in the animations of the current triangle.

### outMatrix

```haxe
var outMatrix:h3d.Matrix
```

The blended transform.

### defaultMatrix

```haxe
var defaultMatrix:h3d.Matrix
```

The default transform, used when an animation does not animate the object.

### touchedThisFrame

```haxe
var touchedThisFrame:Bool
```

`true` if an animation updated the object during the current frame.

## Methods

### clone

```haxe
override function clone():BlendSpaceObject
```

## Inherited members

- from [`h3d.anim.AnimatedObject`](AnimatedObject.md): `objectName`, `targetObject`, `targetSkin`, `targetJoint`, `clone`
