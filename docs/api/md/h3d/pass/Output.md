# h3d.pass.Output

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Output.hx`](../../../../../h3d/pass/Output.hx)

Subclasses: [`h3d.pass.Shadows`](Shadows.md), [`h3d.scene.fwd.DepthPass`](../scene/fwd/DepthPass.md), [`h3d.scene.fwd.NormalPass`](../scene/fwd/NormalPass.md)

## Constructor

### new

```haxe
function new(name:String, ?output:Array<hxsl.Output>):Void
```

## Static variables

### onShaderError

```haxe
static var onShaderError:(Dynamic, PassObject) -> Void
```

## Variables

### name

```haxe
var name(default, null):String
```

## Methods

### setContext

```haxe
function setContext(ctx:h3d.scene.RenderContext):Void
```

### dispose

```haxe
function dispose():Void
```

### draw

```haxe
function draw(passes:PassList, ?sort:() -> Void):Void
```
