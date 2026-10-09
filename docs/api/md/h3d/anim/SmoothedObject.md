# h3d.anim.SmoothedObject

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.SmoothTransition` · source [`h3d/anim/SmoothTransition.hx`](../../../../../h3d/anim/SmoothTransition.hx)

Extends: [`h3d.anim.AnimatedObject`](AnimatedObject.md)

An object animated by a `SmoothTransition`.

## Constructor

### new

```haxe
function new(name:String):Void
```

Creates an object.

## Variables

### tmpMatrix

```haxe
var tmpMatrix:h3d.Matrix
```

A temporary matrix.

### outMatrix

```haxe
var outMatrix:h3d.Matrix
```

The blended transform.

### isAnim1

```haxe
var isAnim1:Bool
```

`true` if the object is animated by the first animation.

### isAnim2

```haxe
var isAnim2:Bool
```

`true` if the object is animated by the second animation.

### def

```haxe
var def:h3d.Matrix
```

The default transform of the object, used when only one animation animates it.

## Inherited members

- from [`h3d.anim.AnimatedObject`](AnimatedObject.md): `objectName`, `targetObject`, `targetSkin`, `targetJoint`, `clone`
