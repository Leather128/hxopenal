package al;

/**
 * Bindings for `include/AL/al.h`.
 * @author Leather128
 */
@:keep
@:buildXml('<include name="../../build/build.xml" />')
@:include('AL/al.h')
extern class AL {
	// defines //
	public static inline var AL_NONE:Int = 0;
	public static inline var AL_SOURCE_RELATIVE:Int = 0x202;
	public static inline var AL_CONE_INNER_ANGLE:Int = 0x1001;
	public static inline var AL_CONE_OUTER_ANGLE:Int = 0x1002;
	public static inline var AL_PITCH:Int = 0x1003;
	public static inline var AL_POSITION:Int = 0x1004;
	public static inline var AL_DIRECTION:Int = 0x1005;
	public static inline var AL_VELOCITY:Int = 0x1006;
	public static inline var AL_LOOPING:Int = 0x1007;
	public static inline var AL_BUFFER:Int = 0x1009;
	public static inline var AL_GAIN:Int = 0x100A;
	public static inline var AL_MIN_GAIN:Int = 0x100D;
	public static inline var AL_MAX_GAIN:Int = 0x100E;
	public static inline var AL_ORIENTATION:Int = 0x100F;
	public static inline var AL_SOURCE_STATE:Int = 0x1010;
	public static inline var AL_INITIAL:Int = 0x1011;
	public static inline var AL_PLAYING:Int = 0x1012;
	public static inline var AL_PAUSED:Int = 0x1013;
	public static inline var AL_STOPPED:Int = 0x1014;
	public static inline var AL_BUFFERS_QUEUED:Int = 0x1015;
	public static inline var AL_BUFFERS_PROCESSED:Int = 0x1016;
	public static inline var AL_REFERENCE_DISTANCE:Int = 0x1020;
	public static inline var AL_ROLLOFF_FACTOR:Int = 0x1021;
	public static inline var AL_CONE_OUTER_GAIN:Int = 0x1022;
	public static inline var AL_MAX_DISTANCE:Int = 0x1023;
	public static inline var AL_SEC_OFFSET:Int = 0x1024;
	public static inline var AL_SAMPLE_OFFSET:Int = 0x1025;
	public static inline var AL_BYTE_OFFSET:Int = 0x1026;
	public static inline var AL_SOURCE_TYPE:Int = 0x1027;
	public static inline var AL_STATIC:Int = 0x1028;
	public static inline var AL_STREAMING:Int = 0x1029;
	public static inline var AL_UNDETERMINED:Int = 0x1030;
	public static inline var AL_FORMAT_MONO8:Int = 0x1100;
	public static inline var AL_FORMAT_MONO16:Int = 0x1101;
	public static inline var AL_FORMAT_STEREO8:Int = 0x1102;
	public static inline var AL_FORMAT_STEREO16:Int = 0x1103;
	public static inline var AL_FREQUENCY:Int = 0x2001;
	public static inline var AL_BITS:Int = 0x2002;
	public static inline var AL_CHANNELS:Int = 0x2003;
	public static inline var AL_SIZE:Int = 0x2004;
	public static inline var AL_UNUSED:Int = 0x2010;
	public static inline var AL_PENDING:Int = 0x2011;
	public static inline var AL_PROCESSED:Int = 0x2012;
	public static inline var AL_NO_ERROR:Int = 0;
	public static inline var AL_INVALID_NAME:Int = 0xA001;
	public static inline var AL_INVALID_ENUM:Int = 0xA002;
	public static inline var AL_INVALID_VALUE:Int = 0xA003;
	public static inline var AL_INVALID_OPERATION:Int = 0xA004;
	public static inline var AL_OUT_OF_MEMORY:Int = 0xA005;
	public static inline var AL_VENDOR:Int = 0xB001;
	public static inline var AL_VERSION:Int = 0xB002;
	public static inline var AL_RENDERER:Int = 0xB003;
	public static inline var AL_EXTENSIONS:Int = 0xB004;
	public static inline var AL_DOPPLER_FACTOR:Int = 0xC000;
	public static inline var AL_DOPPLER_VELOCITY:Int = 0xC001;
	public static inline var AL_SPEED_OF_SOUND:Int = 0xC003;
	public static inline var AL_DISTANCE_MODEL:Int = 0xD000;
	public static inline var AL_INVERSE_DISTANCE:Int = 0xD001;
	public static inline var AL_INVERSE_DISTANCE_CLAMPED:Int = 0xD002;
	public static inline var AL_LINEAR_DISTANCE:Int = 0xD003;
	public static inline var AL_LINEAR_DISTANCE_CLAMPED:Int = 0xD004;
	public static inline var AL_EXPONENT_DISTANCE:Int = 0xD005;
	public static inline var AL_EXPONENT_DISTANCE_CLAMPED:Int = 0xD006;

	// functions //
	@:native('alGetError')
	public static function getError():ALenum;

	@:native('alEnable')
	public static function enable(capability:ALenum):Void;

	@:native('alDisable')
	public static function disable(capability:ALenum):Void;

	@:native('alIsEnabled')
	public static function isEnabled(capability:ALenum):ALboolean;

	@:native('alDopplerFactor')
	public static function dopplerFactor(value:Float):Void;

	@:native('alDopplerVelocity')
	public static function dopplerVelocity(value:Float):Void;

	@:native('alSpeedOfSound')
	public static function speedOfSound(value:Float):Void;

	@:native('alDistanceModel')
	public static function distanceModel(distanceModel:ALenum):Void;

	@:native('alGetString')
	public static function getString(parameter:ALenum):String;

	@:native('alGetBooleanv')
	public static function getBooleanv(parameter:ALenum, value:cpp.Pointer<ALboolean>):Void;

	@:native('alGetIntegerv')
	public static function getIntegerv(parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGetFloatv')
	public static function getFloatv(parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alGetDoublev')
	public static function getDoublev(parameter:ALenum, value:cpp.Pointer<Double>):Void;

	@:native('alGetBoolean')
	public static function getBoolean(parameter:ALenum):ALboolean;

	@:native('alGetInteger')
	public static function getInteger(parameter:ALenum):Int;

	@:native('alGetFloat')
	public static function getFloat(parameter:ALenum):Float;

	@:native('alGetDouble')
	public static function getDouble(parameter:ALenum):Double;

	@:native('alIsExtensionPresent')
	public static function isExtensionPresent(extension:String):ALboolean;

	@:native('alGetProcAddress')
	public static function getProcAddress(func:String):cpp.Pointer<Void>;

	@:native('alGetEnumValue')
	public static function getEnumValue(enumName:String):ALenum;

	@:native('alListenerf')
	public static function listenerf(parameter:ALenum, value:Float):Void;

	@:native('alListener3f')
	public static function listener3f(parameter:ALenum, value1:Float, value2:Float, value3:Float):Void;

	@:native('alListenerfv')
	public static function listenerfv(parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alListeneri')
	public static function listeneri(parameter:ALenum, value:Int):Void;

	@:native('alListener3i')
	public static function listener3i(parameter:ALenum, value1:Int, value2:Int, value3:Int):Void;

	@:native('alListeneriv')
	public static function listeneriv(parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGetListenerf')
	public static function getListenerf(parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alGetListener3f')
	public static function getListener3f(parameter:ALenum, value1:cpp.Pointer<Float>, value2:cpp.Pointer<Float>, value3:cpp.Pointer<Float>):Void;

	@:native('alGetListenerfv')
	public static function getListenerfv(parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alGetListeneri')
	public static function getListeneri(parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGetListener3i')
	public static function getListener3i(parameter:ALenum, value1:cpp.Pointer<Int>, value2:cpp.Pointer<Int>, value3:cpp.Pointer<Int>):Void;

	@:native('alGetListeneriv')
	public static function getListeneriv(parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGenSources')
	public static function genSources(n:ALsizei, sources:cpp.Pointer<ALuint>):Void;

	@:native('alDeleteSources')
	public static function deleteSources(n:ALsizei, sources:cpp.Pointer<ALuint>):Void;

	@:native('alIsSource')
	public static function isSource(source:ALuint):ALboolean;

	@:native('alSourcef')
	public static function sourcef(source:ALuint, parameter:ALenum, value:Float):Void;

	@:native('alSource3f')
	public static function source3f(source:ALuint, parameter:ALenum, value1:Float, value2:Float, value3:Float):Void;

	@:native('alSourcefv')
	public static function sourcefv(source:ALuint, parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alSourcei')
	public static function sourcei(source:ALuint, parameter:ALenum, value:Int):Void;

	@:native('alSource3i')
	public static function source3i(source:ALuint, parameter:ALenum, value1:Int, value2:Int, value3:Int):Void;

	@:native('alSourceiv')
	public static function sourceiv(source:ALuint, parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGetSourcef')
	public static function getSourcef(source:ALuint, parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alGetSource3f')
	public static function getSource3f(source:ALuint, parameter:ALenum, value1:cpp.Pointer<Float>, value2:cpp.Pointer<Float>, value3:cpp.Pointer<Float>):Void;

	@:native('alGetSourcefv')
	public static function getSourcefv(source:ALuint, parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alGetSourcei')
	public static function getSourcei(source:ALuint, parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGetSource3i')
	public static function getSource3i(source:ALuint, parameter:ALenum, value1:cpp.Pointer<Int>, value2:cpp.Pointer<Int>, value3:cpp.Pointer<Int>):Void;

	@:native('alGetSourceiv')
	public static function getSourceiv(source:ALuint, parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alSourcePlay')
	public static function sourcePlay(source:ALuint):Void;

	@:native('alSourceStop')
	public static function sourceStop(source:ALuint):Void;

	@:native('alSourceRewind')
	public static function sourceRewind(source:ALuint):Void;

	@:native('alSourcePause')
	public static function sourcePause(source:ALuint):Void;

	@:native('alSourcePlayv')
	public static function sourcePlayv(n:ALsizei, sources:cpp.Pointer<ALuint>):Void;

	@:native('alSourceStopv')
	public static function sourceStopv(n:ALsizei, sources:cpp.Pointer<ALuint>):Void;

	@:native('alSourceRewindv')
	public static function sourceRewindv(n:ALsizei, sources:cpp.Pointer<ALuint>):Void;

	@:native('alSourcePausev')
	public static function sourcePausev(n:ALsizei, sources:cpp.Pointer<ALuint>):Void;

	@:native('alSourceQueueBuffers')
	public static function sourceQueueBuffers(source:ALuint, nb:ALsizei, buffers:cpp.Pointer<ALuint>):Void;

	@:native('alSourceUnqueueBuffers')
	public static function sourceUnqueueBuffers(source:ALuint, nb:ALsizei, buffers:cpp.Pointer<ALuint>):Void;

	@:native('alGenBuffers')
	public static function genBuffers(n:ALsizei, buffers:cpp.Pointer<ALuint>):Void;

	@:native('alDeleteBuffers')
	public static function deleteBuffers(n:ALsizei, buffers:cpp.Pointer<ALuint>):Void;

	@:native('alIsBuffer')
	public static function isBuffer(buffer:ALuint):ALboolean;

	@:native('alBufferData')
	public static function bufferData(buffer:ALuint, format:ALenum, data:cpp.Pointer<Void>, size:ALsizei, sampleRate:ALsizei):Void;

	@:native('alBufferf')
	public static function bufferf(buffer:ALuint, parameter:ALenum, value:Float):Void;

	@:native('alBuffer3f')
	public static function buffer3f(buffer:ALuint, parameter:ALenum, value1:Float, value2:Float, value3:Float):Void;

	@:native('alBufferfv')
	public static function bufferfv(buffer:ALuint, parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alBufferi')
	public static function bufferi(buffer:ALuint, parameter:ALenum, value:Int):Void;

	@:native('alBuffer3i')
	public static function buffer3i(buffer:ALuint, parameter:ALenum, value1:Int, value2:Int, value3:Int):Void;

	@:native('alBufferiv')
	public static function bufferiv(buffer:ALuint, parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGetBufferf')
	public static function getBufferf(buffer:ALuint, parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alGetBuffer3f')
	public static function getBuffer3f(buffer:ALuint, parameter:ALenum, value1:cpp.Pointer<Float>, value2:cpp.Pointer<Float>, value3:cpp.Pointer<Float>):Void;

	@:native('alGetBufferfv')
	public static function getBufferfv(buffer:ALuint, parameter:ALenum, value:cpp.Pointer<Float>):Void;

	@:native('alGetBufferi')
	public static function getBufferi(buffer:ALuint, parameter:ALenum, value:cpp.Pointer<Int>):Void;

	@:native('alGetBuffer3i')
	public static function getBuffer3i(buffer:ALuint, parameter:ALenum, value1:cpp.Pointer<Int>, value2:cpp.Pointer<Int>, value3:cpp.Pointer<Int>):Void;

	@:native('alGetBufferiv')
	public static function getBufferiv(buffer:ALuint, parameter:ALenum, value:cpp.Pointer<Int>):Void;
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
typedef ALboolean = Bool;
