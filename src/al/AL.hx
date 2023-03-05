package al;

/**
 * Bindings for `include/AL/al.h`.
 * @author Leather128
 */
@:keep
@:buildXml('<include name="../../build/build.xml" />')
@:include('AL/al.h')
extern class AL {
	@:native('alGetError')
	public static function getError():ALenum;
}

typedef Double = cpp.Float64;
typedef ALdouble = Double;
typedef ALenum = Int;
typedef ALsizei = Int;
typedef ALuint = UInt;
typedef ALushort = cpp.UInt16;
typedef ALshort = cpp.Int16;
typedef ALubyte = cpp.UInt8;
typedef ALbyte = cpp.Int8;
typedef ALchar = cpp.Char;
typedef ALboolean = cpp.Char;
