# hxd.fmt.fbx.FbxTools

**class** · package [`hxd.fmt.fbx`](README.md) · module `hxd.fmt.fbx.Data` · source [`hxd/fmt/fbx/Data.hx`](../../../../../../hxd/fmt/fbx/Data.hx)

Helpers to read FBX nodes.

## Static methods

### get

```haxe
static function get(n:FbxNode, path:String, ?opt:Bool = false):Null<FbxNode>
```

Returns the descendant node at the path (node names separated by dots). Throws if not found, unless `opt` is set.

### getAll

```haxe
static function getAll(n:FbxNode, path:String):Array<FbxNode>
```

Returns all the descendant nodes at the path.

### getInts

```haxe
static function getInts(n:FbxNode):Array<Int>
```

Returns the integer array of the node.

### getFloats

```haxe
static function getFloats(n:FbxNode):Array<Float>
```

Returns the float array of the node (converting an integer array).

### hasProp

```haxe
static function hasProp(n:FbxNode, p:FbxProp):Bool
```

Tells if the node has the property.

### toInt

```haxe
static function toInt(n:FbxProp):Int
```

Returns the property as an integer.

### toFloat

```haxe
static function toFloat(n:FbxProp):Float
```

Returns the property as a float.

### toString

```haxe
static function toString(n:FbxProp):String
```

Returns the property as a string.

### toBinary

```haxe
static function toBinary(n:FbxProp):Bytes
```

Returns the property as bytes.

### getId

```haxe
static function getId(n:FbxNode):Int
```

Returns the identifier of the object node.

### getName

```haxe
static function getName(n:FbxNode):String
```

Returns the name of the object node (without its class prefix, with dots replaced by `_`).

### getType

```haxe
static function getType(n:FbxNode):String
```

Returns the type of the object node.
