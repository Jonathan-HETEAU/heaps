# h3d.mat.Stencil

**class** · package [`h3d.mat`](README.md) · source [`h3d/mat/Stencil.hx`](../../../../../h3d/mat/Stencil.hx)

## Constructor

### new

```haxe
function new():Void
```

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

### writeMask

```haxe
var writeMask(default, set):Int
```

### reference

```haxe
var reference(default, set):Int
```

### frontTest

```haxe
var frontTest(default, set):Compare
```

### frontPass

```haxe
var frontPass(default, set):StencilOp
```

### frontSTfail

```haxe
var frontSTfail(default, set):StencilOp
```

### frontDPfail

```haxe
var frontDPfail(default, set):StencilOp
```

### backTest

```haxe
var backTest(default, set):Compare
```

### backPass

```haxe
var backPass(default, set):StencilOp
```

### backSTfail

```haxe
var backSTfail(default, set):StencilOp
```

### backDPfail

```haxe
var backDPfail(default, set):StencilOp
```

## Methods

### setFront

```haxe
function setFront(stfail:StencilOp, dpfail:StencilOp, pass:StencilOp):Void
```

### setBack

```haxe
function setBack(stfail:StencilOp, dpfail:StencilOp, pass:StencilOp):Void
```

### setOp

```haxe
function setOp(stfail:StencilOp, dpfail:StencilOp, pass:StencilOp):Void
```

### setFunc

```haxe
function setFunc(f:Compare, ?reference:Int = 0, ?readMask:Int = 0xFF, ?writeMask:Int = 0xFF):Void
```

### clone

```haxe
function clone():Stencil
```

### load

```haxe
function load(s:Stencil):Void
```
