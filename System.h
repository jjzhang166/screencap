#ifndef SYSTEM_H
#define SYSTEM_H

#include <windows.h>

#define VALUE(x) {#x , x}

namespace System
	{
	const size_t MALLOC_MAX = 0x7fffffffffffffffLL;

	const struct
		{
		const char* name;
		unsigned int value;
		} priorityClass[6] =
		{
		VALUE( IDLE_PRIORITY_CLASS )
		, VALUE( BELOW_NORMAL_PRIORITY_CLASS )
		, VALUE( NORMAL_PRIORITY_CLASS )
		, VALUE( ABOVE_NORMAL_PRIORITY_CLASS )
		, VALUE( HIGH_PRIORITY_CLASS )
		, VALUE( REALTIME_PRIORITY_CLASS )
		};

	inline unsigned int CPUcountGet()
		{
		SYSTEM_INFO sysinfo;
		GetSystemInfo( &sysinfo );
		return sysinfo.dwNumberOfProcessors;
		}

	inline unsigned int procPrioClassCountGet()
		{
		return 6;
		}
	};
#undef VALUE
#endif
