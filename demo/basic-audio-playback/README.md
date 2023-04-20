# basic-audio-playback

This is a demo of the library that plays one wav file using a sound abstraction system. The code for this system can be found in `Sound.hx` with the `Sound` and `SoundSystem` classes that do the behind the scenes work.

## Usage

This demo should be used to demonstrate a simple way of abstracting the more complicated parts of OpenAL away from the user in a way that may be expandable for further development (ex: adding more supported audio files).

## Building

To build, first run `haxe build.hxml` in this folder, then run the application to hear the sound playing. Make sure to run the program from the bin folder or else it will not load the audio correctly.
