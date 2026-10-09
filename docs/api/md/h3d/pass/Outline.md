# h3d.pass.Outline

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Outline.hx`](../../../../../h3d/pass/Outline.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

## Constructor

### new

```haxe
function new(?size:Float = 4.0, ?color:Int = 0x000000, ?quality:Float = 0.3, ?multiplyAlpha:Bool = true):Void
```

## Variables

### size

```haxe
var size:Float
```

### color

```haxe
var color:Int
```

### alpha

```haxe
var alpha:Float
```

### quality

```haxe
var quality:Float
```

### multiplyAlpha

```haxe
var multiplyAlpha:Bool
```

## Methods

### apply

```haxe
function apply(ctx:h3d.impl.RenderContext, src:h3d.mat.Texture, ?output:h3d.mat.Texture):Void
```

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
