#pragma once

#include <AL/al.h>
#include <AL/alc.h>

extern void deleteBufferHelper(int n, int buffer)
{
	unsigned int bufferHelper = (unsigned int)buffer;
	alDeleteBuffers(n, &bufferHelper);
}

extern void deleteSourceHelper(int n, int source)
{
	unsigned int sourceHelper = (unsigned int)source;
	alDeleteSources(n, &sourceHelper);
}
