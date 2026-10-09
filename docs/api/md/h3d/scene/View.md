# h3d.scene.View

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.RenderContext` · source [`h3d/scene/RenderContext.hx`](../../../../../h3d/scene/RenderContext.hx)

A rendering view: the frustum used to cull objects for the current view (see `RenderContext.currentView`).
Renderers drawing several views (for instance shadow cascades) change it temporarily.

## Constructor

### new

```haxe
function new(idx:Int):Void
```

Creates a view with the given index.

## Variables

### idx

```haxe
var idx:Int
```

The index of the view.

### frustum

```haxe
var frustum:h3d.col.Frustum
```

The frustum used to cull the objects of this view.
