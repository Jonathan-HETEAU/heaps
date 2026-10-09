# h3d.pass.Blur

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Blur.hx`](../../../../../h3d/pass/Blur.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

## Constructor

### new

```haxe
function new(?radius:Float = 1., ?gain:Float = 1., ?linear:Float = 0., ?quality:Float = 1.):Void
```

## Variables

### radius

```haxe
var radius(default, set):Float
```

How far in pixels the blur will go.

### gain

```haxe
var gain(default, set):Float
```

How much the blur increases or decreases the color amount (default = 1)

### linear

```haxe
var linear(default, set):Float
```

Set linear blur instead of gaussian (default = 0).

### quality

```haxe
var quality(default, set):Float
```

Adjust how much quality/speed tradeoff we want (default = 1)

### additive

```haxe
var additive:Bool
```

## Methods

### getKernelSize

```haxe
function getKernelSize():Int
```

### apply

```haxe
function apply(ctx:h3d.impl.RenderContext, src:h3d.mat.Texture, ?output:h3d.mat.Texture, ?layer:Int = 0):Void
```

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
