# h3d.impl.QueryKind

**enum** · package [`h3d.impl`](README.md) · module `h3d.impl.Driver` · source [`h3d/impl/Driver.hx`](../../../../../h3d/impl/Driver.hx)

The kind of a GPU query.

## Constructors

### TimeStamp

```haxe
TimeStamp
```

The result will give the GPU Timestamp (in nanoseconds, 1e-9 seconds) at the time the endQuery is performed

### Samples

```haxe
Samples
```

The result will give the number of samples that passes the depth buffer between beginQuery/endQuery range

### TimeElapsed

```haxe
TimeElapsed
```

The result will give the GPU elapsed time (in nanoseconds, 1e-9 seconds) between beginQuery/endQuery range
