# h3d.impl.LatencyMarker

**enum** · package [`h3d.impl`](README.md) · module `h3d.impl.Upscaling` · source [`h3d/impl/Upscaling.hx`](../../../../../h3d/impl/Upscaling.hx)

The points of the frame reported to the low latency technology.

## Constructors

### SimulationStart

```haxe
SimulationStart
```

The start of the game simulation of the frame.

### SimulationEnd

```haxe
SimulationEnd
```

The end of the game simulation of the frame.

### TriggerFlash

```haxe
TriggerFlash
```

Requests a latency flash indicator, emitted at the next `SimulationEnd`.
