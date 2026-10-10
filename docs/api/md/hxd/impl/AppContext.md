# hxd.impl.AppContext

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/AppContext.hx`](../../../../../hxd/impl/AppContext.hx) · available on hl/sdl, hl/directx

Create an app context to allow multiple apps to run in parallel.
Requires compilation with -D multidriver

## Constructor

### new

```haxe
function new(app:hxd.App):Void
```

Creates the context of the application, for its current window and engine. All the contexts are updated by the main loop.

## Static methods

### reset

```haxe
static function reset():Void
```

### set

```haxe
static function set(app:hxd.App):Void
```

## Variables

### win

```haxe
var win:hxd.Window
```

The window of the application.

### engine

```haxe
var engine:h3d.Engine
```

The engine of the application.

### app

```haxe
var app:hxd.App
```

The application.

## Methods

### update

```haxe
function update():Void
```

Runs a frame of the application.
