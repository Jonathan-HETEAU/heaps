# hxd.InteractiveScene

**interface** · package [`hxd`](README.md) · module `hxd.SceneEvents` · source [`hxd/SceneEvents.hx`](../../../../hxd/SceneEvents.hx)

Implemented by: [`h2d.Scene`](../h2d/Scene.md), [`h3d.scene.Scene`](../h3d/scene/Scene.md)

## Methods

### setEvents

```haxe
function setEvents(s:SceneEvents):Void
```

### handleEvent

```haxe
function handleEvent(e:Event, last:Interactive):Interactive
```

### dispatchEvent

```haxe
function dispatchEvent(e:Event, to:Interactive):Void
```

### dispatchListeners

```haxe
function dispatchListeners(e:Event):Void
```

### isInteractiveVisible

```haxe
function isInteractiveVisible(i:Interactive):Bool
```
