# h3d.pass.SSR

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/SSR.hx`](../../../../../h3d/pass/SSR.hx)

Implements: [`h3d.impl.RendererFX`](../impl/RendererFX.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### enabled

```haxe
var enabled:Bool
```

### stepCount

```haxe
var stepCount:Int
```

### fadeInExponent

```haxe
var fadeInExponent:Float
```

### fadeOutExponent

```haxe
var fadeOutExponent:Float
```

### depthTolerance

```haxe
var depthTolerance:Float
```

### distanceBias

```haxe
var distanceBias:Float
```

### distancePowerBias

```haxe
var distancePowerBias:Float
```

### marginSize

```haxe
var marginSize:Float
```

### debugEnabled

```haxe
var debugEnabled:Bool
```

### debugRoughnessFactor

```haxe
var debugRoughnessFactor:Float
```

### debugIteration

```haxe
var debugIteration:Int
```

### ssrResolve

```haxe
var ssrResolve:ScreenFx<h3d.shader.pbr.SSRResolve>
```

## Methods

### apply

```haxe
function apply(r:h3d.scene.pbr.Renderer):Void
```

### start

```haxe
function start(r:h3d.scene.Renderer):Void
```

### begin

```haxe
function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### end

```haxe
function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### dispose

```haxe
function dispose():Void
```

### modulate

```haxe
function modulate(t:Float):h3d.impl.RendererFX
```

### transition

```haxe
function transition(r1:h3d.impl.RendererFX, r2:h3d.impl.RendererFX):h3d.impl.RFXTransition
```
