# hxd.InteractiveScene

**interface** · package [`hxd`](README.md) · module `hxd.SceneEvents` · source [`hxd/SceneEvents.hx`](../../../../hxd/SceneEvents.hx)

Implemented by: [`h2d.Scene`](../h2d/Scene.md), [`h3d.scene.Scene`](../h3d/scene/Scene.md)

A scene which can receive events from `SceneEvents`, such as `h2d.Scene` and `h3d.scene.Scene`.

## Methods

### setEvents

```haxe
function setEvents(s:SceneEvents):Void
```

Called when the scene is added to or removed (with `null`) from a `SceneEvents`.

### handleEvent

```haxe
function handleEvent(e:Event, last:Interactive):Interactive
```

Returns the next interactive under the event position after `last` (or the first one if `last` is `null`), and sets the event position relative to it.

### dispatchEvent

```haxe
function dispatchEvent(e:Event, to:Interactive):Void
```

Sends the event to the interactive, with its position relative to it.

### dispatchListeners

```haxe
function dispatchListeners(e:Event):Void
```

Sends the event to the event listeners of the scene, when no interactive handled it.

### isInteractiveVisible

```haxe
function isInteractiveVisible(i:Interactive):Bool
```

Tells if the interactive is visible in the scene.
