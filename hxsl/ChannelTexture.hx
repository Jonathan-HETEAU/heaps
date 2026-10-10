package hxsl;

/**
	A texture with the channel to read, the value of a `Channel` global.
**/
typedef ChannelTexture = {
	/**
		The texture.
	**/
	var texture : hxsl.Types.TextureChannel;
	/**
		The channel to read.
	**/
	var channel : hxsl.Channel;
};
