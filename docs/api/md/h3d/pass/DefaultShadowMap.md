# h3d.pass.DefaultShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/DefaultShadowMap.hx`](../../../../../h3d/pass/DefaultShadowMap.hx)

Extends: [`h3d.pass.DirShadowMap`](DirShadowMap.md) → [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

## Constructor

### new

```haxe
function new(?size:Int = 1024, ?format:hxd.PixelFormat):Void
```

## Variables

### color

```haxe
var color:h3d.Vector
```

## Methods

### draw

```haxe
override function draw(passes:PassList, ?sort:() -> Void):Void
```

## Inherited members

- from [`h3d.pass.DirShadowMap`](DirShadowMap.md): `autoShrink`, `autoZPlanes`, `maxDist`, `minDist`, `dispose`, `getShadowTex`, `calcShadowBounds`, `saveStaticData`, `loadStaticData`, `draw`, `computeStatic`
- from [`h3d.pass.Shadows`](Shadows.md): `enabled`, `mode`, `size`, `shader`, `blur`, `samplingKind`, `power`, `bias`, `pcfScale`, `dispose`, `getShadowView`, `getShadowProj`, `getShadowViewProj`, `getShadowTex`, `loadStaticData`, `saveStaticData`, `computeStatic`, `hasStaticShadow`, `needStaticUpdate`, `debug`
- from [`h3d.pass.Output`](Output.md): `name`, `setContext`, `dispose`, `draw`
