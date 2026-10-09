# h3d.scene.fwd.LightSystem

**class** · package [`h3d.scene.fwd`](README.md) · source [`h3d/scene/fwd/LightSystem.hx`](../../../../../../h3d/scene/fwd/LightSystem.hx)

Extends: [`h3d.scene.LightSystem`](../LightSystem.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### maxLightsPerObject

```haxe
var maxLightsPerObject:Int
```

### perPixelLighting

```haxe
var perPixelLighting:Bool
```

### ambientLight

```haxe
var ambientLight(default, null):h3d.Vector
```

### additiveLighting

```haxe
var additiveLighting(get, set):Bool
```

In the additive lighting model (by default), the lights are added after the ambient.
In the new non additive ligthning model, the lights will be modulated against the ambient, so an ambient of 1 will reduce lights intensities to 0.

## Methods

### initLights

```haxe
override function initLights(ctx:h3d.scene.RenderContext):Void
```

### initGlobals

```haxe
override function initGlobals(globals:hxsl.Globals):Void
```

### computeLight

```haxe
override function computeLight(obj:h3d.scene.Object, shaders:hxsl.ShaderList):hxsl.ShaderList
```

## Inherited members

- from [`h3d.scene.LightSystem`](../LightSystem.md): `drawPasses`, `shadowLight`, `initGlobals`, `initLights`, `computeLight`, `dispose`
