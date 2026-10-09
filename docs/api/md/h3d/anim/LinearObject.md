# h3d.anim.LinearObject

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.LinearAnimation` · source [`h3d/anim/LinearAnimation.hx`](../../../../../h3d/anim/LinearAnimation.hx)

Extends: [`h3d.anim.AnimatedObject`](AnimatedObject.md)

An object animated by a `LinearAnimation`: one curve of transforms, alpha, UV offsets or a custom property.

## Constructor

### new

```haxe
function new(name:String):Void
```

## Variables

### hasPosition

```haxe
var hasPosition:Bool
```

The curve animates the position.

### hasRotation

```haxe
var hasRotation:Bool
```

The curve animates the rotation.

### hasScale

```haxe
var hasScale:Bool
```

The curve animates the scale.

### frames

```haxe
var frames:Vector<LinearFrame>
```

The transform keyframes (one per frame), or `null`.

### alphas

```haxe
var alphas:Vector<Float>
```

The alpha keyframes (material color alpha), or `null`.

### uvs

```haxe
var uvs:Vector<Float>
```

The UV offset keyframes (2 values per frame), or `null`.

### propName

```haxe
var propName:String
```

The name of the animated custom property (see `Animation.getPropValue`), or `null`.

### propValues

```haxe
var propValues:Vector<Float>
```

The custom property keyframes, or `null`.

### matrix

```haxe
var matrix:h3d.Matrix
```

The current transform, updated by `sync`.

### propCurrentValue

```haxe
var propCurrentValue:Float
```

The current value of the custom property.

## Methods

### clone

```haxe
override function clone():AnimatedObject
```

## Inherited members

- from [`h3d.anim.AnimatedObject`](AnimatedObject.md): `objectName`, `targetObject`, `targetSkin`, `targetJoint`, `clone`
