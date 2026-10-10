# Package `hxd.impl`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AllocPos`](AllocPos.md) | class | The code position where a GPU resource (buffer, texture) was allocated, recorded to track memory leaks. |
| [`Allocator`](Allocator.md) | class | Allocates the GPU buffers and CPU arrays used by the engine. |
| [`AnyProps`](AnyProps.md) | class | Base class of the objects configured by a dynamic properties object, such as the renderers and materials. |
| [`AppContext`](AppContext.md) | class | Create an app context to allow multiple apps to run in parallel. |
| [`ArrayBuffer`](ArrayBuffer.md) | typedef | A binary data buffer. |
| [`ArrayBufferView`](ArrayBufferView.md) | typedef | A view on a binary data buffer. |
| [`ArrayIterator`](ArrayIterator.md) | class | An inlined iterator over an array. |
| [`BitSet`](BitSet.md) | abstract | A fixed size set of bits. |
| [`BufferConfig`](BufferConfig.md) | typedef | The key of a cache of buffers. |
| [`BufferFlags`](BufferFlags.md) | enum abstract | The kind of buffer requested from an `Allocator`. |
| [`CacheAllocator`](CacheAllocator.md) | class | An allocator keeping the disposed GPU buffers to reuse them for the next allocations of the same size, format and flags. |
| [`FIFOBufferAllocator`](FIFOBufferAllocator.md) | class | An allocator keeping the disposed GPU buffers to reuse them, in first in first out order. |
| [`Float32`](Float32.md) | typedef | A 32 bits float on HashLink, a `Float` on other targets. |
| [`Float32Array`](Float32Array.md) | typedef | A 32 bits float array (a typed array on JS). |
| [`Int16Array`](Int16Array.md) | typedef | A signed 16 bits integer typed array. |
| [`MouseMode`](MouseMode.md) | enum | The mouse movement input handling mode. |
| [`Properties`](Properties.md) | class | Applies a dynamic properties object to an object, recursively. |
| [`UInt16`](UInt16.md) | typedef | An unsigned 16 bits integer on HashLink, an `Int` on other targets. |
| [`Uint16Array`](Uint16Array.md) | typedef | An unsigned 16 bits integer typed array. |
| [`Uint32Array`](Uint32Array.md) | typedef | An unsigned 32 bits integer typed array. |
| [`Uint8Array`](Uint8Array.md) | typedef | An unsigned 8 bits integer typed array. |
| [`UncheckedBytes`](UncheckedBytes.md) | abstract | Fast byte access without bounds checking. |
