# h3d.pass.SortByMaterial

**class** · package [`h3d.pass`](README.md) · source [`h3d/pass/SortByMaterial.hx`](../../../../../h3d/pass/SortByMaterial.hx)

Sorts draw passes by shader then texture, to minimize the GPU state changes.

## Constructor

### new

```haxe
function new():Void
```

Creates the sorter.

## Methods

### sort

```haxe
function sort(passes:PassList):Void
```

Sorts `passes` by shader then by texture.
