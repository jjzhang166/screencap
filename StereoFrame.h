#ifndef STEREOFRAME_H
#define STEREOFRAME_H

#include <stdint.h>

//TODO Add more options: Sample rate, bitdepth, number of channels

struct StereoFrame
	{
	int16_t left;
	int16_t right;
	};

#endif
