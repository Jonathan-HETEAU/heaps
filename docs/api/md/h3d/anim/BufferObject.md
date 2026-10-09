# h3d.anim.BufferObject

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.BufferAnimation` · source [`h3d/anim/BufferAnimation.hx`](../../../../../h3d/anim/BufferAnimation.hx)

Extends: [`h3d.anim.AnimatedObject`](AnimatedObject.md)

## Constructor

### new

```haxe
function new(objectName:String, dataOffset:Int):Void
```

## Variables

### layout

```haxe
var layout:EnumFlags<DataLayout>
```

### dataOffset

```haxe
var dataOffset:Int
```

### propCurrentValue

```haxe
var propCurrentValue:Float
```

### propName

```haxe
var propName:String
```

### matrix

```haxe
var matrix:h3d.Matrix
```

## Methods

### getStride

```haxe
function getStride():Int
```

### clone

```haxe
override function clone():AnimatedObject
```

## Inherited members

- from [`h3d.anim.AnimatedObject`](AnimatedObject.md): `objectName`, `targetObject`, `targetSkin`, `targetJoint`, `clone`
