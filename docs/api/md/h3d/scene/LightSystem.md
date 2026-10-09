# h3d.scene.LightSystem

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/LightSystem.hx`](../../../../../h3d/scene/LightSystem.hx)

Subclasses: [`h3d.scene.fwd.LightSystem`](fwd/LightSystem.md), [`h3d.scene.pbr.LightSystem`](pbr/LightSystem.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### drawPasses

```haxe
var drawPasses:Int
```

### shadowLight

```haxe
var shadowLight:Light
```

## Methods

### initGlobals

```haxe
function initGlobals(globals:hxsl.Globals):Void
```

### initLights

```haxe
function initLights(ctx:RenderContext):Void
```

### computeLight

```haxe
function computeLight(obj:Object, shaders:hxsl.ShaderList):hxsl.ShaderList
```

### dispose

```haxe
function dispose():Void
```
