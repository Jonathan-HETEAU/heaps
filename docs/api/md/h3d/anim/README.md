# Package `h3d.anim`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnimatedObject`](AnimatedObject.md) | class | An object animated by an `Animation`, identified by name, and its target once the animation is bound. |
| [`Animation`](Animation.md) | class | Base class of the animations: a set of animated objects (or joints) with keyframes, played on an object tree. |
| [`BlendSpace2D`](BlendSpace2D.md) | class | Blends multiple animations points placed on a virtual 2d plane |
| [`BlendSpace2DPoint`](BlendSpace2DPoint.md) | class | A point of a `BlendSpace2D`: an animation placed at a position of the blend space. |
| [`BlendSpaceObject`](BlendSpaceObject.md) | class | An object animated by a `BlendSpace2D`, with the transforms of each point animation. |
| [`BufferAnimation`](BufferAnimation.md) | class | An animation whose keyframes are stored in a single packed float buffer, as loaded from HMD files. |
| [`BufferObject`](BufferObject.md) | class | An object animated by a `BufferAnimation`: the layout of its values in the animation data. |
| [`DataLayout`](DataLayout.md) | enum | The values stored per frame for an object of a `BufferAnimation`. |
| [`DynamicJoint`](DynamicJoint.md) | class | A joint simulated as a spring following its animated position (hair, cloth, tails...). |
| [`Event`](Event.md) | typedef | An event of an animation (such as a footstep), triggered when the animation reaches its frame (see `Animation.onEvent`). |
| [`Joint`](Joint.md) | class | A joint (bone) of a skeleton (`Skin`). |
| [`LinearAnimation`](LinearAnimation.md) | class | An animation sampled at a fixed rate, with one keyframe per frame per object, linearly interpolated (quaternions are interpolated for rotations). |
| [`LinearFrame`](LinearFrame.md) | class | A keyframe of a `LinearAnimation`: a position, a rotation quaternion and a scale. |
| [`LinearObject`](LinearObject.md) | class | An object animated by a `LinearAnimation`: one curve of transforms, alpha, UV offsets or a custom property. |
| [`SimpleBlend`](SimpleBlend.md) | class | Plays two animations at once on different parts of a skeleton (for instance the legs from a walk animation and the upper body from an attack animation). |
| [`Skin`](Skin.md) | class | The skeleton and skinning data of a skinned geometry: the joints and, for each vertex, the joints influencing it and their weights. |
| [`SmoothTarget`](SmoothTarget.md) | class | Smoothly blends from the current pose of the objects to an animation, over `duration` seconds. |
| [`SmoothTransition`](SmoothTransition.md) | class | Cross-fades from the animation `anim1` to `anim2` over `duration` seconds, both animations playing during the transition. |
| [`SmoothedObject`](SmoothedObject.md) | class | An object animated by a `SmoothTransition`. |
| [`Transition`](Transition.md) | class | Base class of the animations combining two animations (`anim1` and `anim2`). |
