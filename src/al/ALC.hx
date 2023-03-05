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
