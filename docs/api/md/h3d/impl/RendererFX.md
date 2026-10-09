# h3d.impl.RendererFX

**interface** · package [`h3d.impl`](README.md) · source [`h3d/impl/RendererFX.hx`](../../../../../h3d/impl/RendererFX.hx)

Implemented by: [`h3d.pass.SSR`](../pass/SSR.md)

## Variables

### enabled

```haxe
var enabled:Bool
```

## Methods

### start

```haxe
function start(r:h3d.scene.Renderer):Void
```

### begin

```haxe
function begin(r:h3d.scene.Renderer, step:Step):Void
```

### end

```haxe
function end(r:h3d.scene.Renderer, step:Step):Void
```

### dispose

```haxe
function dispose():Void
```

### modulate

```haxe
function modulate(t:Float):RendererFX
```

### transition

```haxe
function transition(r1:RendererFX, r2:RendererFX):RFXTransition
```
