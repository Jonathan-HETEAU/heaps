# h3d.pass.Border

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Border.hx`](../../../../../h3d/pass/Border.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Draws a solid frame of `size` pixels along the edges of a `width` x `height` target (used for instance to avoid
sampling outside of shadow maps).

## Constructor

### new

```haxe
function new(width:Int, height:Int, ?size:Int = 1):Void
```

Creates a white border for a target of the given size.

## Methods

### render

```haxe
override function render():Void
```

### dispose

```haxe
override function dispose():Void
```

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
