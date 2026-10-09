# h2d.Scene3D

**class** · package [`h2d`](README.md) · source [`h2d/Scene3D.hx`](../../../../h2d/Scene3D.hx)

Extends: [`h2d.Flow`](Flow.md) → [`h2d.Object`](Object.md)

## Constructor

### new

```haxe
function new(?events:hxd.SceneEvents, ?parent:Object):Void
```

## Variables

### s2d

```haxe
var s2d:Scene
```

### s3d

```haxe
var s3d:h3d.scene.Scene
```

### deleteOnRemove

```haxe
var deleteOnRemove:Bool
```

### backgroundColor

```haxe
var backgroundColor:Null<Int>
```

### events

```haxe
var events(default, set):hxd.SceneEvents
```

## Methods

### onAfterReflow

```haxe
override dynamic function onAfterReflow():Void
```

## Inherited members

- from [`h2d.Flow`](Flow.md): `needReflow`, `horizontalAlign`, `verticalAlign`, `minWidth`, `minHeight`, `maxWidth`, `maxHeight`, `lineHeight`, `colWidth`, `overflow`, `padding`, `paddingHorizontal`, `paddingVertical`, `paddingLeft`, `paddingRight`, `paddingTop`, `paddingBottom`, `horizontalSpacing`, `verticalSpacing`, `enableInteractive`, `interactive`, `backgroundTile`, `borderWidth`, `borderLeft`, `borderRight`, `borderHeight`, `borderTop`, `borderBottom`, `innerWidth`, `innerHeight`, `outerWidth`, `outerHeight`, `layout`, `isInline`, `debug`, `multiline`, `reverse`, `fillWidth`, `fillHeight`, `scrollBar`, `scrollBarCursor`, `scrollWheelSpeed`, `scrollPosY`, `getProperties`, `addSpacing`, `addChildAt`, `scrollIntoView`, `removeChild`, `removeChildren`, `makeBackground`, `reflow`, `onBeforeReflow`, `onAfterReflow`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
