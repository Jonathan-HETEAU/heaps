# hxsl.Tools

**class** · package [`hxsl`](README.md) · module `hxsl.Ast` · source [`hxsl/Ast.hx`](../../../../hxsl/Ast.hx)

Helpers on the shader types, variables and expressions.

## Static variables

### SWIZ

```haxe
static var SWIZ:Array<Component>
```

All the components, in order.

### MAX_CHANNELS_BITS

```haxe
static var MAX_CHANNELS_BITS:Int
```

The number of bits used to encode the channel of a `TChannel` constant.

### MAX_PARTIAL_MAPPINGS_BITS

```haxe
static var MAX_PARTIAL_MAPPINGS_BITS:Int
```

The number of bits used to encode the mapping of a partial buffer.

## Static methods

### allocVarId

```haxe
static function allocVarId():Int
```

Returns a new unique variable identifier (negative for the variables created at compile time).

### getTexUVSize

```haxe
static function getTexUVSize(dim:TexDimension, ?arr:Bool = false):Int
```

Returns the number of coordinates to sample a texture of the given dimension (one more for an array).

### getDimSize

```haxe
static function getDimSize(dim:TexDimension, ?arr:Bool = false):Int
```

Returns the number of components of the size of a texture of the given dimension (one more for an array).

### getName

```haxe
static function getName(v:TVar):String
```

Returns the name of the variable in the generated code (its `Name` qualifier, or its name).

### getDoc

```haxe
static function getDoc(v:TVar):Null<String>
```

Returns the documentation of the variable (its `Doc` qualifier), or `null`.

### getEnum

```haxe
static function getEnum(v:TVar):Null<{ path:String, constructors:Array<String> }>
```

Returns the enum of the variable (its `Enum` qualifier), or `null`.

### getConstBits

```haxe
static function getConstBits(v:TVar):Int
```

Returns the number of bits used to encode the constant variable in the shader variant key.

### isConst

```haxe
static function isConst(v:TVar):Bool
```

Tells if the variable is a compile time constant.

### isFinalConst

```haxe
static function isFinalConst(v:TVar):Bool
```

Tells if the variable is a local `final` number or boolean.

### isFinalInt

```haxe
static function isFinalInt(v:TVar):Bool
```

Tells if the variable is a local `final` integer.

### isStruct

```haxe
static function isStruct(v:TVar):Bool
```

Tells if the variable is a structure.

### isArray

```haxe
static function isArray(v:TVar):Bool
```

Tells if the variable is an array.

### hasQualifier

```haxe
static function hasQualifier(v:TVar, q:VarQualifier):Bool
```

Tells if the variable has the qualifier.

### hasBorrowQualifier

```haxe
static function hasBorrowQualifier(v:TVar, path:String):Bool
```

Tells if the variable borrows the variables of the shader of the given path.

### isTexture

```haxe
static function isTexture(t:Type):Bool
```

Tells if the type is a texture (sampler or read-write texture).

### toString

```haxe
static function toString(t:Type):String
```

Returns the type as written in the shader source.

### toType

```haxe
static function toType(t:VecType):Type
```

Returns the scalar type of the vector components.

### hasSideEffect

```haxe
static function hasSideEffect(e:TExpr):Bool
```

Tells if evaluating the expression may have side effects (assignments, discards, function calls...).

### iter

```haxe
static function iter(e:TExpr, f:() -> Void):Void
```

Calls `f` on each sub expression.

### map

```haxe
static inline function map(e:TExpr, f:() -> TExpr):TExpr
```

Returns a copy of the expression with each sub expression replaced by `f`.

### size

```haxe
static function size(t:Type):Int
```

Returns the number of floats used by the type.

### evalConst

```haxe
static function evalConst(e:TExpr):Dynamic
```

Evaluates a constant expression.
