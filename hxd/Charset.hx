package hxd;

/**
	Character set helpers used by the fonts: the default characters, the fallback characters used when a glyph is missing
	(for instance curly quotes replaced by straight ones), and line breaking rules (spaces, CJK characters).
**/
class Charset {

	/**
		Contains the whole ASCII charset.
	**/
	public static var ASCII = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";

	/**
		The Latin1 (ISO 8859-1) charset (only the extra chars, no the ASCII part) + euro symbol
	**/
	public static var LATIN1 = "¡¢£¤¥¦§¨©ª«¬-®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿœæŒÆ€";

	/**
		Russian support
	**/
	public static var CYRILLIC = "АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюяҐЄІЇґєії—";
	/**
		Polish support
	**/
	public static var POLISH = "ĄĆĘŁŃÓŚŹŻąćęłńóśźż";

	/**
		Turkish support
	**/
	public static var TURKISH = "ÂÇĞIİÎÖŞÜÛâçğıİîöşüû";

	/**
		Contains Hiragana, Katanaga, japanese punctuaction and full width space (0x3000) full width numbers (0-9) and some full width ascii punctuation (!:?%&()-). Does not include full width A-Za-z.
	**/
	public static var JP_KANA = "　あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわゐゑをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヰヱヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポヴャぇっッュョァィゥェォ・ー「」、。『』“”！：？％＆（）－０１２３４５６７８９";

	/**
		Special unicode chars (fallback chars)
	**/
	public static var UNICODE_SPECIALS = "�□";


	/**
		The characters included by default when generating fonts: ASCII and Latin-1.
	**/
	public static var DEFAULT_CHARS = ASCII + LATIN1;

	var map : Map<Int,Int>;

	function new() {
		map = new Map();
		inline function m(a, b) {
			map.set(a, b);
		}
		// fullwidth unicode to ASCII (if missing)
		for( i in 0...0x5E )
			m(0xFF01 + i, 0x21 + i);
		// Latin1 accents
		for( i in "À".code..."Æ".code + 1 )
			m(i, "A".code);
		for( i in "à".code..."æ".code + 1 )
			m(i, "a".code);
		for( i in "È".code..."Ë".code + 1 )
			m(i, "E".code);
		for( i in "è".code..."ë".code + 1 )
			m(i, "e".code);
		for( i in "Ì".code..."Ï".code + 1 )
			m(i, "I".code);
		for( i in "ì".code..."ï".code + 1 )
			m(i, "i".code);
		for( i in "Ò".code..."Ö".code + 1 )
			m(i, "O".code);
		for( i in "ò".code..."ö".code + 1 )
			m(i, "o".code);
		for( i in "Ù".code..."Ü".code + 1 )
			m(i, "U".code);
		for( i in "ù".code..."ü".code + 1 )
			m(i, "u".code);
		m("Ç".code, "C".code);
		m("ç".code, "C".code);
		m("Ð".code, "D".code);
		m("Þ".code, "d".code);
		m("Ñ".code, "N".code);
		m("ñ".code, "n".code);
		m("Ý".code, "Y".code);
		m("ý".code, "y".code);
		m("ÿ".code, "y".code);
		m("€".code, "E".code);
		// unicode spaces
		m(0x3000, 0x20); // full width space
		m(0xA0, 0x20); // nbsp
		// unicode quotes
		m("«".code, '"'.code);
		m("»".code, '"'.code);
		m("“".code, '"'.code);
		m("”".code, '"'.code);
		m("„".code, '"'.code);
		m("‘".code, "'".code);
		m("’".code, "'".code);
		m("´".code, "'".code);
		m("‘".code, "'".code);
		m("‹".code, "<".code);
		m("›".code, ">".code);
		m("–".code, "-".code);
	}

	/**
		Returns the glyph of `code`, or of its fallback characters if missing, or `null`.
	**/
	public function resolveChar<T>( code : Int, glyphs : Map<Int,T> ) : Null<T> {
		var c : Null<Int> = code;
		while( c != null ) {
			var g = glyphs.get(c);
			if( g != null ) return g;
			c = map.get(c);
		}
		return null;
	}

	/**
		Tells if `code` is a CJK (Chinese, Japanese, Korean) character, where lines can break.
	**/
	public function isCJK(code) {
		// ID class line-break characters based off Unicode specification.
		// Ref: https://www.unicode.org/reports/tr14/tr14-34.html#ID
		#if accurate_cjk_detection
		return (code >= 0x2E80 && code <= 0x2FFF) || // CJK, Kangxi Radicals, Ideographic Description Symbols
					 (code >= 0x3040 && code <= 0x309F) || // Hiragana (except small characters)
					 (code >= 0x30A0 && code <= 0x30FF) || // Katakana (except small characters)
					 (code >= 0x3400 && code <= 0x4DBF) || // CJK Unified Ideographs Extension A
					 (code >= 0x4E00 && code <= 0x9FFF) || // CJK Unified Ideographs
					 (code >= 0xF900 && code <= 0xFAFF) || // CJK Compatibility Ideographs
					 (code >= 0xA000 && code <= 0xA48F) || // Yi Syllables
					 (code >= 0xA490 && code <= 0xA4CF) || // Yi Radicals
					 (code >= 0xFE64 && code <= 0xFE66) || // SMALL PLUS SIGN..SMALL EQUALS SIGN
					 (code >= 0xFF01 && code <= 0xFF5A) || // Fullwidth Latin letters and digits
					 (code >= 0x20000 && code <= 0x3FFFD); // CJK Unified Ideographs Extension B-E, CJK Compatibility Ideographs Supplement, SIP (Plane 2) and TIP (Plane 3)
		#else
		// Simpler and less accurate SJK detection, but faster due to less compares.
		return (code >= 0x2E80 && code <= 0xA4CF) || (code >= 0xF900 && code <= 0xFAFF) || (code >= 0x20000 && code <= 0x3FFFD);
		#end

	}

	/**
		Tells if `code` is a space (including the ideographic space).
	**/
	public function isSpace(code) {
		return code == ' '.code || code == 0x3000;
	}

	/**
		Tells if a line can break at `code`.
	**/
	public function isBreakChar(code) {
		return isSpace(code) || isCJK(code);
	}

	static var complementChars : Map<Int,Bool> = {
		var str = "ヽヾーァィゥェォッャュョヮヵヶぁぃぅぇぉっゃゅょゎゕゖㇰㇱㇲㇳㇴㇵㇶㇷㇸㇹㇺㇻㇼㇽㇾㇿ々〻。，、；：！？";
		[for( i in 0...str.length ) str.charCodeAt(i) => true];
	}

	/**
		Tells if `code` is a Japanese or punctuation character which must not start a line.
	**/
	public function isComplementChar(code) {
		return complementChars.exists(code);
	}

	static var inst : Charset;
	/**
		Returns the default charset.
	**/
	public static function getDefault() {
		if( inst == null ) inst = new Charset();
		return inst;
	}

}