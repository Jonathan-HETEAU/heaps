# hxd.fs.Exclusive

**class** · package [`hxd.fs`](README.md) · source [`hxd/fs/Exclusive.hx`](../../../../../hxd/fs/Exclusive.hx)

A global lock protecting the resource loading when the `heaps_mt_loader` define is set, to load resources from several threads.

## Static methods

### lock

```haxe
static inline function lock(f:() -> lock.T):lock.T
```

Runs `f` while holding the lock (without lock if `heaps_mt_loader` is not set), and returns its result.
