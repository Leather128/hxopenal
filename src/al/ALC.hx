package al;

import al.AL;
import cpp.Pointer;

/**
 * Bindings for `include/AL/alc.h`.
 * @author Leather128
 */
@:keep
@:buildXml('<include name="${haxelib:hxopenal}/include.xml" />')
@:include('AL/alc.h')
extern class ALC {
	// defines //
	public static inline final FREQUENCY:Int = 0x1007;
	public static inline final REFRESH:Int = 0x1008;
	public static inline final SYNC:Int = 0x1009;
	public static inline final MONO_SOURCES:Int = 0x1010;
	public static inline final STEREO_SOURCES:Int = 0x1011;
	public static inline final NO_ERROR:Int = 0;
	public static inline final INVALID_DEVICE:Int = 0xA001;
	public static inline final INVALID_CONTEXT:Int = 0xA002;
	public static inline final INVALID_ENUM:Int = 0xA003;
	public static inline final INVALID_VALUE:Int = 0xA004;
	public static inline final OUT_OF_MEMORY:Int = 0xA005;
	public static inline final MAJOR_VERSION:Int = 0x1000;
	public static inline final MINOR_VERSION:Int = 0x1001;
	public static inline final ATTRIBUTES_SIZE:Int = 0x1002;
	public static inline final ALL_ATTRIBUTES:Int = 0x1003;
	public static inline final DEFAULT_DEVICE_SPECIFIER:Int = 0x1004;
	public static inline final DEVICE_SPECIFIER:Int = 0x1005;
	public static inline final EXTENSIONS:Int = 0x1006;
	public static inline final EXT_CAPTURE:Int = 1;
	public static inline final CAPTURE_DEVICE_SPECIFIER:Int = 0x310;
	public static inline final CAPTURE_DEFAULT_DEVICE_SPECIFIER:Int = 0x311;
	public static inline final CAPTURE_SAMPLES:Int = 0x312;
	public static inline final ENUMERATE_ALL_EXT:Int = 1;
	public static inline final DEFAULT_ALL_DEVICES_SPECIFIER:Int = 0x1012;
	public static inline final ALL_DEVICES_SPECIFIER:Int = 0x1013;

	// functions //
	@:native('alcOpenDevice')
	public static function openDevice(?deviceName:cpp.ConstCharStar):Device;

	@:native('alcCloseDevice')
	public static function closeDevice(device:Device):Bool;

	@:native('alcCreateContext')
	public static function createContext(device:Device, ?attributeList:Int):Context;

	@:native('alcMakeContextCurrent')
	public static function makeContextCurrent(context:Context):Bool;

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
	public static function getError(device:Device):Int;

	@:native('alcIsExtensionPresent')
	public static function isExtensionPresent(device:Device, extension:cpp.ConstCharStar):Bool;

	@:native('alcGetProcAddress')
	public static function getProcAddress(device:Device, func:cpp.ConstCharStar):cpp.Pointer<cpp.Void>;

	@:native('alcGetEnumValue')
	public static function getEnumValue(device:Device, enumName:cpp.ConstCharStar):Int;

	@:native('alcGetString')
	public static function getString(device:Device, parameter:Int):cpp.ConstCharStar;

	@:native('alcGetIntegerv')
	public static function getIntegerv(device:Device, parameter:Int, size:Int, ?values:cpp.Pointer<Int>):Void;

	@:native('alcCaptureOpenDevice')
	public static function captureOpenDevice(deviceName:cpp.ConstCharStar, frequency:cpp.UInt32, format:Int, bufferSize:Int):Device;

	@:native('alcCaptureCloseDevice')
	public static function captureCloseDevice(device:Device):Bool;

	@:native('alcCaptureStart')
	public static function captureStart(device:Device):Void;

	@:native('alcCaptureStop')
	public static function captureStop(device:Device):Void;

	@:native('alcCaptureSamples')
	public static function captureSamples(device:Device, buffer:cpp.Pointer<cpp.Void>, samples:Int):Void;
}

@:native('ALCdevice')
@:include('AL/alc.h')
extern class ALCdevice {}

@:native('ALCcontext')
@:include('AL/alc.h')
extern class ALCcontext {}

typedef Device = cpp.Pointer<ALCdevice>;
typedef Context = cpp.Pointer<ALCcontext>;
