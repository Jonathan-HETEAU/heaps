# h3d.parts.Collider

**interface** · package [`h3d.parts`](README.md) · source [`h3d/parts/Collider.hx`](../../../../../h3d/parts/Collider.hx)

A collision handler for the particles of an `Emitter` (see `Emitter.collider` and `State.collide`).

## Methods

### collidePart

```haxe
function collidePart(p:Particle, normal:h3d.Vector):Bool
```

Tells if the particle `p` collides, and if so stores the surface normal in `normal`.
