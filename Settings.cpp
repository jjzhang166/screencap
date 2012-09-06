#include "Settings.h"

#ifndef NDEBUG
#define NDEBUG
#endif
#include "OptionsDebug.h"
#include <cstdlib>

unsigned int Settings::framerate_lookup[1000];

void Settings::Framerate_lookup_init()
	{
	unsigned int rates_accepted[1000];
	unsigned int* p_rtab = rates_accepted;

	for( unsigned int r = 1; r <= 1000; ++r )
		{
		if( 1000 % r == 0 )
			{
			*p_rtab = r;
			DEBUGPRINT( "%u\n", r );
			++p_rtab;
			}
		}

	//TODO Use a more efficient algorithm. However this is just the init phase.
	size_t n = p_rtab - rates_accepted;
	DEBUGPRINT( "%I64u\n", n );

	for( unsigned int r = 0; r < 1000; ++r )
		{
		unsigned int i_mindist = 0;
		unsigned int mindist = abs(( r + 1 ) - rates_accepted[i_mindist] );
		DEBUGPRINT( "r=%u\n", r );

		for( unsigned int index_accepted = i_mindist + 1; index_accepted < n; ++index_accepted )
			{
			DEBUGPRINT( "    ia=%u\n", index_accepted );
			unsigned int newdist = abs(( r + 1 ) - rates_accepted[index_accepted] );

			if( newdist < mindist )
				{
				i_mindist = index_accepted;
				mindist = newdist;
				}
			}

		framerate_lookup[r] = rates_accepted[i_mindist];
		}

	DEBUGPRINT( "Init done" );
	}
