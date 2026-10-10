# h3d.impl.ShaderCache

**class** · package [`h3d.impl`](README.md) · source [`h3d/impl/ShaderCache.hx`](../../../../../h3d/impl/ShaderCache.hx)

A cache of the shaders compiled by the driver, by source code and configuration, saved to a file to avoid compiling them at the next run (see `Driver.setShaderCache`).

## Constructor

### new

```haxe
function new(file:String, ?outputFile:String, ?mode:ShaderCacheMode = Base64):Void
```

Creates the cache for the file (saved to `outputFile` if set).

## Static variables

### VERSION_KEY_WORD

```haxe
static var VERSION_KEY_WORD:String
```

The keyword starting the version in the file header.

### VERSION

```haxe
static var VERSION:Int
```

The version of the file format.

### MODE_KEY_WORD

```haxe
static var MODE_KEY_WORD:String
```

The keyword starting the mode in the file header.

## Variables

### keepSource

```haxe
var keepSource:Bool
```

If set, the sources are also saved, in a `.source` file, for debugging.

### allowSave

```haxe
var allowSave:Bool
```

If set, the new compiled shaders are saved.

## Methods

### disableSave

```haxe
function disableSave():Void
```

Disables the saving. Deprecated: set `allowSave` to `false`.

### initEmpty

```haxe
function initEmpty():Void
```

Clears the cache.

### load

```haxe
function load():Void
```

Loads the cache files.

### resolveShaderBinary

```haxe
function resolveShaderBinary(source:String, ?configurationKey:String = ""):Null<Bytes>
```

Returns the compiled shader of the source and configuration, or `null`.

### saveCompiledShader

```haxe
function saveCompiledShader(source:String, bytes:Bytes, ?configurationKey:String = "", ?saveToFile:Bool = true):Void
```

Adds a compiled shader to the cache, and saves the file shortly after if `saveToFile` is set.

### save

```haxe
function save():Void
```

Saves the cache file if it changed.
