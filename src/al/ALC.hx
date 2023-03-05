package al;

import cpp.Pointer;

/**
 * Bindings for `include/AL/alc.h`.
 * 
 * @author Leather128
 */
@:keep
@:buildXml('<include name="../../build/build.xml" />')
@:include('AL/alc.h')
extern class ALC {
	@:native('alcOpenDevice')
	public static function openDevice(?deviceName:String):Device;

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
}

@:native('ALCdevice')
@:include('AL/alc.h')
extern class ALCdevice {}

@:native('ALCcontext')
@:include('AL/alc.h')
extern class ALCcontext {}

typedef Device = cpp.Pointer<ALCdevice>;
typedef Context = cpp.Pointer<ALCcontext>;
