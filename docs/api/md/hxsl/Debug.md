# hxsl.Debug

**class** · package [`hxsl`](README.md) · source [`hxsl/Debug.hx`](../../../../hxsl/Debug.hx)

Debug helpers of the shader compiler.

## Static variables

### VAR_IDS

```haxe
static var VAR_IDS:Bool
```

If set, the variable names are printed with their identifier (`-D shader_debug_var_ids`).

### TRACE

```haxe
static var TRACE:Bool
```

If set, the compiler traces its steps (`-D shader_debug_dump`).

## Static methods

### trace

```haxe
static function trace(str:Dynamic):Dynamic
```

Traces the string if `TRACE` is set.

### varName

```haxe
static function varName(v:TVar, ?swizBits:Int = 15):String
```

Returns the name of the variable, with the swizzled components if `swizBits` is not `15` (all of them).

### traceDepth

```haxe
static function traceDepth(str:Dynamic):Dynamic
```

Traces the string indented by the current depth, if `TRACE` is set.
