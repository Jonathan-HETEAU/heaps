# h3d.scene.fwd.LightSystem

**class** · package [`h3d.scene.fwd`](README.md) · source [`h3d/scene/fwd/LightSystem.hx`](../../../../../../h3d/scene/fwd/LightSystem.hx)

Extends: [`h3d.scene.LightSystem`](../LightSystem.md)

The light system of the forward renderer: each object is drawn with the ambient light and up to
`maxLightsPerObject` lights shaders.

## Constructor

### new

```haxe
function new():Void
```

Creates the light system.

## Variables

### maxLightsPerObject

```haxe
var maxLightsPerObject:Int
```

The maximum number of lights applied to an object. When there are more lights, the lights with the highest
`Light.priority` are kept first, then the lights nearest to the object (or to the camera target for objects
with `Object.lightCameraCenter`).

### perPixelLighting

```haxe
var perPixelLighting:Bool
```

Computes the lighting per pixel. If `false`, it is computed per vertex (faster, less precise).

### ambientLight

```haxe
var ambientLight(default, null):h3d.Vector
```

The ambient light color, added to all the lit objects (`0.5, 0.5, 0.5` by default). Modify its components.

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
