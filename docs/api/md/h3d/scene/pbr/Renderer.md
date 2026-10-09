# h3d.scene.pbr.Renderer

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/Renderer.hx`](../../../../../../h3d/scene/pbr/Renderer.hx)

Extends: [`h3d.scene.Renderer`](../Renderer.md) → [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md)

## Constructor

### new

```haxe
function new(?env:Environment):Void
```

## Static variables

### LIGHTMAP_STENCIL

```haxe
static final LIGHTMAP_STENCIL:Int
```

## Variables

### skyMode

```haxe
var skyMode:SkyMode
```

### toneMode

```haxe
var toneMode:TonemapMap
```

### displayMode

```haxe
var displayMode:DisplayMode
```

### env

```haxe
var env:Environment
```

### exposure

```haxe
var exposure(get, set):Float
```

### enableTransparency

```haxe
var enableTransparency:Bool
```

## Methods

### addShader

```haxe
override function addShader(s:hxsl.Shader):Void
```

### getPassByName

```haxe
override function getPassByName(name:String):h3d.pass.Output
```

### start

```haxe
override function start():Void
```

### updateHZB

```haxe
function updateHZB(?max:Bool = true):Void
```

### buildHZB

```haxe
function buildHZB(max:Bool, name:String):h3d.mat.Texture
```

### getPbrDepth

```haxe
function getPbrDepth():h3d.mat.Texture
```

### getDefaultProps

```haxe
override function getDefaultProps(?kind:String):Any
```

### refreshProps

```haxe
override function refreshProps():Void
```

## Inherited members

- from [`h3d.scene.Renderer`](../Renderer.md): `effects`, `renderMode`, `shadows`, `getEffect`, `dispose`, `addShader`, `getPass`, `getPassByName`, `start`, `startEffects`, `process`, `computeDispatch`
- from [`hxd.impl.AnyProps`](../../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
