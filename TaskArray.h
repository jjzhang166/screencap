#ifndef TASK_ARRAY_H
#define TASK_ARRAH_H
#include "Task.h"
#include <new>

/// class TaskArray -
class TaskArray
	{
	public:
		TaskArray( SettingsFrame& settings, MngFile& file_out, size_t n ): n_tasks( n )
			{
			tasks = ( Task* )malloc( sizeof( Task ) * n_tasks );

			if( tasks == NULL )
				{
				throw "Could not initialize TaskArray";
				}

			for( unsigned int k = 0; k != n; ++k )
				{
				new( tasks + k )Task( settings, file_out );
				}

			}

		~TaskArray()
			{
			Task* end = tasks + n_tasks;

			do
				{
				--end;
				end->~Task();
				}
			while( end != tasks );

			free( tasks );
			}

		void run()
			{
			Task* p_task = tasks + index_frame % n_tasks;
			p_task->frameIndexSet(index_frame).run();
			}

		TaskArray& frameIndexSet(size_t k)
			{
			index_frame=k;
			return *this;
			}

	private:
		Task* tasks;
		size_t n_tasks;
		size_t index_frame;
	};

#endif
