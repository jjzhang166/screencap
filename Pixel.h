#ifndef PIXEL_H
#define PIXEL_H

#include <stdint.h>
#include <cassert>

struct Pixel
	{
	unsigned char b;
	unsigned char g;
	unsigned char r;
	unsigned char xalpha;
	
	operator uint32_t() const 
		{
		assert(sizeof(*this)==sizeof(uint32_t));
		return *(uint32_t*)this;
		}
	};

Pixel operator-(Pixel p1,const Pixel& p2)
	{
	p1.b-=p2.b;
	p1.g-=p2.g;
	p1.r-=p2.r;
	p1.xalpha-=p2.xalpha;
	return p1;
	}

#endif
