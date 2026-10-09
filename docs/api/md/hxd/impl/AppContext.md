# hxd.impl.AppContext

**class** · package [`hxd.impl`](README.md) · source [`hxd/impl/AppContext.hx`](../../../../../hxd/impl/AppContext.hx) · available on hl/sdl, hl/directx

Create an app context to allow multiple apps to run in parallel.
Requires compilation with -D multidriver

## Constructor

### new

```haxe
function new(app:hxd.App):Void
```

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

### engine

```haxe
var engine:h3d.Engine
```

### app

```haxe
var app:hxd.App
```

## Methods

### update

```haxe
function update():Void
```
