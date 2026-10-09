# h3d.anim.BlendSpace2D

**class** · package [`h3d.anim`](README.md) · source [`h3d/anim/BlendSpace2D.hx`](../../../../../h3d/anim/BlendSpace2D.hx)

Extends: [`h3d.anim.Animation`](Animation.md)

Blends multiple animations points placed on a virtual 2d plane

## Constructor

### new

```haxe
function new(name:String, points:Array<BlendSpace2DPoint>):Void
```

Creates a blend space from its points.

## Variables

### x

```haxe
var x(default, set):Float
```

X Position of the blend point in the Blendspace

### xSmooth

```haxe
var xSmooth:Float
```

Smooth factor for the X value position over time

### y

```haxe
var y(default, set):Float
```

Y Position of the blend point in the BlendSpace

### ySmooth

```haxe
var ySmooth:Float
```

Smooth factor for the Y value position over time

### scaleSpeedOutsideOfBounds

```haxe
var scaleSpeedOutsideOfBounds:Bool
```

If true, the speed of the blended animation will be scaled when
the x/y points lies outside all of the blend space triangles,
based on the distance of the point from the center of the graph (0,0)
and the distance of the closest point inside of the graph to the center

## Methods

### resetSmooth

```haxe
function resetSmooth():Void
```

Moves the smoothed position immediately to `x` and `y`.

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

### bind

```haxe
override function bind(object:h3d.scene.Object):Void
```

### unbind

```haxe
override function unbind(objectName:String):Void
```

### update

```haxe
override function update(dt:Float):Float
```

## Inherited members

- from [`h3d.anim.Animation`](Animation.md): `name`, `resourcePath`, `frameCount`, `sampling`, `frame`, `speed`, `onAnimEnd`, `onEvent`, `pause`, `loop`, `sourceEvents`, `events`, `getDuration`, `unbind`, `getEvents`, `getSourceEvents`, `setEvents`, `getEvent`, `addEvent`, `removeEvent`, `getEventTime`, `getObjects`, `setFrame`, `loadProps`, `createInstance`, `bind`, `getPropValue`, `sync`, `update`, `toString`
