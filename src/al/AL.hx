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
	public static inline var NONE:Int = 0;
	public static inline var FALSE:Int = 0;
	public static inline var TRUE:Int = 1;
	public static inline var SOURCE_RELATIVE:Int = 0x202;
	public static inline var CONE_INNER_ANGLE:Int = 0x1001;
	public static inline var CONE_OUTER_ANGLE:Int = 0x1002;
	public static inline var PITCH:Int = 0x1003;
	public static inline var POSITION:Int = 0x1004;
	public static inline var DIRECTION:Int = 0x1005;
	public static inline var VELOCITY:Int = 0x1006;
	public static inline var LOOPING:Int = 0x1007;
	public static inline var BUFFER:Int = 0x1009;
	public static inline var GAIN:Int = 0x100A;
	public static inline var MIN_GAIN:Int = 0x100D;
	public static inline var MAX_GAIN:Int = 0x100E;
	public static inline var ORIENTATION:Int = 0x100F;
	public static inline var SOURCE_STATE:Int = 0x1010;
	public static inline var INITIAL:Int = 0x1011;
	public static inline var PLAYING:Int = 0x1012;
	public static inline var PAUSED:Int = 0x1013;
	public static inline var STOPPED:Int = 0x1014;
	public static inline var BUFFERS_QUEUED:Int = 0x1015;
	public static inline var BUFFERS_PROCESSED:Int = 0x1016;
	public static inline var REFERENCE_DISTANCE:Int = 0x1020;
	public static inline var ROLLOFF_FACTOR:Int = 0x1021;
	public static inline var CONE_OUTER_GAIN:Int = 0x1022;
	public static inline var MAX_DISTANCE:Int = 0x1023;
	public static inline var SEC_OFFSET:Int = 0x1024;
	public static inline var SAMPLE_OFFSET:Int = 0x1025;
	public static inline var BYTE_OFFSET:Int = 0x1026;
	public static inline var SOURCE_TYPE:Int = 0x1027;
	public static inline var STATIC:Int = 0x1028;
	public static inline var STREAMING:Int = 0x1029;
	public static inline var UNDETERMINED:Int = 0x1030;
	public static inline var FORMAT_MONO8:Int = 0x1100;
	public static inline var FORMAT_MONO16:Int = 0x1101;
	public static inline var FORMAT_STEREO8:Int = 0x1102;
	public static inline var FORMAT_STEREO16:Int = 0x1103;
	public static inline var FREQUENCY:Int = 0x2001;
	public static inline var BITS:Int = 0x2002;
	public static inline var CHANNELS:Int = 0x2003;
	public static inline var SIZE:Int = 0x2004;
	public static inline var UNUSED:Int = 0x2010;
	public static inline var PENDING:Int = 0x2011;
	public static inline var PROCESSED:Int = 0x2012;
	public static inline var NO_ERROR:Int = 0;
	public static inline var INVALID_NAME:Int = 0xA001;
	public static inline var INVALID_ENUM:Int = 0xA002;
	public static inline var INVALID_VALUE:Int = 0xA003;
	public static inline var INVALID_OPERATION:Int = 0xA004;
	public static inline var OUT_OF_MEMORY:Int = 0xA005;
	public static inline var VENDOR:Int = 0xB001;
	public static inline var VERSION:Int = 0xB002;
	public static inline var RENDERER:Int = 0xB003;
	public static inline var EXTENSIONS:Int = 0xB004;
	public static inline var DOPPLER_FACTOR:Int = 0xC000;
	public static inline var DOPPLER_VELOCITY:Int = 0xC001;
	public static inline var SPEED_OF_SOUND:Int = 0xC003;
	public static inline var DISTANCE_MODEL:Int = 0xD000;
	public static inline var INVERSE_DISTANCE:Int = 0xD001;
	public static inline var INVERSE_DISTANCE_CLAMPED:Int = 0xD002;
	public static inline var LINEAR_DISTANCE:Int = 0xD003;
	public static inline var LINEAR_DISTANCE_CLAMPED:Int = 0xD004;
	public static inline var EXPONENT_DISTANCE:Int = 0xD005;
	public static inline var EXPONENT_DISTANCE_CLAMPED:Int = 0xD006;

	// functions //
	@:native('alGetError')
	public static function getError():Int;

	@:native('alEnable')
	public static function enable(capability:Int):Void;

	@:native('alDisable')
	public static function disable(capability:Int):Void;

	@:native('alIsEnabled')
	public static function isEnabled(capability:Int):ALboolean;

	@:native('alDopplerFactor')
	public static function dopplerFactor(value:Float):Void;

	@:native('alDopplerVelocity')
	public static function dopplerVelocity(value:Float):Void;

	@:native('alSpeedOfSound')
	public static function speedOfSound(value:Float):Void;

	@:native('alDistanceModel')
	public static function distanceModel(distanceModel:Int):Void;

	@:native('alGetString')
	public static function getString(parameter:Int):String;

	@:native('alGetBooleanv')
	public static function getBooleanv(parameter:Int, value:cpp.Star<ALboolean>):Void;

	@:native('alGetIntegerv')
	public static function getIntegerv(parameter:Int, value:cpp.Star<Int>):Void;

	@:native('alGetFloatv')
	public static function getFloatv(parameter:Int, value:cpp.Star<Float>):Void;

	@:native('alGetDoublev')
	public static function getDoublev(parameter:Int, value:cpp.Star<Double>):Void;

	@:native('alGetBoolean')
	public static function getBoolean(parameter:Int):ALboolean;

	@:native('alGetInteger')
	public static function getInteger(parameter:Int):Int;

	@:native('alGetFloat')
	public static function getFloat(parameter:Int):Float;

	@:native('alGetDouble')
	public static function getDouble(parameter:Int):Double;

	@:native('alIsExtensionPresent')
	public static function isExtensionPresent(extension:String):ALboolean;

	@:native('alGetProcAddress')
	public static function getProcAddress(func:String):cpp.Star<Void>;

	@:native('alGetEnumValue')
	public static function getEnumValue(enumName:String):Int;

	@:native('alListenerf')
	public static function listenerf(parameter:Int, value:Float):Void;

	@:native('alListener3f')
	public static function listener3f(parameter:Int, value1:Float, value2:Float, value3:Float):Void;

	@:native('alListenerfv')
	public static function listenerfv(parameter:Int, value:cpp.Star<Single>):Void;

	@:native('alListeneri')
	public static function listeneri(parameter:Int, value:Int):Void;

	@:native('alListener3i')
	public static function listener3i(parameter:Int, value1:Int, value2:Int, value3:Int):Void;

	@:native('alListeneriv')
	public static function listeneriv(parameter:Int, value:cpp.Star<Any>):Void;

	@:native('alGetListenerf')
	public static function getListenerf(parameter:Int, value:cpp.Star<Float>):Void;

	@:native('alGetListener3f')
	public static function getListener3f(parameter:Int, value1:cpp.Star<Float>, value2:cpp.Star<Float>, value3:cpp.Star<Float>):Void;

	@:native('alGetListenerfv')
	public static function getListenerfv(parameter:Int, values:cpp.Star<Single>):Void;

	@:native('alGetListeneri')
	public static function getListeneri(parameter:Int, value:cpp.Star<Int>):Void;

	@:native('alGetListener3i')
	public static function getListener3i(parameter:Int, value1:cpp.Star<Int>, value2:cpp.Star<Int>, value3:cpp.Star<Int>):Void;

	@:native('alGetListeneriv')
	public static function getListeneriv(parameter:Int, values:cpp.Star<Array<Int>>):Void;

	@:native('alGenSources')
	public static inline function genSources(n:Int, sources:Array<Int>):Void {
		untyped __cpp__('alGenSources({0}, (unsigned int*)&({1}[0]))', n, sources);
	}

	@:native('alDeleteSources')
	public inline static function deleteSources(n:Int, source:UInt):Void {
		HxAL.deleteSources(n, source);
	};

	@:native('alIsSource')
	public static function isSource(source:UInt):ALboolean;

	@:native('alSourcef')
	public static function sourcef(source:UInt, parameter:Int, value:Float):Void;

	@:native('alSource3f')
	public static function source3f(source:UInt, parameter:Int, value1:Float, value2:Float, value3:Float):Void;

	@:native('alSourcefv')
	public static function sourcefv(source:UInt, parameter:Int, values:cpp.Star<Array<Float>>):Void;

	@:native('alSourcei')
	public static function sourcei(source:UInt, parameter:Int, value:Int):Void;

	@:native('alSource3i')
	public static function source3i(source:UInt, parameter:Int, value1:Int, value2:Int, value3:Int):Void;

	@:native('alSourceiv')
	public static function sourceiv(source:UInt, parameter:Int, values:cpp.Star<Array<Int>>):Void;

	@:native('alGetSourcef')
	public static function getSourcef(source:UInt, parameter:Int, value:cpp.Star<Float>):Void;

	@:native('alGetSource3f')
	public static function getSource3f(source:UInt, parameter:Int, value1:cpp.Star<Float>, value2:cpp.Star<Float>, value3:cpp.Star<Float>):Void;

	@:native('alGetSourcefv')
	public static function getSourcefv(source:UInt, parameter:Int, values:cpp.Star<Array<Float>>):Void;

	@:native('alGetSourcei')
	public static function getSourcei(source:UInt, parameter:Int, value:cpp.Pointer<Int>):Void;

	@:native('alGetSource3i')
	public static function getSource3i(source:UInt, parameter:Int, value1:cpp.Star<Int>, value2:cpp.Star<Int>, value3:cpp.Star<Int>):Void;

	@:native('alGetSourceiv')
	public static function getSourceiv(source:UInt, parameter:Int, values:cpp.Star<Array<Int>>):Void;

	@:native('alSourcePlay')
	public static function sourcePlay(source:UInt):Void;

	@:native('alSourceStop')
	public static function sourceStop(source:UInt):Void;

	@:native('alSourceRewind')
	public static function sourceRewind(source:UInt):Void;

	@:native('alSourcePause')
	public static function sourcePause(source:UInt):Void;

	@:native('alSourcePlayv')
	public static function sourcePlayv(n:Int, sources:cpp.Star<UInt>):Void;

	@:native('alSourceStopv')
	public static function sourceStopv(n:Int, sources:cpp.Star<UInt>):Void;

	@:native('alSourceRewindv')
	public static function sourceRewindv(n:Int, sources:cpp.Star<UInt>):Void;

	@:native('alSourcePausev')
	public static function sourcePausev(n:Int, sources:cpp.Star<UInt>):Void;

	@:native('alSourceQueueBuffers')
	public static function sourceQueueBuffers(source:UInt, nb:Int, buffers:cpp.Star<UInt>):Void;

	@:native('alSourceUnqueueBuffers')
	public static function sourceUnqueueBuffers(source:UInt, nb:Int, buffers:cpp.Star<UInt>):Void;

	@:native('alGenBuffers')
	public static inline function genBuffers(n:Int, buffers:Array<Int>):Void {
		untyped __cpp__('alGenBuffers({0}, (unsigned int*)&({1}[0]))', n, buffers);
	}

	@:native('alDeleteBuffers')
	public inline static function deleteBuffers(n:Int, buffer:UInt):Void {
		HxAL.deleteBuffers(n, buffer);
	};

	@:native('alIsBuffer')
	public static function isBuffer(buffer:UInt):ALboolean;

	@:native('alBufferData')
	private static function alBufferData(buffer:Int, format:Int, data:cpp.Pointer<cpp.UInt8>, size:Int, sampleRate:Int):Void;

	public static inline function bufferData(buffer:Int, format:Int, data:haxe.io.BytesData, size:Int, sampleRate:Int):Void {
		alBufferData(buffer, format, cpp.Pointer.arrayElem(data, 0), size, sampleRate);
	}

	@:native('alBufferf')
	public static function bufferf(buffer:UInt, parameter:Int, value:Float):Void;

	@:native('alBuffer3f')
	public static function buffer3f(buffer:UInt, parameter:Int, value1:Float, value2:Float, value3:Float):Void;

	@:native('alBufferfv')
	public static function bufferfv(buffer:UInt, parameter:Int, values:cpp.Star<Array<Float>>):Void;

	@:native('alBufferi')
	public static function bufferi(buffer:UInt, parameter:Int, value:Int):Void;

	@:native('alBuffer3i')
	public static function buffer3i(buffer:UInt, parameter:Int, value1:Int, value2:Int, value3:Int):Void;

	@:native('alBufferiv')
	public static function bufferiv(buffer:UInt, parameter:Int, values:cpp.Star<Array<Int>>):Void;

	@:native('alGetBufferf')
	public static function getBufferf(buffer:UInt, parameter:Int, value:cpp.Star<Float>):Void;

	@:native('alGetBuffer3f')
	public static function getBuffer3f(buffer:UInt, parameter:Int, value1:cpp.Star<Float>, value2:cpp.Star<Float>, value3:cpp.Star<Float>):Void;

	@:native('alGetBufferfv')
	public static function getBufferfv(buffer:UInt, parameter:Int, values:cpp.Star<Array<Float>>):Void;

	@:native('alGetBufferi')
	public static function getBufferi(buffer:UInt, parameter:Int, value:cpp.Star<Int>):Void;

	@:native('alGetBuffer3i')
	public static function getBuffer3i(buffer:UInt, parameter:Int, value1:cpp.Star<Int>, value2:cpp.Star<Int>, value3:cpp.Star<Int>):Void;

	@:native('alGetBufferiv')
	public static function getBufferiv(buffer:UInt, parameter:Int, values:cpp.Star<Array<Int>>):Void;
}

@:include('AL/hxal.h')
extern class HxAL {
	@:native('deleteSourceHelper')
	public static function deleteSources(n:Int, source:UInt):Void;

	@:native('deleteBufferHelper')
	public static function deleteBuffers(n:Int, buffer:UInt):Void;
}

typedef Double = cpp.Float64;
typedef ALboolean = Bool;
