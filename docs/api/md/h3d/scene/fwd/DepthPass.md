# h3d.scene.fwd.DepthPass

**class** · package [`h3d.scene.fwd`](README.md) · module `h3d.scene.fwd.Renderer` · source [`h3d/scene/fwd/Renderer.hx`](../../../../../../h3d/scene/fwd/Renderer.hx)

Extends: [`h3d.pass.Output`](../../pass/Output.md)

Renders the objects having a `"depth"` pass into the `depthMap` shader global (a packed depth texture).

## Constructor

### new

```haxe
function new():Void
```

Creates the depth pass.

## Variables

### enableSky

```haxe
var enableSky:Bool
```

If `true`, the depth texture is cleared to zero instead of the maximum depth.

## Methods

### draw

```haxe
override function draw(passes:h3d.pass.PassList, ?sort:() -> Void):Void
```

## Inherited members

- from [`h3d.pass.Output`](../../pass/Output.md): `name`, `setContext`, `dispose`, `draw`
