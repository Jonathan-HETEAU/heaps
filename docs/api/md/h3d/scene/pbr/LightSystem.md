# h3d.scene.pbr.LightSystem

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/LightSystem.hx`](../../../../../../h3d/scene/pbr/LightSystem.hx)

Extends: [`h3d.scene.LightSystem`](../LightSystem.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### lightBuffer

```haxe
var lightBuffer:LightBuffer
```

### forwardMode

```haxe
var forwardMode:Bool
```

### lightingShaders

```haxe
var lightingShaders:Array<hxsl.Shader>
```

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

### drawScreenLights

```haxe
function drawScreenLights(r:h3d.scene.Renderer, lightPass:h3d.pass.ScreenFx<Dynamic>, ?shadows:Bool = true):Void
```

### dispose

```haxe
override function dispose():Void
```

## Inherited members

- from [`h3d.scene.LightSystem`](../LightSystem.md): `drawPasses`, `shadowLight`, `initGlobals`, `initLights`, `computeLight`, `dispose`
