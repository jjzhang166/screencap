#ifndef TASK_H
#define TASK_H

#include "TaskData.h"
#include "error.h"
#include <windows.h>

/// class Task -
class Task
	{
	private:
		HANDLE thread;
		TaskData data;

		static DWORD WINAPI thread_callback( void* taskdata )
			{
			TaskData* data = ( TaskData* )taskdata;
			data->run();
			return 0;
			}

		void waitAndClose()
			{
			if( thread != NULL )
				{
				WaitForSingleObject( thread, INFINITE );
				CloseHandle( thread );
				}
			}

	public:
		Task( const SettingsFrame& settings, MngFile& file_out ):
			thread( NULL )
			, data( settings, file_out )
			{
			}

		void run()
			{
			thread = CreateThread( NULL, 0, thread_callback, &data, 0, NULL );
			}

		Task& frameIndexSet(size_t k)
			{
			waitAndClose();
			data.frameIndexSet(k);
			return *this;
			}


		~Task()
			{
			waitAndClose();
			}
	};

#endif
