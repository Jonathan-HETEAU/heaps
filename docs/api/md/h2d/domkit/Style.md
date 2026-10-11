# h2d.domkit.Style

**class** · package [`h2d.domkit`](README.md) · source [`h2d/domkit/Style.hx`](../../../../../h2d/domkit/Style.hx)

Extends: `domkit.CssStyle`

The CSS style sheets applied to domkit components. Add the root objects with `addObject` and call `sync` every frame.
With `allowInspect`, the components can be inspected in the application with the middle mouse button.

## Constructor

### new

```haxe
function new():Void
```

Creates a style with the registered CSS resources.

## Static methods

### registerCSS

```haxe
static function registerCSS(res:hxd.res.Resource):hxd.res.Resource
```

Registers a CSS resource loaded by every new style.

## Variables

### allowInspect

```haxe
var allowInspect(default, set):Bool
```

Enables the inspector: a middle click toggles the display of the component under the mouse and its CSS properties (with `inspectDetailsKeyCode` down, it shows the details panel). The mouse wheel selects the parent or child component.

### inspectKeyCode

```haxe
var inspectKeyCode:Int
```

If not `0`, the key that must be held down to use the inspector.

### inspectDetailsKeyCode

```haxe
var inspectDetailsKeyCode:Int
```

The key to hold while clicking to show the details panel of the inspector.

### s3d

```haxe
var s3d:h3d.scene.Scene
```

The 3D scene: the inspector is disabled while its renderer is debugging.

### cssParser

```haxe
var cssParser:domkit.CssParser
```

The parser of the CSS files, which keeps the CSS variables.

### onInspectHyperlink

```haxe
var onInspectHyperlink:() -> Void
```

Called when a link of the inspector details panel is clicked.

### inspectModeActive

```haxe
var inspectModeActive(default, null):Bool
```

Tells if the inspector is currently displayed.

## Methods

### load

```haxe
function load(r:hxd.res.Resource, ?watchChanges:Bool = true, ?isVariablesDef:Bool = false):Void
```

Loads a CSS (or LESS) resource and applies it. If `watchChanges` is set, the style is reloaded when the file changes. If `isVariablesDef` is set, the variables it defines are kept for the next loaded files.

### loadComponents

```haxe
function loadComponents(path:String, ?globals:Array<hxd.res.Resource>):Void
```

Loads all the `.less` files of the resource directory, after the `globals` files defining the shared variables.

### stopWatchInterpComponents

```haxe
function stopWatchInterpComponents():Void
```

Stops the live reloading of the components code.

### watchInterpComponents

```haxe
function watchInterpComponents(?customRebuild:Dynamic):Void
```

Enables the live reloading of the components code with hscript: when a component class changes, its instances are rebuilt with `customRebuild` (by default, the `rebuild` method of the closest parent that has one).

### unload

```haxe
function unload(r:hxd.res.Resource):Void
```

Removes a CSS resource.

### clear

```haxe
override function clear():Void
```

### addObject

```haxe
function addObject(obj:h2d.Object):Void
```

Applies the style to the object and its children, and keeps them updated.

### removeObject

```haxe
function removeObject(obj:h2d.Object):Void
```

Stops applying the style to the object.

### sync

```haxe
function sync(?dt:Float):Int
```

Returns number of dom elements that were updated

### onReload

```haxe
dynamic function onReload():Void
```

Called when the CSS files are reloaded.
