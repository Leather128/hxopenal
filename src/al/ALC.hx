package al;

import al.AL;
import cpp.Pointer;

/**
 * Bindings for `include/AL/alc.h`.
 * @author Leather128
 */
@:keep
@:buildXml('<include name="../../build/build.xml" />')
@:include('AL/alc.h')
extern class ALC {
	// defines //
	public static inline var ALC_FREQUENCY:Int = 0x1007;
	public static inline var ALC_REFRESH:Int = 0x1008;
	public static inline var ALC_SYNC:Int = 0x1009;
	public static inline var ALC_MONO_SOURCES:Int = 0x1010;
	public static inline var ALC_STEREO_SOURCES:Int = 0x1011;
	public static inline var ALC_NO_ERROR:Int = 0;
	public static inline var ALC_INVALID_DEVICE:Int = 0xA001;
	public static inline var ALC_INVALID_CONTEXT:Int = 0xA002;
	public static inline var ALC_INVALID_ENUM:Int = 0xA003;
	public static inline var ALC_INVALID_VALUE:Int = 0xA004;
	public static inline var ALC_OUT_OF_MEMORY:Int = 0xA005;
	public static inline var ALC_MAJOR_VERSION:Int = 0x1000;
	public static inline var ALC_MINOR_VERSION:Int = 0x1001;
	public static inline var ALC_ATTRIBUTES_SIZE:Int = 0x1002;
	public static inline var ALC_ALL_ATTRIBUTES:Int = 0x1003;
	public static inline var ALC_DEFAULT_DEVICE_SPECIFIER:Int = 0x1004;
	public static inline var ALC_DEVICE_SPECIFIER:Int = 0x1005;
	public static inline var ALC_EXTENSIONS:Int = 0x1006;
	public static inline var ALC_EXT_CAPTURE:Int = 1;
	public static inline var ALC_CAPTURE_DEVICE_SPECIFIER:Int = 0x310;
	public static inline var ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER:Int = 0x311;
	public static inline var ALC_CAPTURE_SAMPLES:Int = 0x312;
	public static inline var ALC_ENUMERATE_ALL_EXT:Int = 1;
	public static inline var ALC_DEFAULT_ALL_DEVICES_SPECIFIER:Int = 0x1012;
	public static inline var ALC_ALL_DEVICES_SPECIFIER:Int = 0x1013;

	// functions //
	@:native('alcOpenDevice')
	public static function openDevice(?deviceName:String):Device;

	@:native('alcCloseDevice')
	public static function closeDevice(device:Device):ALboolean;

	@:native('alcCreateContext')
	public static function createContext(device:Device, ?attributeList:Int):Context;

	@:native('alcMakeContextCurrent')
	public static function makeContextCurrent(context:Context):ALboolean;

	@:native('alcProcessContext')
	public static function processContext(context:Context):Void;

	@:native('alcSuspendContext')
	public static function suspendContext(context:Context):Void;

	@:native('alcDestroyContext')
	public static function destroyContext(context:Context):Void;

	@:native('alcGetCurrentContext')
	public static function getCurrentContext():Context;

	@:native('alcGetContextsDevice')
	public static function getContextsDevice(context:Context):Device;

	@:native('alcGetError')
	public static function getError(device:Device):ALenum;

	@:native('alcIsExtensionPresent')
	public static function isExtensionPresent(device:Device, extension:String):ALboolean;

	@:native('alcGetProcAddress')
	public static function getProcAddress(device:Device, func:String):cpp.Pointer<Void>;

	@:native('alcGetEnumValue')
	public static function getEnumValue(device:Device, enumName:String):ALenum;

	@:native('alcGetString')
	public static function getString(device:Device, parameter:ALenum):String;

	@:native('alcGetIntegerv')
	public static function getIntegerv(device:Device, parameter:ALenum, size:ALsizei, ?values:cpp.Pointer<Int>):Void;

	@:native('alcCaptureOpenDevice')
	public static function captureOpenDevice(deviceName:String, frequency:ALuint, format:ALenum, bufferSize:ALsizei):Device;

	@:native('alcCaptureCloseDevice')
	public static function captureCloseDevice(device:Device):ALboolean;

	@:native('alcCaptureStart')
	public static function captureStart(device:Device):Void;

	@:native('alcCaptureStop')
	public static function captureStop(device:Device):Void;

	@:native('alcCaptureSamples')
	public static function captureSamples(device:Device, buffer:cpp.Pointer<Void>, samples:ALsizei):Void;
}

@:native('ALCdevice')
@:include('AL/alc.h')
extern class ALCdevice {}

@:native('ALCcontext')
@:include('AL/alc.h')
extern class ALCcontext {}

typedef Device = cpp.Pointer<ALCdevice>;
typedef Context = cpp.Pointer<ALCcontext>;
