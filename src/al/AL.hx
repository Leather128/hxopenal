package al;

/**
 * Bindings for `include/AL/al.h`.
 * @author Leather128
 */
@:keep
@:buildXml('<include name="${haxelib:hxopenal}/include.xml" />')
@:include('AL/al.h')
extern class AL {
	// defines //
	public static inline final NONE:Int = 0;
	public static inline final FALSE:Int = 0;
	public static inline final TRUE:Int = 1;
	public static inline final SOURCE_RELATIVE:Int = 0x202;
	public static inline final CONE_INNER_ANGLE:Int = 0x1001;
	public static inline final CONE_OUTER_ANGLE:Int = 0x1002;
	public static inline final PITCH:Int = 0x1003;
	public static inline final POSITION:Int = 0x1004;
	public static inline final DIRECTION:Int = 0x1005;
	public static inline final VELOCITY:Int = 0x1006;
	public static inline final LOOPING:Int = 0x1007;
	public static inline final BUFFER:Int = 0x1009;
	public static inline final GAIN:Int = 0x100A;
	public static inline final MIN_GAIN:Int = 0x100D;
	public static inline final MAX_GAIN:Int = 0x100E;
	public static inline final ORIENTATION:Int = 0x100F;
	public static inline final SOURCE_STATE:Int = 0x1010;
	public static inline final INITIAL:Int = 0x1011;
	public static inline final PLAYING:Int = 0x1012;
	public static inline final PAUSED:Int = 0x1013;
	public static inline final STOPPED:Int = 0x1014;
	public static inline final BUFFERS_QUEUED:Int = 0x1015;
	public static inline final BUFFERS_PROCESSED:Int = 0x1016;
	public static inline final REFERENCE_DISTANCE:Int = 0x1020;
	public static inline final ROLLOFF_FACTOR:Int = 0x1021;
	public static inline final CONE_OUTER_GAIN:Int = 0x1022;
	public static inline final MAX_DISTANCE:Int = 0x1023;
	public static inline final SEC_OFFSET:Int = 0x1024;
	public static inline final SAMPLE_OFFSET:Int = 0x1025;
	public static inline final BYTE_OFFSET:Int = 0x1026;
	public static inline final SOURCE_TYPE:Int = 0x1027;
	public static inline final STATIC:Int = 0x1028;
	public static inline final STREAMING:Int = 0x1029;
	public static inline final UNDETERMINED:Int = 0x1030;
	public static inline final FORMAT_MONO8:Int = 0x1100;
	public static inline final FORMAT_MONO16:Int = 0x1101;
	public static inline final FORMAT_STEREO8:Int = 0x1102;
	public static inline final FORMAT_STEREO16:Int = 0x1103;
	public static inline final FREQUENCY:Int = 0x2001;
	public static inline final BITS:Int = 0x2002;
	public static inline final CHANNELS:Int = 0x2003;
	public static inline final SIZE:Int = 0x2004;
	public static inline final UNUSED:Int = 0x2010;
	public static inline final PENDING:Int = 0x2011;
	public static inline final PROCESSED:Int = 0x2012;
	public static inline final NO_ERROR:Int = 0;
	public static inline final INVALID_NAME:Int = 0xA001;
	public static inline final INVALID_ENUM:Int = 0xA002;
	public static inline final INVALID_VALUE:Int = 0xA003;
	public static inline final INVALID_OPERATION:Int = 0xA004;
	public static inline final OUT_OF_MEMORY:Int = 0xA005;
	public static inline final VENDOR:Int = 0xB001;
	public static inline final VERSION:Int = 0xB002;
	public static inline final RENDERER:Int = 0xB003;
	public static inline final EXTENSIONS:Int = 0xB004;
	public static inline final DOPPLER_FACTOR:Int = 0xC000;
	public static inline final DOPPLER_VELOCITY:Int = 0xC001;
	public static inline final SPEED_OF_SOUND:Int = 0xC003;
	public static inline final DISTANCE_MODEL:Int = 0xD000;
	public static inline final INVERSE_DISTANCE:Int = 0xD001;
	public static inline final INVERSE_DISTANCE_CLAMPED:Int = 0xD002;
	public static inline final LINEAR_DISTANCE:Int = 0xD003;
	public static inline final LINEAR_DISTANCE_CLAMPED:Int = 0xD004;
	public static inline final EXPONENT_DISTANCE:Int = 0xD005;
	public static inline final EXPONENT_DISTANCE_CLAMPED:Int = 0xD006;

	// functions //
	@:native('alGetError')
	public static function getError():Int;

	@:native('alEnable')
	public static function enable(capability:Int):Void;

	@:native('alDisable')
	public static function disable(capability:Int):Void;

	@:native('alIsEnabled')
	public static function isEnabled(capability:Int):Bool;

	@:native('alDopplerFactor')
	public static function dopplerFactor(value:Single):Void;

	@:native('alDopplerVelocity')
	public static function dopplerVelocity(value:Single):Void;

	@:native('alSpeedOfSound')
	public static function speedOfSound(value:Single):Void;

	@:native('alDistanceModel')
	public static function distanceModel(distanceModel:Int):Void;

	@:native('alGetString')
	public static function getString(parameter:Int):cpp.ConstCharStar;

	@:native('alGetBooleanv')
	public static function getBooleanv(parameter:Int, value:cpp.Pointer<Bool>):Void;

	@:native('alGetIntegerv')
	public static function getIntegerv(parameter:Int, value:cpp.Pointer<Int>):Void;

	@:native('alGetFloatv')
	public static function getFloatv(parameter:Int, value:cpp.Pointer<Single>):Void;

	@:native('alGetDoublev')
	public static function getDoublev(parameter:Int, value:cpp.Pointer<Double>):Void;

	@:native('alGetBoolean')
	public static function getBoolean(parameter:Int):Bool;

	@:native('alGetInteger')
	public static function getInteger(parameter:Int):Int;

	@:native('alGetFloat')
	public static function getFloat(parameter:Int):Single;

	@:native('alGetDouble')
	public static function getDouble(parameter:Int):Double;

	@:native('alIsExtensionPresent')
	public static function isExtensionPresent(extension:cpp.ConstCharStar):Bool;

	@:native('alGetProcAddress')
	public static function getProcAddress(func:cpp.ConstCharStar):cpp.Pointer<cpp.Void>;

	@:native('alGetEnumValue')
	public static function getEnumValue(enumName:cpp.ConstCharStar):Int;

	@:native('alListenerf')
	public static function listenerf(parameter:Int, value:Single):Void;

	@:native('alListener3f')
	public static function listener3f(parameter:Int, value1:Single, value2:Single, value3:Single):Void;

	@:native('alListenerfv')
	public static function listenerfv(parameter:Int, value:cpp.Pointer<Single>):Void;

	@:native('alListeneri')
	public static function listeneri(parameter:Int, value:Int):Void;

	@:native('alListener3i')
	public static function listener3i(parameter:Int, value1:Int, value2:Int, value3:Int):Void;

	@:native('alListeneriv')
	public static function listeneriv(parameter:Int, value:cpp.Pointer<Any>):Void;

	@:native('alGetListenerf')
	public static function getListenerf(parameter:Int, value:cpp.Pointer<Single>):Void;

	@:native('alGetListener3f')
	public static function getListener3f(parameter:Int, value1:cpp.Pointer<Single>, value2:cpp.Pointer<Single>, value3:cpp.Pointer<Single>):Void;

	@:native('alGetListenerfv')
	public static function getListenerfv(parameter:Int, values:cpp.Pointer<Single>):Void;

	@:native('alGetListeneri')
	public static function getListeneri(parameter:Int, value:cpp.Pointer<Int>):Void;

	@:native('alGetListener3i')
	public static function getListener3i(parameter:Int, value1:cpp.Pointer<Int>, value2:cpp.Pointer<Int>, value3:cpp.Pointer<Int>):Void;

	@:native('alGetListeneriv')
	public static function getListeneriv(parameter:Int, values:cpp.Pointer<Array<Int>>):Void;

	@:native('alGenSources')
	public static inline function genSources(n:Int, sources:Array<Int>):Void {
		untyped __cpp__('alGenSources({0}, (unsigned int*)&({1}[0]))', n, sources);
	}

	@:native('alDeleteSources')
	public inline static function deleteSources(n:Int, source:cpp.UInt32):Void {
		HxAL.deleteSources(n, source);
	};

	@:native('alIsSource')
	public static function isSource(source:cpp.UInt32):Bool;

	@:native('alSourcef')
	public static function sourcef(source:cpp.UInt32, parameter:Int, value:Single):Void;

	@:native('alSource3f')
	public static function source3f(source:cpp.UInt32, parameter:Int, value1:Single, value2:Single, value3:Single):Void;

	@:native('alSourcefv')
	public static function sourcefv(source:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Single>>):Void;

	@:native('alSourcei')
	public static function sourcei(source:cpp.UInt32, parameter:Int, value:Int):Void;

	@:native('alSource3i')
	public static function source3i(source:cpp.UInt32, parameter:Int, value1:Int, value2:Int, value3:Int):Void;

	@:native('alSourceiv')
	public static function sourceiv(source:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Int>>):Void;

	@:native('alGetSourcef')
	public static function getSourcef(source:cpp.UInt32, parameter:Int, value:cpp.Pointer<Single>):Void;

	@:native('alGetSource3f')
	public static function getSource3f(source:cpp.UInt32, parameter:Int, value1:cpp.Pointer<Single>, value2:cpp.Pointer<Single>, value3:cpp.Pointer<Single>):Void;

	@:native('alGetSourcefv')
	public static function getSourcefv(source:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Single>>):Void;

	@:native('alGetSourcei')
	public static function getSourcei(source:cpp.UInt32, parameter:Int, value:cpp.Pointer<Int>):Void;

	@:native('alGetSource3i')
	public static function getSource3i(source:cpp.UInt32, parameter:Int, value1:cpp.Pointer<Int>, value2:cpp.Pointer<Int>, value3:cpp.Pointer<Int>):Void;

	@:native('alGetSourceiv')
	public static function getSourceiv(source:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Int>>):Void;

	@:native('alSourcePlay')
	public static function sourcePlay(source:cpp.UInt32):Void;

	@:native('alSourceStop')
	public static function sourceStop(source:cpp.UInt32):Void;

	@:native('alSourceRewind')
	public static function sourceRewind(source:cpp.UInt32):Void;

	@:native('alSourcePause')
	public static function sourcePause(source:cpp.UInt32):Void;

	@:native('alSourcePlayv')
	public static function sourcePlayv(n:Int, sources:cpp.Pointer<cpp.UInt32>):Void;

	@:native('alSourceStopv')
	public static function sourceStopv(n:Int, sources:cpp.Pointer<cpp.UInt32>):Void;

	@:native('alSourceRewindv')
	public static function sourceRewindv(n:Int, sources:cpp.Pointer<cpp.UInt32>):Void;

	@:native('alSourcePausev')
	public static function sourcePausev(n:Int, sources:cpp.Pointer<cpp.UInt32>):Void;

	@:native('alSourceQueueBuffers')
	public static function sourceQueueBuffers(source:cpp.UInt32, nb:Int, buffers:cpp.Pointer<cpp.UInt32>):Void;

	@:native('alSourceUnqueueBuffers')
	public static function sourceUnqueueBuffers(source:cpp.UInt32, nb:Int, buffers:cpp.Pointer<cpp.UInt32>):Void;

	@:native('alGenBuffers')
	public static inline function genBuffers(n:Int, buffers:Array<Int>):Void {
		untyped __cpp__('alGenBuffers({0}, (unsigned int*)&({1}[0]))', n, buffers);
	}

	@:native('alDeleteBuffers')
	public inline static function deleteBuffers(n:Int, buffer:cpp.UInt32):Void {
		HxAL.deleteBuffers(n, buffer);
	};

	@:native('alIsBuffer')
	public static function isBuffer(buffer:cpp.UInt32):Bool;

	@:native('alBufferData')
	private static function alBufferData(buffer:Int, format:Int, data:cpp.Pointer<cpp.cpp.UInt328>, size:Int, sampleRate:Int):Void;

	public static inline function bufferData(buffer:Int, format:Int, data:haxe.io.BytesData, size:Int, sampleRate:Int):Void {
		alBufferData(buffer, format, cpp.Pointer.arrayElem(data, 0), size, sampleRate);
	}

	@:native('alBufferf')
	public static function bufferf(buffer:cpp.UInt32, parameter:Int, value:Single):Void;

	@:native('alBuffer3f')
	public static function buffer3f(buffer:cpp.UInt32, parameter:Int, value1:Single, value2:Single, value3:Single):Void;

	@:native('alBufferfv')
	public static function bufferfv(buffer:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Single>>):Void;

	@:native('alBufferi')
	public static function bufferi(buffer:cpp.UInt32, parameter:Int, value:Int):Void;

	@:native('alBuffer3i')
	public static function buffer3i(buffer:cpp.UInt32, parameter:Int, value1:Int, value2:Int, value3:Int):Void;

	@:native('alBufferiv')
	public static function bufferiv(buffer:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Int>>):Void;

	@:native('alGetBufferf')
	public static function getBufferf(buffer:cpp.UInt32, parameter:Int, value:cpp.Pointer<Single>):Void;

	@:native('alGetBuffer3f')
	public static function getBuffer3f(buffer:cpp.UInt32, parameter:Int, value1:cpp.Pointer<Single>, value2:cpp.Pointer<Single>, value3:cpp.Pointer<Single>):Void;

	@:native('alGetBufferfv')
	public static function getBufferfv(buffer:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Single>>):Void;

	@:native('alGetBufferi')
	public static function getBufferi(buffer:cpp.UInt32, parameter:Int, value:cpp.Pointer<Int>):Void;

	@:native('alGetBuffer3i')
	public static function getBuffer3i(buffer:cpp.UInt32, parameter:Int, value1:cpp.Pointer<Int>, value2:cpp.Pointer<Int>, value3:cpp.Pointer<Int>):Void;

	@:native('alGetBufferiv')
	public static function getBufferiv(buffer:cpp.UInt32, parameter:Int, values:cpp.Pointer<Array<Int>>):Void;
}

@:include('AL/hxal.h')
extern class HxAL {
	@:native('deleteSourceHelper')
	public static function deleteSources(n:Int, source:cpp.UInt32):Void;

	@:native('deleteBufferHelper')
	public static function deleteBuffers(n:Int, buffer:cpp.UInt32):Void;
}

typedef Double = cpp.Float64;
