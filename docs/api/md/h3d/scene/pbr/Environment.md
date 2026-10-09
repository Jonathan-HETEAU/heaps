# h3d.scene.pbr.Environment

**class** · package [`h3d.scene.pbr`](README.md) · source [`h3d/scene/pbr/Environment.hx`](../../../../../../h3d/scene/pbr/Environment.hx)

## Constructor

### new

```haxe
function new(src:h3d.mat.Texture, ?diffSize:Int = 64, ?specSize:Int = 512, ?sampleBits:Int = 12):Void
```

## Static methods

### getDefaultLUT

```haxe
static function getDefaultLUT():h3d.mat.Texture
```

### equiToCube

```haxe
static function equiToCube(source:h3d.mat.Texture, ?threshold:Float = 1.0, ?scale:Float = 1.0):h3d.mat.Texture
```

### getDefault

```haxe
static function getDefault():Environment
```

## Variables

### sampleBits

```haxe
var sampleBits:Int
```

### diffSize

```haxe
var diffSize:Int
```

### specSize

```haxe
var specSize:Int
```

### specLevels

```haxe
var specLevels:Int
```

### ignoredSpecLevels

```haxe
var ignoredSpecLevels:Int
```

### hdrMax

```haxe
var hdrMax:Float
```

### source

```haxe
var source:h3d.mat.Texture
```

### env

```haxe
var env(get, null):h3d.mat.Texture
```

### lut

```haxe
var lut(get, null):h3d.mat.Texture
```

### diffuse

```haxe
var diffuse:h3d.mat.Texture
```

### specular

```haxe
var specular:h3d.mat.Texture
```

### power

```haxe
var power:Float
```

### rotation

```haxe
var rotation:Float
```

## Methods

### dispose

```haxe
function dispose():Void
```

### compute

```haxe
function compute():Void
```
