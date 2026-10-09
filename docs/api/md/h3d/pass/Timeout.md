# h3d.pass.Timeout

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/Timeout.hx`](../../../../../h3d/pass/Timeout.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Debug: renders a shader which never ends, to test the GPU timeout (device lost) handling.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Static methods

### run

```haxe
static function run():Void
```

Renders the endless shader using a shared instance.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
