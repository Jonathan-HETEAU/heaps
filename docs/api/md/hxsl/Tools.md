# hxsl.Tools

**class** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

## Static variables

### SWIZ

```haxe
static var SWIZ:Array<Component>
```

### MAX_CHANNELS_BITS

```haxe
static var MAX_CHANNELS_BITS:Int
```

### MAX_PARTIAL_MAPPINGS_BITS

```haxe
static var MAX_PARTIAL_MAPPINGS_BITS:Int
```

## Static methods

### allocVarId

```haxe
static function allocVarId():Int
```

### getTexUVSize

```haxe
static function getTexUVSize(dim:TexDimension, ?arr:Bool = false):Int
```

### getDimSize

```haxe
static function getDimSize(dim:TexDimension, ?arr:Bool = false):Int
```

### getName

```haxe
static function getName(v:TVar):String
```

### getDoc

```haxe
static function getDoc(v:TVar):Null<String>
```

### getEnum

```haxe
static function getEnum(v:TVar):Null<{ path:String, constructors:Array<String> }>
```

### getConstBits

```haxe
static function getConstBits(v:TVar):Int
```

### isConst

```haxe
static function isConst(v:TVar):Bool
```

### isFinalConst

```haxe
static function isFinalConst(v:TVar):Bool
```

### isFinalInt

```haxe
static function isFinalInt(v:TVar):Bool
```

### isStruct

```haxe
static function isStruct(v:TVar):Bool
```

### isArray

```haxe
static function isArray(v:TVar):Bool
```

### hasQualifier

```haxe
static function hasQualifier(v:TVar, q:VarQualifier):Bool
```

### hasBorrowQualifier

```haxe
static function hasBorrowQualifier(v:TVar, path:String):Bool
```

### isTexture

```haxe
static function isTexture(t:Type):Bool
```

### toString

```haxe
static function toString(t:Type):String
```

### toType

```haxe
static function toType(t:VecType):Type
```

### hasSideEffect

```haxe
static function hasSideEffect(e:TExpr):Bool
```

### iter

```haxe
static function iter(e:TExpr, f:() -> Void):Void
```

### map

```haxe
static inline function map(e:TExpr, f:() -> TExpr):TExpr
```

### size

```haxe
static function size(t:Type):Int
```

### evalConst

```haxe
static function evalConst(e:TExpr):Dynamic
```
