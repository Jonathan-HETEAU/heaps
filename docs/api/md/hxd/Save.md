# hxd.Save

**class** · package [`hxd`](README.md) · source [`hxd/Save.hx`](../../../../hxd/Save.hx)

Save provides simple interface to save and load serialized user data.
Data is serialized to String with `haxe.Serializer` and then stored in text form.

## Static methods

### load

```haxe
static function load(?defValue:load.T, ?name:String = "save", ?checkSum:Bool = false):load.T
```

Loads save with specified name. Returns `defValue` if save does not exists or could not be unserialized.
- **param** `defValue` Fallback default save value
- **param** `name` Name of the save
- **param** `checkSum` Set to true if data expected to have crc checksum prepending the data. Should be set for entries saved with `checkSum = true`.

### delete

```haxe
static dynamic function delete(?name:String = "save"):Void
```

Deletes save with specified name.
Override this method when using custom save lookup.

### save

```haxe
static function save(val:Dynamic, ?name:String = "save", ?checkSum:Bool = false):Bool
```

Saves `val` under the specified name.
- **param** `checkSum` When set, save data is prepended by salted crc checksum for data validation. When save is loaded, `checkSum` flag should be set accordingly.
