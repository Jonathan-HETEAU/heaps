# h2d.Particles

**class** · package [`h2d`](README.md) · source [`h2d/Particles.hx`](../../../../h2d/Particles.hx)

Extends: [`h2d.Drawable`](Drawable.md) → [`h2d.Object`](Object.md)

A 2D particle system with wide range of customizability.

The Particles instance can contain multiple `ParticleGroup` instances - each of which works independently from one another.

To simplify designing of the particles [HIDE](https://github.com/HeapsIO/hide/) contains a dedicated 2D particle editor and
stores the particle data in a JSON format, which then can be loaded with the `Particles.load` method:
```haxe
var part = new h2d.Particles();
part.load(haxe.Json.parse(hxd.Res.my_parts_file.entry.getText()), hxd.Res.my_parts_file.entry.path);
```

## Constructor

### new

```haxe
function new(?parent:Object):Void
```

Create a new Particles instance.
- **param** `parent` An optional parent `h2d.Object` instance to which Particles adds itself if set.

## Methods

### onEnd

```haxe
dynamic function onEnd():Void
```

Sent when all particle groups stopped playback.
Restarts all groups by default.

### save

```haxe
function save():Dynamic
```

Saves Particles settings and returns an object that can be saved into a file and then loaded with a `Particles.load` method.

### load

```haxe
function load(o:Dynamic, ?resourcePath:String):Void
```

Loads previously saved Particles settings.
- **param** `o` The saved Particles settings.
- **param** `resourcePath` An optional path of the configuration file. May be safely omitted.

### addGroup

```haxe
function addGroup(?g:ParticleGroup, ?index:Int):Null<ParticleGroup>
```

Add new particle group to the Particles.
- **param** `g` Particle group to add. If null, will create an empty ParticleGroup.
Note that when passing existing group, it should be created with this Particles instanceas the constructor argument,
otherwise it may lead to undefined behavior.
- **param** `index` Optional insertion index at which the group should be inserted.
- **returns** s Added ParticleGroup instance.

### removeGroup

```haxe
function removeGroup(g:ParticleGroup):Void
```

Removes the group from the Particles.

### getGroup

```haxe
function getGroup(name:String):ParticleGroup
```

Returns a group with a specified name or `null` if none found.

### getGroups

```haxe
inline function getGroups():ArrayIterator<ParticleGroup>
```

Returns an Iterator of particle groups within Particles.

## Inherited members

- from [`h2d.Drawable`](Drawable.md): `color`, `smooth`, `tileWrap`, `colorKey`, `colorMatrix`, `colorAdd`, `adjustColor`, `getShader`, `getShaders`, `addShader`, `removeShader`
- from [`h2d.Object`](Object.md): `parent`, `numChildren`, `name`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `alpha`, `filter`, `blendMode`, `getBounds`, `getSize`, `getAbsPos`, `contains`, `find`, `findAll`, `getObjectsCount`, `localToGlobal`, `globalToLocal`, `getScene`, `addChild`, `addChildAt`, `removeChild`, `removeChildren`, `remove`, `drawTo`, `drawToTextures`, `move`, `setPosition`, `rotate`, `scale`, `setScale`, `getChildAt`, `getChildIndex`, `getObjectByName`, `iterator`
