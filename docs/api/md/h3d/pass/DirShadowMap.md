# h3d.pass.DirShadowMap

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/DirShadowMap.hx`](../../../../../h3d/pass/DirShadowMap.hx)

Extends: [`h3d.pass.Shadows`](Shadows.md) → [`h3d.pass.Output`](Output.md)

Subclasses: [`h3d.pass.DefaultShadowMap`](DefaultShadowMap.md)

## Constructor

### new

```haxe
function new(light:h3d.scene.Light):Void
```

## Variables

### autoShrink

```haxe
var autoShrink:Bool
```

Shrink the frustum of the light to the bounds containing all visible objects

### autoZPlanes

```haxe
var autoZPlanes:Bool
```

For top down lights and cameras, use scene Z min/max to optimize shadowmap. Requires autoShrink

### maxDist

```haxe
var maxDist:Float
```

Clamp the zFar of the frustum of the camera for bounds calculation

### minDist

```haxe
var minDist:Float
```

Clamp the zNear of the frustum of the camera for bounds calculation

## Methods

### dispose

```haxe
override function dispose():Void
```

### getShadowTex

```haxe
override function getShadowTex():hxsl.Texture
```

### calcShadowBounds

```haxe
dynamic function calcShadowBounds(camera:h3d.Camera):Void
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
