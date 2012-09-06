#ifndef WAVEPUMP_H
#define WAVEPUMP_H

#include "WaveFileOut.h"
#include "WaveDeviceIn.h"

class WavePump
	{
	public:
		WavePump(WaveDeviceIn& source,WaveFileOut& sink):data(source,sink)
			{
			thread=CreateThread(NULL,0,pump,&data,0,NULL);
			}

		void stop()
			{
			data.stop=1;
			}

		void resume()
			{
			SetEvent(data.resume);
			}

		void pause()
			{
			ResetEvent(data.resume);
			}

		~WavePump()
			{
			stop();
			resume();
			WaitForSingleObject(thread,INFINITE);
			CloseHandle(thread);
			}


	private:

		struct ThreadData
			{
			ThreadData(WaveDeviceIn& source,WaveFileOut& sink):input(source),output(sink),stop(0)
				{resume=CreateEvent(NULL,TRUE,FALSE,NULL);}

			~ThreadData()
				{
				CloseHandle(resume);
				}

			WaveDeviceIn& input;
			WaveFileOut& output;
			HANDLE resume;
			bool stop;
			} data;

		HANDLE thread;

		static DWORD WINAPI pump(void* thread_data)
			{
			ThreadData* data=(ThreadData*)thread_data;
			size_t size_buffer=44100;
			StereoFrame* buffer=(StereoFrame*)malloc(size_buffer*sizeof(StereoFrame));
			while(!data->stop)
				{
				WaitForSingleObject(data->resume,INFINITE);
				size_t n_read=data->input.poop(buffer,size_buffer);
				data->output.eat(buffer,n_read);
				}
			free(buffer);
			return 0;
			}
	};



#endif
