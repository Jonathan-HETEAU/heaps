# h3d.scene.fwd.NormalPass

**class** · package [`h3d.scene.fwd`](README.md) · module `h3d.scene.fwd.Renderer` · source [`h3d/scene/fwd/Renderer.hx`](../../../../../../h3d/scene/fwd/Renderer.hx)

Extends: [`h3d.pass.Output`](../../pass/Output.md)

Renders the objects having a `"normal"` pass into the `normalMap` shader global (a packed normal texture).

## Constructor

### new

```haxe
function new():Void
```

Creates the normal pass.

## Methods

### draw

```haxe
override function draw(passes:h3d.pass.PassList, ?sort:() -> Void):Void
```

## Inherited members

- from [`h3d.pass.Output`](../../pass/Output.md): `name`, `setContext`, `dispose`, `draw`
