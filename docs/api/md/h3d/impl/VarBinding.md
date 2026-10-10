# h3d.impl.VarBinding

**interface** · package [`h3d.impl`](README.md) · source [`h3d/impl/VarBinding.hx`](../../../../../h3d/impl/VarBinding.hx)

Implement this interface to use field initializers that reference other fields: they are moved to the constructor, in dependency order. `a => { ... }` sets fields of the value of `a`.
