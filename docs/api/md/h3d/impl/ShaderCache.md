# h3d.impl.ShaderCache

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/ShaderCache.hx`](../../../../../h3d/impl/ShaderCache.hx)

## Constructor

### new

```haxe
function new(file:String, ?outputFile:String, ?mode:ShaderCacheMode = Base64):Void
```

## Static variables

### VERSION_KEY_WORD

```haxe
static var VERSION_KEY_WORD:String
```

### VERSION

```haxe
static var VERSION:Int
```

### MODE_KEY_WORD

```haxe
static var MODE_KEY_WORD:String
```

## Variables

### keepSource

```haxe
var keepSource:Bool
```

### allowSave

```haxe
var allowSave:Bool
```

## Methods

### disableSave

```haxe
function disableSave():Void
```

### initEmpty

```haxe
function initEmpty():Void
```

### load

```haxe
function load():Void
```

### resolveShaderBinary

```haxe
function resolveShaderBinary(source:String, ?configurationKey:String = ""):Null<Bytes>
```

### saveCompiledShader

```haxe
function saveCompiledShader(source:String, bytes:Bytes, ?configurationKey:String = "", ?saveToFile:Bool = true):Void
```

### save

```haxe
function save():Void
```
