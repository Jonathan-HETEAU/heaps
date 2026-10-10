# hxsl.GlslOut

**class** · package [`hxsl`](README.md) · source [`hxsl/GlslOut.hx`](../../../../hxsl/GlslOut.hx)

Subclasses: [`hxsl.NXGlslOut`](NXGlslOut.md)

Generates GLSL code (desktop GL or GLES/WebGL) from a flattened shader stage.

## Constructor

### new

```haxe
function new():Void
```

Creates a generator.

## Static methods

### compile

```haxe
static function compile(s:ShaderData):String
```

Returns the GLSL code of the shader stage, for WebGL on JS.

## Variables

### varNames

```haxe
var varNames:Map<Int, String>
```

The name of each variable in the generated code, by identifier.

### glES

```haxe
var glES:Null<Float>
```

The GLES version to target (WebGL), or `null` for desktop GL.

### version

```haxe
var version:Null<Int>
```

The GLSL version to target.

## Methods

### run

```haxe
function run(s:ShaderData):String
```

Returns the GLSL code of the shader stage.
