# h3d.anim.BufferObject

**class** · package [`h3d.anim`](README.md) · module `h3d.anim.BufferAnimation` · source [`h3d/anim/BufferAnimation.hx`](../../../../../h3d/anim/BufferAnimation.hx)

Extends: [`h3d.anim.AnimatedObject`](AnimatedObject.md)

An object animated by a `BufferAnimation`: the layout of its values in the animation data.

## Constructor

### new

```haxe
function new(objectName:String, dataOffset:Int):Void
```

Creates the object `objectName` whose values start at `dataOffset`.

## Variables

### layout

```haxe
var layout:EnumFlags<DataLayout>
```

The values stored for the object.

### dataOffset

```haxe
var dataOffset:Int
```

The offset of the object values in a frame of the animation data.

### propCurrentValue

```haxe
var propCurrentValue:Float
```

The current value of the custom property.

### propName

```haxe
var propName:String
```

The name of the custom property, if any.

### matrix

```haxe
var matrix:h3d.Matrix
```

The current transform, updated by `sync`.

## Methods

### getStride

```haxe
function getStride():Int
```

Returns the number of floats per frame of the object.

### clone

```haxe
override function clone():AnimatedObject
```

## Inherited members

- from [`h3d.anim.AnimatedObject`](AnimatedObject.md): `objectName`, `targetObject`, `targetSkin`, `targetJoint`, `clone`
