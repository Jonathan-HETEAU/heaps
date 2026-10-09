# h3d.scene.PassObjects

**class** · package [`h3d.scene`](README.md) · module `h3d.scene.Renderer` · source [`h3d/scene/Renderer.hx`](../../../../../h3d/scene/Renderer.hx)

The list of draw passes emitted for one pass name (such as `"default"`, `"alpha"` or `"shadow"`) during a frame,
handed to the `Renderer` by the `Scene`.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty pass list.

## Variables

### name

```haxe
var name:String
```

The pass name, matching `h3d.mat.Pass.name`.

### passes

```haxe
var passes:h3d.pass.PassList
```

The object passes to draw for this pass name.

### rendered

```haxe
var rendered:Bool
```

Set to `true` when the renderer retrieved these passes. In debug builds, the scene traces a warning for passes left unrendered (see `Scene.checkPasses`).
