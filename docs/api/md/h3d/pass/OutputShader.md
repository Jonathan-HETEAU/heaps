# h3d.pass.OutputShader

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/OutputShader.hx`](../../../../../h3d/pass/OutputShader.hx)

Links the shaders of a pass with an output shader writing the given values to the render targets.

## Constructor

### new

```haxe
function new(?output:Array<hxsl.Output>):Void
```

Creates the linker for the given outputs (`output.color` by default).

## Methods

### setOutput

```haxe
function setOutput(?output:Array<hxsl.Output>, ?vertexOutputName:String):Void
```

Changes the outputs (`output.color` by default).

### compileShaders

```haxe
function compileShaders(globals:hxsl.Globals, shaders:hxsl.ShaderList, ?mode:hxsl.LinkMode = Default):hxsl.RuntimeShader
```

Links `shaders` with the output shader and returns the compiled shader (cached).
