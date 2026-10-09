# h2d.ZGroup

**class** · package [`h2d`](README.md) · source [`h2d/ZGroup.hx`](../../../../h2d/ZGroup.hx)

Extends: [`h2d.Layers`](Layers.md) → [`h2d.Object`](Object.md)

An advanced double-pass rendering class that utilizes a z-culling on an opaque objects.

For optimization to work properly, all opaque objects should have `Object.blendMode` set to `None`.

Rendering is done in two passes:
* An opaque pass only renders objects with `blendeMode = None`, with `RenderContext.front2back` and `RenderContext.killAlpha` enabled.
* Transparent pass renders the rest of the objects (which are not marked as opaque) as usual.

That allows to perform a z-cull depth test on the objects and reduce the overall GPU strain.

Additionally, ZGroup places a limitation on filter usage. They are not drawn in opaque pass, which can lead to undefined behavior.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new ZGroup instance/
- **param** `parent` An optional parent `h2d.Object` instance to which ZGroup adds itself if set.

## Inherited members

- from [`h2d.Layers`](Layers.md): `addChild`, `add`, `addChildAt`, `removeChild`, `under`, `over`, `getLayer`, `getChildAtLayer`, `getChildLayer`, `getChildIndexInLayer`, `ysort`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
