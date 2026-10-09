#!/bin/sh
# Builds the Haxe XML API description (js / hl-sdl / hl-dx) and the dox HTML site.
#   tools/docgen/build-api.sh [--install]
# --install downloads Haxe 4.3.7 + Neko into /opt, clones the needed libs with git
# (haxelib's own downloader does not go through HTTPS proxies), builds the HashLink VM
# from source and compiles dox to HashLink bytecode (dox then runs on HL, not Neko;
# Neko is still needed by the haxelib command the compiler calls for -lib).
# Build deps for HashLink: gcc, make, libpng-dev, libturbojpeg0-dev, libvorbis-dev, zlib1g-dev.
set -e
ROOT=$(cd "$(dirname "$0")/../.." && pwd)
WS=$(dirname "$ROOT")   # expects sibling clones of hxbit and domkit
export PATH=/opt/haxe:/opt/neko:/opt/haxesrc/hashlink:$PATH HAXE_STD_PATH=/opt/haxe/std LD_LIBRARY_PATH=/opt/neko:/opt/haxesrc/hashlink NEKOPATH=/opt/neko

if [ "$1" = "--install" ]; then
	T=$(mktemp -d)
	curl -sSL -o $T/haxe.tgz https://github.com/HaxeFoundation/haxe/releases/download/4.3.7/haxe-4.3.7-linux64.tar.gz
	curl -sSL -o $T/neko.tgz https://github.com/HaxeFoundation/neko/releases/download/v2-4-1/neko-2.4.1-linux64.tar.gz
	mkdir -p /opt/haxe /opt/neko /opt/haxelib /opt/haxesrc
	tar xzf $T/haxe.tgz -C /opt/haxe --strip-components=1
	tar xzf $T/neko.tgz -C /opt/neko --strip-components=1
	haxelib setup /opt/haxelib >/dev/null
	cd /opt/haxesrc
	for r in HaxeFoundation/format:format ncannasse/castle:castle HaxeFoundation/dox:dox Simn/hxtemplo:hxtemplo \
		Simn/hxparse:hxparse Simn/hxargs:hxargs dpeek/haxe-markdown:markdown; do
		[ -d ${r##*:} ] || git clone -q --depth 1 https://github.com/${r%%:*} ${r##*:}
	done
	[ -d hashlink ] || git clone -q --depth 1 https://github.com/HaxeFoundation/hashlink
	make -s -C hashlink hl fmt.hdll
	for n in format castle dox hxtemplo hxparse hxargs markdown; do
		d=/opt/haxesrc/$n; [ -d $d/src ] && [ ! -f $d/haxelib.json ] && d=$d/src
		haxelib dev $n $d >/dev/null
	done
	haxelib dev hlsdl /opt/haxesrc/hashlink/libs/sdl >/dev/null
	haxelib dev hldx /opt/haxesrc/hashlink/libs/directx >/dev/null
	haxelib dev hlopenal /opt/haxesrc/hashlink/libs/openal >/dev/null
	haxelib dev heaps $ROOT >/dev/null
	haxelib dev hxbit $WS/hxbit >/dev/null
	haxelib dev domkit $WS/domkit >/dev/null
	# dox merges identical per-platform typedefs by mutating a Map while iterating it,
	# which misbehaves on HashLink: apply our portable rewrite, then build dox for HL.
	git -C dox checkout -q src/dox/Processor.hx
	git -C dox apply "$ROOT/tools/docgen/dox-hashlink.patch"
	(cd dox && haxe runBase.hxml -hl run.hl)
fi

cd $ROOT
for t in js hl hldx; do haxe docs/api/xml-$t.hxml; done
# dox cannot merge types whose kind differs per platform (enum on js, typedef on hl): keep the js one.
IN=$(mktemp -d)
python3 tools/docgen/merge-fix.py docs/api $IN hxd.DisplayMode hxd.fmt.pak.FileSeekMode >/dev/null
rm -rf docs/api/html
# dox caches by XML hash inside its output dir: always start from an empty one.
(cd /opt/haxesrc/dox && hl run.hl -i $IN -o $ROOT/docs/api/html --title "Heaps API" -in "^(h2d|h3d|hxd|hxsl)(\.|$)" \
	-D source-path https://github.com/HeapsIO/heaps/blob/master/)
rm -rf $IN
