# hxd.fs.AsyncReadState

**enum abstract** · package [`hxd.fs`](README.md) · module `hxd.fs.AsyncRead` · source [`hxd/fs/AsyncRead.hx`](../../../../../hxd/fs/AsyncRead.hx)

The state of an `AsyncRead`.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `Pending` | `0` | Waiting to be read. |
| `Reading` | `1` | Being read. |
| `Done` | `2` | Read, and the callback was called. |
| `Cancelled` | `3` | Cancelled with `AsyncRead.cancel`. |
