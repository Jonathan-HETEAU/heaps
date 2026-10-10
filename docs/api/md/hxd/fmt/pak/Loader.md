# hxd.fmt.pak.Loader

**class** · package [`hxd.fmt.pak`](README.md) · source [`hxd/fmt/pak/Loader.hx`](../../../../../../hxd/fmt/pak/Loader.hx)

Extends: [`h2d.Object`](../../../h2d/Object.md)

A 2D progress bar loading the `res.pak`, `res1.pak`... archives (with HTTP on JS), then calling `onDone`.

## Constructor

### new

```haxe
function new(s2d:h2d.Scene, onDone:() -> Void):Void
```

Starts loading the archives into the current resource loader, displaying the progress in the scene.

## Inherited members

- from [`h2d.Object`](../../../h2d/Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
