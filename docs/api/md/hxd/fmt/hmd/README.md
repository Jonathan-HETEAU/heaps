# Package `hxd.fmt.hmd`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Animation`](Animation.md) | class | An animation stored in the file. |
| [`AnimationEvent`](AnimationEvent.md) | class | An event of an animation. |
| [`AnimationFlag`](AnimationFlag.md) | enum | The animated components of an animated object. |
| [`AnimationObject`](AnimationObject.md) | class | An object animated by an animation. |
| [`BlendShape`](BlendShape.md) | class | A blend shape (morph target) of a geometry. |
| [`BoxCollider`](BoxCollider.md) | class | A box collider. |
| [`CapsuleCollider`](CapsuleCollider.md) | class | A capsule collider. |
| [`Collider`](Collider.md) | class | A collider stored in the file. |
| [`ColliderType`](ColliderType.md) | enum abstract | The type of a collider stored in the file. |
| [`ConvexHullParams`](ConvexHullParams.md) | typedef | The parameters of the convex hulls generation. |
| [`ConvexHullsCollider`](ConvexHullsCollider.md) | class | A collider made of convex hulls. |
| [`CylinderCollider`](CylinderCollider.md) | class | A cylinder collider. |
| [`Data`](Data.md) | class | The content of a HMD file (the binary model format of Heaps, converted from FBX): the description of the models, geometries, materials, animations and colliders, and the binary data of the vertices and frames. |
| [`DataPosition`](DataPosition.md) | typedef | A position in the binary data of the file, in bytes. |
| [`Dump`](Dump.md) | class | Converts a HMD file into a readable text description, for debugging. |
| [`EmptyCollider`](EmptyCollider.md) | class | A collider without shape. |
| [`Geometry`](Geometry.md) | class | The vertex and index data of a mesh, split by material. |
| [`GeometryBuffer`](GeometryBuffer.md) | class | The vertices and indexes of a geometry, decoded in a given format. |
| [`GeometryDataFormat`](GeometryDataFormat.md) | typedef | The type of a vertex input. |
| [`GeometryFormat`](GeometryFormat.md) | typedef | A vertex input. |
| [`GroupCollider`](GroupCollider.md) | class | A collider made of several colliders. |
| [`Index`](Index.md) | typedef | An index in an array of the data. |
| [`Library`](Library.md) | class | Creates the objects, primitives, materials, skins and animations of a HMD model resource (see `hxd.res.Model.toHmd`). |
| [`Material`](Material.md) | class | A material stored in the file. |
| [`MeshCollider`](MeshCollider.md) | class | A collider using a mesh. |
| [`Model`](Model.md) | class | A node of the hierarchy of the file: an object, a mesh or a skinned mesh. |
| [`Position`](Position.md) | class | A transform stored in the file: position, rotation (quaternion without its W component, which is recomputed) and scale. |
| [`Properties`](Properties.md) | typedef | A list of properties, or `null`. |
| [`Property`](Property.md) | enum | Optional properties of the elements of the file. |
| [`Reader`](Reader.md) | class | Reads a HMD file. |
| [`ResolveResult`](ResolveResult.md) | enum | How the collider of a model is built (see `Collider.resolveColliderType`). |
| [`Skin`](Skin.md) | class | The skeleton of a skinned model. |
| [`SkinJoint`](SkinJoint.md) | class | A joint of a skin. |
| [`SkinSplit`](SkinSplit.md) | class | A part of a skin drawn separately, to limit the number of joints per draw call. |
| [`SphereCollider`](SphereCollider.md) | class | A sphere collider. |
| [`Writer`](Writer.md) | class | Writes a HMD file. |
