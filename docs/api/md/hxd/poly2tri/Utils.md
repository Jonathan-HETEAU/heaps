# hxd.poly2tri.Utils

**class** · package [`hxd.poly2tri`](README.md) · source [`hxd/poly2tri/Utils.hx`](../../../../../hxd/poly2tri/Utils.hx)

## Static methods

### insideIncircle

```haxe
static function insideIncircle(pa:Point, pb:Point, pc:Point, pd:Point):Bool
```

* <b>Requirement</b>:<br>
* 1. a, b and c form a triangle.<br>
* 2. a and d is know to be on opposite side of bc<br>
* <pre>
*                a
*                +
*               / \
*              /   \
*            b/     \c
*            +-------+
*           /    d    \
*          /           \
* </pre>
* <b>Fact</b>: d has to be in area B to have a chance to be inside the circle formed by
*  a,b and c<br>
*  d is outside B if orient2d(a,b,d) or orient2d(c,a,d) is CW<br>
*  This preknowledge gives us a way to optimize the incircle test
* @param pa - triangle point, opposite d
* @param pb - triangle point
* @param pc - triangle point
* @param pd - point opposite a
* @return true if d is inside circle, false if on circle edge

### inScanArea

```haxe
static function inScanArea(pa:Point, pb:Point, pc:Point, pd:Point):Bool
```
