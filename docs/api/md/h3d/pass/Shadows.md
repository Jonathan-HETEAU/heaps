# h3d.pass.Shadows

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Shadows.hx`](../../../../../h3d/pass/Shadows.hx)

Extends: [`h3d.pass.Output`](Output.md)

Subclasses: [`h3d.pass.CascadeShadowMap`](CascadeShadowMap.md), [`h3d.pass.CubeShadowMap`](CubeShadowMap.md), [`h3d.pass.DirShadowMap`](DirShadowMap.md), [`h3d.pass.ProjectedShadowMap`](ProjectedShadowMap.md)

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

## Variables

### enabled

```haxe
var enabled(default, set):Bool
```

### mode

```haxe
var mode(default, set):RenderMode
```

### size

```haxe
var size(default, set):Int
```

### shader

```haxe
var shader(default, null):hxsl.Shader
```

### blur

```haxe
var blur:Blur
```

### samplingKind

```haxe
var samplingKind:ShadowSamplingKind
```

### power

```haxe
var power:Float
```

### bias

```haxe
var bias:Float
```

### pcfScale

```haxe
var pcfScale:Float
```

### debug

```haxe
var debug:Bool
```

## Methods

### dispose

```haxe
override function dispose():Void
```

### getShadowView

```haxe
function getShadowView():h3d.Matrix
```

### getShadowProj

```haxe
function getShadowProj():h3d.Matrix
```

### getShadowViewProj

```haxe
function getShadowViewProj():h3d.Matrix
```

### getShadowTex

```haxe
function getShadowTex():h3d.mat.Texture
```

### loadStaticData

```haxe
function loadStaticData(bytes:Bytes):Bool
```

### saveStaticData

```haxe
function saveStaticData():Bytes
```

### computeStatic

```haxe
function computeStatic(passes:PassList):Void
```

### hasStaticShadow

```haxe
function hasStaticShadow():Bool
```

### needStaticUpdate

```haxe
function needStaticUpdate():Void
```

* Triggers update of static part of shadows (if any).

## Inherited members

- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
