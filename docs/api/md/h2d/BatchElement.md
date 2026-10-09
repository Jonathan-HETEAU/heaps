# h2d.BatchElement

**class** · package [`h2d`](README.md) · module `h2d.SpriteBatch` · source [`h2d/SpriteBatch.hx`](../../../../h2d/SpriteBatch.hx)

Subclasses: [`h2d.BasicElement`](BasicElement.md)

A base class for `SpriteBatch` elements which can be extended with custom logic.

See `BasicElement` as an example of custom element logic.

## Constructor

### new

```haxe
function new(t:Tile):Void
```

Create a new BatchElement instance with provided Tile.
- **param** `t` The tile used to render this BatchElement.

## Variables

### x

```haxe
var x:Float
```

Element X position.

### y

```haxe
var y:Float
```

Element Y position.

### scale

```haxe
var scale(null, set):Float
```

Shortcut to set both `BatchElement.scaleX` and `BatchElement.scaleY` at the same time.

Equivalent to `el.scaleX = el.scaleY = scale`.

### scaleX

```haxe
var scaleX:Float
```

X-axis scaling factor of the element.

This variable is used only if `SpriteBatch.hasRotationScale` is set to `true`.

### scaleY

```haxe
var scaleY:Float
```

Y-axis scaling factor of the element.

This variable is used only if `SpriteBatch.hasRotationScale` is set to `true`.

### rotation

```haxe
var rotation:Float
```

Element rotation in radians.

This variable is used only if `SpriteBatch.hasRotationScale` is set to `true`.

### r

```haxe
var r:Float
```

Red tint value (0...1 range) of the element.

### g

```haxe
var g:Float
```

Green tint value (0...1 range) of the element.

### b

```haxe
var b:Float
```

Blue tint value (0...1 range) of the element.

### a

```haxe
var a:Float
```

Alpha value of the element.

### t

```haxe
var t:Tile
```

The Tile this element renders.

Due to implementation specifics, this Tile instance is used only to provide rendering area, not the Texture itself,
as `SpriteBatch.tile` used as a source of rendered texture.

### alpha

```haxe
var alpha(get, set):Float
```

Alpha value of the element.
Alias of `BatchElement.a`.

### visible

```haxe
var visible:Bool
```

If set to `false`, element will not be rendered.

### batch

```haxe
var batch(default, null):SpriteBatch
```

Reference to parent SpriteBatch instance.

## Methods

### remove

```haxe
function remove():Void
```

Remove this BatchElement from the parent SpriteBatch instance.
