# hxd.res.Loader

**class** · package [`hxd.res`](README.md) · source [`hxd/res/Loader.hx`](../../../../../hxd/res/Loader.hx)

## Constructor

### new

```haxe
function new(fs:hxd.fs.FileSystem):Void
```

## Static variables

### currentInstance

```haxe
static var currentInstance:Loader
```

Set when initializing hxd.Res, or manually.
Allows code to resolve resources without compiling hxd.Res

## Variables

### fs

```haxe
var fs(default, null):hxd.fs.FileSystem
```

## Methods

### cleanCache

```haxe
function cleanCache():Void
```

### dir

```haxe
function dir(path:String):Array<Any>
```

### exists

```haxe
function exists(path:String):Bool
```

### load

```haxe
function load(path:String):Any
```

### loadCache

```haxe
function loadCache(path:String, c:Class<loadCache.T>):loadCache.T
```

### delete

```haxe
function delete(path:String):Bool
```

### dispose

```haxe
function dispose():Void
```
