# h3d.pass.CubeShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/CubeShadowMap.hx`](../../../../../h3d/pass/CubeShadowMap.hx)

Extends: [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

Subclasses: [`h3d.pass.CapsuleShadowMap`](CapsuleShadowMap.md), [`h3d.pass.PointShadowMap`](PointShadowMap.md)

Base class of the omnidirectional shadow maps: the shadows are rendered in the 6 faces of a cube texture around the light.

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

Creates the shadow map of `light`.

## Variables

### faceMask

```haxe
var faceMask(default, null):EnumFlags<CubeFaceFlag>
```

The faces which are rendered.

## Methods

### dispose

```haxe
override function dispose():Void
```

### saveStaticData

```haxe
override function saveStaticData():Null<Bytes>
```

### loadStaticData

```haxe
override function loadStaticData(bytes:Bytes):Bool
```

### draw

```haxe
override function draw(passes:PassList, ?sort:() -> Void):Void
```

### computeStatic

```haxe
override function computeStatic(passes:PassList):Void
```

## Inherited members

- from [`h3d.pass.Shadows`](Shadows.md): `enabled`, `mode`, `size`, `shader`, `blur`, `samplingKind`, `power`, `bias`, `pcfScale`, `dispose`, `getShadowView`, `getShadowProj`, `getShadowViewProj`, `getShadowTex`, `loadStaticData`, `saveStaticData`, `computeStatic`, `hasStaticShadow`, `needStaticUpdate`, `debug`
- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
