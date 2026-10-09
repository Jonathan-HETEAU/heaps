# h3d.scene.RenderContext

**class** · package [`h3d.scene`](README.md) · source [`h3d/scene/RenderContext.hx`](../../../../../h3d/scene/RenderContext.hx)

Extends: [`h3d.impl.RenderContext`](../impl/RenderContext.md)

## Constructor

### new

```haxe
function new(scene:Scene):Void
```

## Variables

### camera

```haxe
var camera(default, null):h3d.Camera
```

### scene

```haxe
var scene(default, null):Scene
```

### drawPass

```haxe
var drawPass:h3d.pass.PassObject
```

### pbrLightPass

```haxe
var pbrLightPass:h3d.mat.Pass
```

### computingStatic

```haxe
var computingStatic:Bool
```

### computeVelocity

```haxe
var computeVelocity:Bool
```

### enableTranslucency

```haxe
var enableTranslucency:Bool
```

### useReverseDepth

```haxe
var useReverseDepth:Bool
```

### renderResolutionWidth

```haxe
var renderResolutionWidth:Int
```

### renderResolutionHeight

```haxe
var renderResolutionHeight:Int
```

### lightSystem

```haxe
var lightSystem:LightSystem
```

### extraShaders

```haxe
var extraShaders:hxsl.ShaderList
```

### visibleFlag

```haxe
var visibleFlag:Bool
```

### debugCulling

```haxe
var debugCulling:Bool
```

### wasContextLost

```haxe
var wasContextLost:Bool
```

### cullingCollider

```haxe
var cullingCollider:h3d.col.Collider
```

### forcedScreenRatio

```haxe
var forcedScreenRatio:Float
```

### meshLodScale

```haxe
var meshLodScale:Float
```

### hzb

```haxe
var hzb:h3d.mat.Texture
```

### numViews

```haxe
var numViews:Int
```

### currentView

```haxe
var currentView:View
```

### prevCamera

```haxe
var prevCamera:h3d.Camera
```

### prevWorldDelta

```haxe
var prevWorldDelta:h3d.Vector
```

## Methods

### setCamera

```haxe
function setCamera(cam:h3d.Camera):Void
```

### setRenderResolution

```haxe
function setRenderResolution(width:Int, height:Int):Void
```

### updateNumViews

```haxe
function updateNumViews(numViews:Int):Void
```

### setCurrentView

```haxe
function setCurrentView(viewIdx:Int, viewFrustum:h3d.col.Frustum):Void
```

### setupTarget

```haxe
function setupTarget():Void
```

### emit

```haxe
inline function emit(mat:h3d.mat.Material, obj:Object, ?index:Int = 0):Void
```

### start

```haxe
function start():Void
```

### nextPass

```haxe
inline function nextPass():Void
```

### getGlobal

```haxe
inline function getGlobal(name:String):Dynamic
```

### setGlobal

```haxe
inline function setGlobal(name:String, v:Dynamic):Void
```

### emitPass

```haxe
function emitPass(pass:h3d.mat.Pass, obj:Object):h3d.pass.PassObject
```

### allocShaderList

```haxe
function allocShaderList(s:hxsl.Shader, ?next:hxsl.ShaderList):hxsl.ShaderList
```

### computeList

```haxe
function computeList(list:hxsl.ShaderList):Void
```

### memoryBarrier

```haxe
function memoryBarrier():Void
```

### computeDispatch

```haxe
function computeDispatch(?shader:hxsl.Shader, ?x:Int = 1, ?y:Int = 1, ?z:Int = 1, ?barrier:Bool = true):Void
```

### emitLight

```haxe
function emitLight(l:Light):Void
```

### getCameraFrustumBuffer

```haxe
function getCameraFrustumBuffer():h3d.Buffer
```

### getDepthClearValue

```haxe
function getDepthClearValue():Float
```

### selectTextureHandles

```haxe
function selectTextureHandles(handles:Array<h3d.mat.TextureHandle>):Void
```

### selectBufferHandles

```haxe
function selectBufferHandles(handles:Array<h3d.BufferHandle>):Void
```

### uploadParams

```haxe
function uploadParams():Void
```

### done

```haxe
function done():Void
```

### dispose

```haxe
override function dispose():Void
```

## Inherited members

- from [`h3d.impl.RenderContext`](../impl/RenderContext.md): `engine`, `time`, `elapsedTime`, `frame`, `textures`, `globals`, `shaderBuffers`, `setCurrent`, `clearCurrent`, `dispose`, `getParamValue`, `fillGlobals`, `fillParams`
