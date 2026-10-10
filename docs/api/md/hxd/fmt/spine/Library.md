# hxd.fmt.spine.Library

**class** · package [`hxd.fmt.spine`](README.md) · source [`hxd/fmt/spine/Library.hx`](../../../../../../hxd/fmt/spine/Library.hx)

Loads a Spine skeleton from its JSON export: bones, slots, skins and animations. Inverse kinematics and slot animations are not supported.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty library.

## Variables

### bonesMap

```haxe
var bonesMap:Map<String, Bone>
```

The bones, by name.

### bones

```haxe
var bones:Array<Bone>
```

The bones, parents first.

### slots

```haxe
var slots:Array<Slot>
```

The slots, in draw order.

### defaultSkin

```haxe
var defaultSkin:Skin
```

The default skin.

### skins

```haxe
var skins:Map<String, Skin>
```

The skins, by name.

### animations

```haxe
var animations:Map<String, Animation>
```

The animations, by name.

## Methods

### loadText

```haxe
function loadText(j:String):Void
```

Loads the skeleton from the JSON text.

### load

```haxe
function load(j:JsonData):Void
```

Loads the skeleton from the parsed JSON data.
