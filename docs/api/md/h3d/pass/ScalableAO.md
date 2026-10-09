# h3d.pass.ScalableAO

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/ScalableAO.hx`](../../../../../h3d/pass/ScalableAO.hx)

Extends: [`h3d.pass.ScreenFx`](ScreenFx.md)

Scalable ambient obscurance: computes a screen space ambient occlusion from the depth and normal textures.

## Constructor

### new

```haxe
function new():Void
```

Creates the pass.

## Methods

### apply

```haxe
function apply(depthTexture:h3d.mat.Texture, normalTexture:h3d.mat.Texture, camera:h3d.Camera):Void
```

Renders the ambient occlusion to the current target.

## Inherited members

- from [`h3d.pass.ScreenFx`](ScreenFx.md): `shader`, `pass`, `primitive`, `addShader`, `removeShader`, `getShader`, `render`, `dispose`
