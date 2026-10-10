# hxd.snd.Listener

**class** · package [`hxd.snd`](README.md) · source [`hxd/snd/Listener.hx`](../../../../../hxd/snd/Listener.hx)

The position and orientation of the listener of spatialized sounds (see `hxd.snd.effect.Spatialization`). Accessed with `Manager.listener`.

## Constructor

### new

```haxe
function new():Void
```

Creates a listener at the origin.

## Variables

### position

```haxe
var position:h3d.Vector
```

The position of the listener.

### direction

```haxe
var direction:h3d.Vector
```

The direction the listener is facing (`+X` by default).

### velocity

```haxe
var velocity:h3d.Vector
```

The velocity of the listener, for the Doppler effect.

### up

```haxe
var up:h3d.Vector
```

The up direction of the listener (`+Z` by default).

## Methods

### syncCamera

```haxe
function syncCamera(cam:h3d.Camera):Void
```

Sets the position and orientation of the listener from the camera.
