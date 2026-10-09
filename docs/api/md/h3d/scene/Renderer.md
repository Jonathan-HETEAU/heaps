# h3d.scene.Renderer

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/Renderer.hx`](../../../../../h3d/scene/Renderer.hx)

Extends: [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md)

Subclasses: [`h3d.scene.fwd.Renderer`](fwd/Renderer.md), [`h3d.scene.pbr.Renderer`](pbr/Renderer.md)

## Constructor

### new

```haxe
function new():Void
```

## Variables

### effects

```haxe
var effects:Array<h3d.impl.RendererFX>
```

### renderMode

```haxe
var renderMode:RenderMode
```

### shadows

```haxe
var shadows:Bool
```

## Methods

### getEffect

```haxe
function getEffect(cl:Class<getEffect.T>):getEffect.T
```

### dispose

```haxe
function dispose():Void
```

### addShader

```haxe
function addShader(s:hxsl.Shader):Void
```

Inject a post process shader for the current frame. Shaders are reset after each render.

### getPass

```haxe
function getPass(c:Class<getPass.T>):getPass.T
```

### getPassByName

```haxe
function getPassByName(name:String):h3d.pass.Output
```

### start

```haxe
function start():Void
```

### startEffects

```haxe
function startEffects():Void
```

### process

```haxe
function process(passes:Array<PassObjects>):Void
```

### computeDispatch

```haxe
function computeDispatch(shader:Null<hxsl.Shader>, ?x:Int = 1, ?y:Int = 1, ?z:Int = 1):Void
```

## Inherited members

- from [`hxd.impl.AnyProps`](../../hxd/impl/AnyProps.md): `props`, `setDefaultProps`, `getDefaultProps`, `loadProps`, `refreshProps`
