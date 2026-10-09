# hxd.App

**class** · package [`hxd`](README.md) · source [`hxd/App.hx`](../../../../hxd/App.hx)

Implements: [`h3d.IDrawable`](../h3d/IDrawable.md)

Base class for a Heaps application.

This class contains code to set up a typical Heaps app,
including 3D and 2D scene, input, update and loops.

It's designed to be a base class for an application entry point,
and provides several methods for overriding, in which we can plug
custom code. See API documentation for more information.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### engine

```haxe
var engine(default, null):h3d.Engine
```

Rendering engine.

### s3d

```haxe
var s3d(default, null):h3d.scene.Scene
```

Default 3D scene.

### s2d

```haxe
var s2d(default, null):h2d.Scene
```

Default 2D scene.

### sevents

```haxe
var sevents(default, null):SceneEvents
```

Input event listener collection.
Both 2D and 3D scenes are added to it by default.

## Methods

### setScene

```haxe
function setScene(scene:InteractiveScene, ?disposePrevious:Bool = true):Void
```

Switch either the 2d or 3d scene with another instance, both in terms of rendering and event handling.
If you call disposePrevious, it will call dispose() on the previous scene.

### setCurrent

```haxe
function setCurrent():Void
```

* When using multiple hxd.App, this will set the current App (the one on which update etc. will be called)

### render

```haxe
function render(e:h3d.Engine):Void
```
