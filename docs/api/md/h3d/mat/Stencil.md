# h3d.mat.Stencil

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Stencil.hx`](../../../../../h3d/mat/Stencil.hx)

The stencil buffer settings of a `Pass` (see `Pass.stencil`): the test performed against the stencil buffer and the
operations applied to it, separately for front and back faces.

```haxe
// write 1 in the stencil where the mask object is drawn
mask.material.mainPass.stencil = new h3d.mat.Stencil();
mask.material.mainPass.stencil.setFunc(Always, 1);
mask.material.mainPass.stencil.setOp(Keep, Keep, Replace);
```

## Constructor

### new

```haxe
function new():Void
```

Creates stencil settings which always pass and keep the stencil buffer unchanged.

## Static variables

### readMask_bits

```haxe
static inline var readMask_bits:Int = 8
```

### readMask_offset

```haxe
static inline var readMask_offset:Int = 0
```

### readMask_mask

```haxe
static inline var readMask_mask:Int = 255
```

### writeMask_bits

```haxe
static inline var writeMask_bits:Int = 8
```

### writeMask_offset

```haxe
static inline var writeMask_offset:Int = 8
```

### writeMask_mask

```haxe
static inline var writeMask_mask:Int = 65280
```

### reference_bits

```haxe
static inline var reference_bits:Int = 8
```

### reference_offset

```haxe
static inline var reference_offset:Int = 16
```

### reference_mask

```haxe
static inline var reference_mask:Int = 16711680
```

### frontTest_bits

```haxe
static inline var frontTest_bits:Int = 3
```

### frontTest_offset

```haxe
static inline var frontTest_offset:Int = 0
```

### frontTest_mask

```haxe
static inline var frontTest_mask:Int = 7
```

### frontPass_bits

```haxe
static inline var frontPass_bits:Int = 3
```

### frontPass_offset

```haxe
static inline var frontPass_offset:Int = 3
```

### frontPass_mask

```haxe
static inline var frontPass_mask:Int = 56
```

### frontSTfail_bits

```haxe
static inline var frontSTfail_bits:Int = 3
```

### frontSTfail_offset

```haxe
static inline var frontSTfail_offset:Int = 6
```

### frontSTfail_mask

```haxe
static inline var frontSTfail_mask:Int = 448
```

### frontDPfail_bits

```haxe
static inline var frontDPfail_bits:Int = 3
```

### frontDPfail_offset

```haxe
static inline var frontDPfail_offset:Int = 9
```

### frontDPfail_mask

```haxe
static inline var frontDPfail_mask:Int = 3584
```

### backTest_bits

```haxe
static inline var backTest_bits:Int = 3
```

### backTest_offset

```haxe
static inline var backTest_offset:Int = 12
```

### backTest_mask

```haxe
static inline var backTest_mask:Int = 28672
```

### backPass_bits

```haxe
static inline var backPass_bits:Int = 3
```

### backPass_offset

```haxe
static inline var backPass_offset:Int = 15
```

### backPass_mask

```haxe
static inline var backPass_mask:Int = 229376
```

### backSTfail_bits

```haxe
static inline var backSTfail_bits:Int = 3
```

### backSTfail_offset

```haxe
static inline var backSTfail_offset:Int = 18
```

### backSTfail_mask

```haxe
static inline var backSTfail_mask:Int = 1835008
```

### backDPfail_bits

```haxe
static inline var backDPfail_bits:Int = 3
```

### backDPfail_offset

```haxe
static inline var backDPfail_offset:Int = 21
```

### backDPfail_mask

```haxe
static inline var backDPfail_mask:Int = 14680064
```

## Static methods

### getReadMask

```haxe
static inline function getReadMask(v:Int):Int
```

### getWriteMask

```haxe
static inline function getWriteMask(v:Int):Int
```

### getReference

```haxe
static inline function getReference(v:Int):Int
```

### getFrontTest

```haxe
static inline function getFrontTest(v:Int):Int
```

### getFrontPass

```haxe
static inline function getFrontPass(v:Int):Int
```

### getFrontSTfail

```haxe
static inline function getFrontSTfail(v:Int):Int
```

### getFrontDPfail

```haxe
static inline function getFrontDPfail(v:Int):Int
```

### getBackTest

```haxe
static inline function getBackTest(v:Int):Int
```

### getBackPass

```haxe
static inline function getBackPass(v:Int):Int
```

### getBackSTfail

```haxe
static inline function getBackSTfail(v:Int):Int
```

### getBackDPfail

```haxe
static inline function getBackDPfail(v:Int):Int
```

## Variables

### readMask

```haxe
var readMask(default, set):Int
```

The bits of the stencil value and reference compared by the test.

### writeMask

```haxe
var writeMask(default, set):Int
```

The bits of the stencil buffer which can be modified.

### reference

```haxe
var reference(default, set):Int
```

The reference value used by the test and the `Replace` operation.

### frontTest

```haxe
var frontTest(default, set):Compare
```

The stencil test of front faces.

### frontPass

```haxe
var frontPass(default, set):StencilOp
```

The operation on front faces when both the stencil and depth tests pass.

### frontSTfail

```haxe
var frontSTfail(default, set):StencilOp
```

The operation on front faces when the stencil test fails.

### frontDPfail

```haxe
var frontDPfail(default, set):StencilOp
```

The operation on front faces when the stencil test passes but the depth test fails.

### backTest

```haxe
var backTest(default, set):Compare
```

The stencil test of back faces.

### backPass

```haxe
var backPass(default, set):StencilOp
```

The operation on back faces when both the stencil and depth tests pass.

### backSTfail

```haxe
var backSTfail(default, set):StencilOp
```

The operation on back faces when the stencil test fails.

### backDPfail

```haxe
var backDPfail(default, set):StencilOp
```

The operation on back faces when the stencil test passes but the depth test fails.

## Methods

### setFront

```haxe
function setFront(stfail:StencilOp, dpfail:StencilOp, pass:StencilOp):Void
```

Sets the operations of front faces.
- **param** `stfail` When the stencil test fails.
- **param** `dpfail` When the stencil test passes but the depth test fails.
- **param** `pass` When both tests pass.

### setBack

```haxe
function setBack(stfail:StencilOp, dpfail:StencilOp, pass:StencilOp):Void
```

Sets the operations of back faces. See `setFront`.

### setOp

```haxe
function setOp(stfail:StencilOp, dpfail:StencilOp, pass:StencilOp):Void
```

Sets the operations of both front and back faces. See `setFront`.

### setFunc

```haxe
function setFunc(f:Compare, ?reference:Int = 0, ?readMask:Int = 0xFF, ?writeMask:Int = 0xFF):Void
```

Sets the stencil test of both front and back faces, with its reference value and masks.

### clone

```haxe
function clone():Stencil
```

Returns a copy of the settings.

### load

```haxe
function load(s:Stencil):Void
```

Copies the settings of `s`.
