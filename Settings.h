#ifndef SETTINGS_H
#define SETTINGS_H

#include "SettingsFrame.h"
#include "System.h"
#include "ErrorHandler.h"
#include "OptionsDebug.h"
#include <ctime>
#include <algorithm>
#include <cstdio>

class Settings:public ErrorHandler
	{
	public:
		static void Framerate_lookup_init();

		SettingsFrame framedata;
		static const unsigned int BENCHMARK = 1;
		static const unsigned int STOP = 0x80000000;

		Settings():
			size_buffer( 4096 )
			, framerate( 25 )
			, thread_count( System::CPUcountGet() / 2 )
			, proc_priority( System::procPrioClassCountGet() / 2 )
			, flags( 0 )
			, err(this)
			{
			filename[0] = '\0';
			}

		size_t sizeBufferGet() const
			{
			return size_buffer;
			}

		Settings& sizeBufferSet( size_t new_size )
			{
			size_buffer = std::max( std::min( new_size, System::MALLOC_MAX ), 1uLL );
			return *this;
			}

		const char* filenameGet() const
			{
			return filename;
			}

		Settings& filenameSet( const char* filename_new )
			{
			strncpy( filename, filename_new, MAX_PATH );
			filename[MAX_PATH-1] = '\0';
			return *this;
			}

		unsigned int framerateGet() const
			{
			return framerate;
			}

		Settings& framerateSet( unsigned int framerate_new )
			{
			if( framerate_new < 1 )
				{
				framerate = 1;
				return *this;
				}

			if( framerate_new > 1000 )
				{
				framerate = 1000;
				return *this;
				}

			framerate = framerate_lookup[framerate_new-1];
			return *this;
			}

		unsigned int threadCountGet() const
			{
			return thread_count;
			}

		Settings& threadCountSet( unsigned int thread_count_new )
			{
			if( thread_count_new < 1 )
				{
				thread_count = 1;
				return *this;
				}

			unsigned int nCpu = System::CPUcountGet();

			if( thread_count_new > nCpu )
				{
				thread_count = nCpu;
				return *this;
				}

			thread_count = thread_count_new;
			return *this;
			}

		unsigned int procPriorityGet() const
			{
			return proc_priority;
			}

		Settings& procPrioritySet( unsigned int proc_prio_new )
			{
			size_t prioCount = System::procPrioClassCountGet();

			if( proc_prio_new >= prioCount )
				{
				proc_priority = prioCount - 1;
				return *this;
				}

			proc_priority = proc_prio_new;
			return *this;
			}

		unsigned int flagsGet( unsigned int flag ) const
			{
			return flags & flag;
			}

		Settings& flagsSet( unsigned int flags_new )
			{
			flags |= flags_new;
			return *this;
			}

		Settings& flagsUnset( unsigned int flags_new )
			{
			flags &= ( ~flags_new );
			return *this;
			}



		Settings& framecountIncrement()
			{
			++framecount;
			return *this;
			}

		Settings& framecountReset()
			{
			framecount = 0;
			time = clock();
			return *this;
			}

		Settings& timeTerminate()
			{
			time = clock() - time;
			return *this;
			}

		clock_t timeGet() const
			{
			return time;
			}

		size_t framecountGet() const
			{
			return framecount;
			}


		void errorHandlerSet(ErrorHandler& e)
			{err=&e;}

		void errorPost(const char* message)
			{
			err->messageDisplay(message);
			}

		void messageDisplay(const char* message)
			{DEBUGPRINT("%s",message);}

	private:
		static unsigned int framerate_lookup[1000];

		size_t size_buffer;
		char filename[MAX_PATH];
		unsigned int framerate;
		unsigned int thread_count;
		unsigned int proc_priority;
		volatile unsigned int flags;

		size_t framecount;
		clock_t time;
		ErrorHandler* err;

		friend void printf(const Settings& s);
	};

inline void printf(const Settings& s)
	{
	printf("filename=%s\n",s.filename);
	printf("framerate=%u\n",s.framerate);
	printf("thread_count=%u\n",s.thread_count);
	printf("proc_priority=%u\n",s.proc_priority);
	printf("flags=%x\n",s.flags);
	printf("framecount=3%I64u\n\n",s.framecount);
	}

#endif
