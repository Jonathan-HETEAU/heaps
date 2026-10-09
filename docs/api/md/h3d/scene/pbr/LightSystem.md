# h3d.scene.pbr.LightSystem

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/LightSystem.hx`](../../../../../../h3d/scene/pbr/LightSystem.hx)

Extends: [`h3d.scene.LightSystem`](../LightSystem.md)

The light system of the PBR renderer. Lights are applied in a deferred lighting pass, except for the objects drawn
in the forward passes, which read the lights from `lightBuffer`.

## Constructor

### new

```haxe
function new():Void
```

Creates the light system.

## Variables

### lightBuffer

```haxe
var lightBuffer:LightBuffer
```

The buffer of lights used by the forward passes.

### forwardMode

```haxe
var forwardMode:Bool
```

`true` while the renderer draws the forward passes.

### lightingShaders

```haxe
var lightingShaders:Array<hxsl.Shader>
```

Additional shaders applied with each light in the lighting pass.

## Methods

### initGlobals

```haxe
override function initGlobals(globals:hxsl.Globals):Void
```

### computeLight

```haxe
override function computeLight(obj:h3d.scene.Object, shaders:hxsl.ShaderList):hxsl.ShaderList
```

### drawShadows

```haxe
function drawShadows(light:Light, passes:h3d.pass.PassList):Void
```

Draws the shadow map of `light` with the given shadow casters.

### drawScreenLights

```haxe
function drawScreenLights(r:h3d.scene.Renderer, lightPass:h3d.pass.ScreenFx<Dynamic>, ?shadows:Bool = true):Void
```

Draws the lights without volume (such as directional lights) as full screen passes.
- **param** `shadows` If `false`, the shadows of these lights are ignored.

### dispose

```haxe
override function dispose():Void
```

## Inherited members

- from [`h3d.scene.LightSystem`](../LightSystem.md): `drawPasses`, `shadowLight`, `initGlobals`, `initLights`, `computeLight`, `dispose`
