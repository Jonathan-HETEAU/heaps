# hxsl.GlslOut

**class** · package [`hxsl`](README.md) · source [`hxsl/GlslOut.hx`](../../../../hxsl/GlslOut.hx)

Subclasses: [`hxsl.NXGlslOut`](NXGlslOut.md)

## Constructor

### new

```haxe
function new():Void
```

## Static methods

### compile

```haxe
static function compile(s:ShaderData):String
```

In Heaps and DirectX, vertex output Z position is in [0,1] range
Whereas in OpenGL it's [-1, 1].
Given we have either [X, Y, 0, N] for zNear or [X, Y, F, F] for zFar,
this shader operation will map [0, 1] range to [-1, 1] for correct clipping.

## Variables

### varNames

```haxe
var varNames:Map<Int, String>
```

### glES

```haxe
var glES:Null<Float>
```

### version

```haxe
var version:Null<Int>
```

## Methods

### run

```haxe
function run(s:ShaderData):String
```
