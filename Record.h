#ifndef RECORD_H
#define RECORD_H

#include <windows.h>
#include "TaskArray.h"
#include "AsyncTimer.h"
#include "System.h"
#include "Settings.h"
#include "WavePump.h"

template<class CTask>
void run( CTask& captureTask, Settings& captureSetup )
	{
//	WaveFileOut audio_out(captureSetup.filenameGet());
//	WaveDeviceIn audio_in;
//	WavePump wave(audio_in,audio_out);
	captureSetup.framecountReset();
//	wave.resume();
	while( !captureSetup.flagsGet( Settings::STOP ) )
		{
		captureTask.frameIndexSet(captureSetup.framecountGet()).run();
		captureSetup.framecountIncrement();
		}

	captureSetup.timeTerminate();
	}

template<class CTask>
void run_delay( CTask& captureTask, Settings& captureSetup )
	{
	WaveFileOut audio_out(captureSetup.filenameGet());
	WaveDeviceIn audio_in;
	WavePump wave(audio_in,audio_out);
	AsyncTimer clock( 1000 / captureSetup.framerateGet() );
	wave.resume();
	captureSetup.framecountReset();
	while( !captureSetup.flagsGet( Settings::STOP ) )
		{
		captureTask.frameIndexSet(captureSetup.framecountGet()).run();
		captureSetup.framecountIncrement();
		clock.wait();
		}
	captureSetup.timeTerminate();
	}

typedef void ( *RunMT )( TaskArray& tasks, Settings& captureSetup );
typedef void ( *RunST )( TaskData& task, Settings& captureSetup );

DWORD WINAPI record( void* settings )
	{
	Settings* captureSetup = ( Settings* )settings;
	DEBUGPRINT(*captureSetup);
	MngFile file_out( captureSetup->filenameGet() );

	DWORD prio=GetPriorityClass(GetCurrentProcess());
	SetPriorityClass( GetCurrentProcess(), System::priorityClass[ captureSetup->procPriorityGet()].value );
	DWORD ret=0;
	try
		{
		if( captureSetup->threadCountGet() > 1 )
			{
			RunMT method_run;

			TaskArray task( captureSetup->framedata, file_out, captureSetup->threadCountGet() );

			if( captureSetup->flagsGet( Settings::BENCHMARK ) )
				{method_run = run;}
			else
				{method_run = run_delay;}

			method_run( task, *captureSetup );
			}
		else
			{
			RunST method_run;
			TaskData task( captureSetup->framedata, file_out );

			if( captureSetup->flagsGet( Settings::BENCHMARK ) )
				{method_run = run;}
			else
				{method_run = run_delay;}

			method_run( task, *captureSetup );
			}
		}
	catch(const char* message)
		{
		ret=3;
		captureSetup->errorPost(message);
		}

	SetPriorityClass(GetCurrentProcess(),prio);

	return ret;
	}

#endif
