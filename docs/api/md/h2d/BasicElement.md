# h2d.BasicElement

**class** · package [`h2d`](README.md) · module `h2d.SpriteBatch` · source [`h2d/SpriteBatch.hx`](../../../../h2d/SpriteBatch.hx)

Extends: [`h2d.BatchElement`](BatchElement.md)

A simple `BatchElement` that provides primitive simulation of velocity, friction and gravity.

Parent `SpriteBatch` should have `SpriteBatch.hasUpdate` set to `true` in order for BasicElement to work properly.

## Constructor

### new

```haxe
function new(t:Tile):Void
```

## Variables

### vx

```haxe
var vx:Float
```

X-axis velocity of the element.

### vy

```haxe
var vy:Float
```

Y-axis velocity of the element.

### friction

```haxe
var friction:Float
```

The velocity friction.
When not `1`, multiplies velocity by `pow(friction, dt * 60)`.

### gravity

```haxe
var gravity:Float
```

The gravity applied to vertical velocity in pixels per second.

## Inherited members

- from [`h2d.BatchElement`](BatchElement.md): `x`, `y`, `scale`, `scaleX`, `scaleY`, `rotation`, `r`, `g`, `b`, `a`, `t`, `alpha`, `visible`, `batch`, `remove`
