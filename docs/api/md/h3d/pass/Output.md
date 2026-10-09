# h3d.pass.Output

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Output.hx`](../../../../../h3d/pass/Output.hx)

Subclasses: [`h3d.pass.Shadows`](Shadows.md), [`h3d.scene.fwd.DepthPass`](../scene/fwd/DepthPass.md), [`h3d.scene.fwd.NormalPass`](../scene/fwd/NormalPass.md)

A render pass of a renderer: draws a list of object passes (`PassList`) to the current render target, linking each
object shaders with the output shader of the pass (which writes the given values, such as `output.color`, to the
targets).

## Constructor

### new

```haxe
function new(name:String, ?output:Array<hxsl.Output>):Void
```

Creates a pass.
- **param** `output` The values written to the render targets (`output.color` by default).

## Static variables

### onShaderError

```haxe
static var onShaderError:(Dynamic, PassObject) -> Void
```

If set, called when the driver fails to select the shader of an object (instead of throwing the error); the object is then skipped.

## Variables

### name

```haxe
var name(default, null):String
```

The name of the pass, matching the material pass names it draws (such as `"default"` or `"shadow"`).

## Methods

### setContext

```haxe
function setContext(ctx:h3d.scene.RenderContext):Void
```

Sets the render context used by the next `draw`. Done by the renderer.

### dispose

```haxe
function dispose():Void
```

Releases the resources of the pass.

### draw

```haxe
function draw(passes:PassList, ?sort:() -> Void):Void
```

Draws the object passes to the current target.
- **param** `sort` A function sorting the passes before drawing them (by material by default).
