# h2d.Dropdown

**class** · package [`h2d`](README.md) · source [`h2d/Dropdown.hx`](../../../../h2d/Dropdown.hx)

Extends: [`h2d.Flow`](Flow.md) → [`h2d.Object`](Object.md)

A simple UI component that creates an interactive drop-down list.

Dropdown will add an `h2d.Flow` to the `Scene` when opening in order to be visible above other objects. See `Dropdown.dropdownLayer` for more details.

There is no handling of user input on items, and implementation of selection and other actions is up to the user.

Note that when `dropdownList` opens and closes, item objects will receive the `onHierarchyChanged` callback.

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new Dropdown with given parent.
- **param** `parent` An optional parent `h2d.Object` instance to which Dropdown adds itself if set.

## Variables

### tileOverItem

```haxe
var tileOverItem(default, set):Tile
```

A background Tile that is shown when user hover over an item in the dropdown list.

The tile will be stretched to cover full row width and item height during rendering.

### tileArrow

```haxe
var tileArrow(default, set):Tile
```

A Tile used to visualize an arrow of the dropdown when the list is closed.

### tileArrowOpen

```haxe
var tileArrowOpen:Tile
```

A Tile used to visualize and arrow of the dropdown when the list is open.

### canEdit

```haxe
var canEdit(default, set):Bool
```

When disabled, the user would not be able to change the selected item.

### dropdownList

```haxe
var dropdownList:Flow
```

A reference to the Flow that will contain the items.

### dropdownLayer

```haxe
var dropdownLayer:Int
```

A Scene layer to which `dropdownList` will be added when opening dropdown.

### selectedItem

```haxe
var selectedItem(default, set):Int
```

Currently selected item index. To deselect an item, set it to `-1`.

### highlightedItem

```haxe
var highlightedItem(default, null):Int
```

Currently highlighted item index.

### rollUp

```haxe
var rollUp:Bool
```

When enabled, the dropdown list will appear above the dropdown.

## Methods

### addItem

```haxe
function addItem(s:Object):Void
```

Adds the Object `s` to the dropdown list. `s` is not restricted to be the same type across all items.

### open

```haxe
function open():Void
```

Programmatically opens the dropdown, showing the dropdown list.

### close

```haxe
function close():Void
```

Programmatically closes the dropdown, hiding the dropdown list.

### onOpen

```haxe
dynamic function onOpen():Void
```

Sent when dropdown is being opened. Triggered both by user input and programmatic action via `Dropdown.open`.

### onClose

```haxe
dynamic function onClose():Void
```

Sent when dropdown is being closed. Triggered both by user input and programmatic action via `Dropdown.close`.

### onChange

```haxe
dynamic function onChange(item:Object):Void
```

Sent when user change the item in the list.
- **param** `item` An object that was hovered.

### onOverItem

```haxe
dynamic function onOverItem(item:Object):Void
```

Sent when user hovers over an item in the dropdown list.
- **param** `item` An object that was hovered.

### onOutItem

```haxe
dynamic function onOutItem(item:Object):Void
```

Sent when user moves mouse away from an item in the dropdown list.
- **param** `item` An item that was hovered previously.

## Inherited members

- from [`h2d.Flow`](Flow.md): `needReflow`, `horizontalAlign`, `verticalAlign`, `minWidth`, `minHeight`, `maxWidth`, `maxHeight`, `lineHeight`, `colWidth`, `overflow`, `padding`, `paddingHorizontal`, `paddingVertical`, `paddingLeft`, `paddingRight`, `paddingTop`, `paddingBottom`, `horizontalSpacing`, `verticalSpacing`, `enableInteractive`, `interactive`, `backgroundTile`, `borderWidth`, `borderLeft`, `borderRight`, `borderHeight`, `borderTop`, `borderBottom`, `innerWidth`, `innerHeight`, `outerWidth`, `outerHeight`, `layout`, `isInline`, `debug`, `multiline`, `reverse`, `fillWidth`, `fillHeight`, `scrollBar`, `scrollBarCursor`, `scrollWheelSpeed`, `scrollPosY`, `getProperties`, `addSpacing`, `addChildAt`, `scrollIntoView`, `removeChild`, `removeChildren`, `makeBackground`, `reflow`, `onBeforeReflow`, `onAfterReflow`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
