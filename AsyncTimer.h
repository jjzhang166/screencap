#include <windows.h>

#ifndef ASYNCTIMER_H
#define ASYNCTIMER_H

class AsyncTimer
	{
		// Attributes
	private:
		HANDLE timer;
		// Operations
	public:
		AsyncTimer( int delay )
			{
			timer = CreateWaitableTimer( NULL, FALSE, NULL );
			long long int t_start = -10000000; //Wait one second before we start

			if( timer == NULL ) goto err_1;

			if( !SetWaitableTimer( timer, ( LARGE_INTEGER* )&t_start, delay, NULL, NULL, TRUE ) )
				{
				goto err_2;
				}

			wait();

			return;

		err_2:
			CloseHandle( timer );
		err_1:
			throw "Could not initialize AsyncTimer";
			}

		void wait()
			{
			WaitForSingleObject( timer, INFINITE );
			}

		~AsyncTimer()
			{
			CloseHandle( timer );
			}
	};

#endif
