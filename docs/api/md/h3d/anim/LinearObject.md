# h3d.anim.LinearObject

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.LinearAnimation` · source [`h3d/anim/LinearAnimation.hx`](../../../../../h3d/anim/LinearAnimation.hx)

Extends: [`h3d.anim.AnimatedObject`](AnimatedObject.md)

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

### hasRotation

```haxe
var hasRotation:Bool
```

### hasScale

```haxe
var hasScale:Bool
```

### frames

```haxe
var frames:Vector<LinearFrame>
```

### alphas

```haxe
var alphas:Vector<Float>
```

### uvs

```haxe
var uvs:Vector<Float>
```

### propName

```haxe
var propName:String
```

### propValues

```haxe
var propValues:Vector<Float>
```

### matrix

```haxe
var matrix:h3d.Matrix
```

### propCurrentValue

```haxe
var propCurrentValue:Float
```

## Methods

### clone

```haxe
override function clone():AnimatedObject
```

## Inherited members

- from [`h3d.anim.AnimatedObject`](AnimatedObject.md): `objectName`, `targetObject`, `targetSkin`, `targetJoint`, `clone`
