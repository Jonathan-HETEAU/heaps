# h3d.pass.ProjectedShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/ProjectedShadowMap.hx`](../../../../../h3d/pass/ProjectedShadowMap.hx)

Extends: [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

Subclasses: [`h3d.pass.RectangleShadowMap`](RectangleShadowMap.md), [`h3d.pass.SpotShadowMap`](SpotShadowMap.md)

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

## Methods

### getShadowTex

```haxe
override function getShadowTex():hxsl.Texture
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
