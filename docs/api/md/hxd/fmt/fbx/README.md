# Package `hxd.fmt.fbx`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`BaseLibrary`](BaseLibrary.md) | class | Loads a FBX file (version 7) and builds its hierarchy, geometries, skins and animations. |
| [`CollideParams`](CollideParams.md) | typedef | How the collider of a model is generated (see `hxd.fmt.hmd.Collider.resolveColliderType`). |
| [`DefaultMatrixes`](DefaultMatrixes.md) | class | The default transform of a FBX model: translation, scale, rotation and pre-rotation. |
| [`ExportParams`](ExportParams.md) | typedef | The axis conventions of an exported FBX file. |
| [`FbxNode`](FbxNode.md) | typedef | A node of a FBX file: its name, properties and children. |
| [`FbxProp`](FbxProp.md) | enum | A property value of a FBX node. |
| [`FbxTools`](FbxTools.md) | class | Helpers to read FBX nodes. |
| [`Filter`](Filter.md) | class | Removes nodes from FBX data, with their connections. |
| [`Geometry`](Geometry.md) | class | Reads the data of a FBX geometry node. |
| [`HMDOut`](HMDOut.md) | class | Converts a FBX file to the HMD format of Heaps (see `hxd.fs.Convert`): optimized geometries, skins, animations, levels of detail and colliders. |
| [`Parser`](Parser.md) | class | Parses FBX files, in text or binary format. |
| [`ShapeColliderParams`](ShapeColliderParams.md) | typedef | A shape of a custom collider. |
| [`ShapeColliderType`](ShapeColliderType.md) | enum abstract | The type of a collider shape. |
| [`TmpObject`](TmpObject.md) | class | A node of the hierarchy built while converting a FBX file. |
| [`Writer`](Writer.md) | class | Exports 3D objects to a binary FBX file. |
