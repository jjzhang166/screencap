#ifndef WAVEDEVICEIN_H
#define WAVEDEVICEIN_H

#include <windows.h>
#include "StereoFrame.h"
#include <cstdlib>

class WaveDeviceIn
	{
	public:
		WaveDeviceIn():i(0)
			{
			assert(sizeof(StereoFrame)==4);
			WAVEFORMATEX wf;
			wf.wFormatTag=WAVE_FORMAT_PCM;
			wf.nChannels=2;
			wf.nSamplesPerSec=44100;
			wf.nBlockAlign=4;
			wf.wBitsPerSample=16;
			wf.cbSize=0;

			waveInOpen(&wavein,WAVE_MAPPER,&wf,(DWORD_PTR)wave_callback,(DWORD_PTR)NULL,CALLBACK_FUNCTION);
			init_wavehdr(audioblock[0]);
			init_wavehdr(audioblock[1]);
			audioblock_current=audioblock;
			waveInStart(wavein);
			}

		size_t poop(StereoFrame* buffer,size_t length)
			{
			ResetEvent((HANDLE)audioblock_current->dwUser);
			if(sizeof(StereoFrame)*length>audioblock_current->dwBufferLength)
				{
				waveInUnprepareHeader(wavein,audioblock_current,sizeof(WAVEHDR));
				free(audioblock_current->lpData);
				audioblock_current->lpData=(CHAR*)malloc(length*sizeof(StereoFrame));
				audioblock_current->dwBufferLength=length*sizeof(StereoFrame);
				waveInPrepareHeader(wavein,audioblock_current,sizeof(WAVEHDR));
				}
			waveInAddBuffer(wavein,audioblock_current,sizeof(WAVEHDR));

			i++;
			audioblock_current=&audioblock[i%2];
			WaitForSingleObject((HANDLE)audioblock_current->dwUser,INFINITE);
			memcpy(buffer,audioblock_current->lpData,audioblock_current->dwBytesRecorded);
			return audioblock_current->dwBytesRecorded/sizeof(StereoFrame);
			}

		~WaveDeviceIn()
			{
			free_wavehdr(*audioblock_current);
			i++;
			audioblock_current=&audioblock[i%2];
			WaitForSingleObject((HANDLE)audioblock_current->dwUser,INFINITE);
			free_wavehdr(*audioblock_current);
			waveInClose(wavein);
			}

	private:
		void init_wavehdr(WAVEHDR& whdr)
			{
			memset(&whdr,0,sizeof(whdr));
			whdr.dwUser=(DWORD_PTR)CreateEvent(NULL,TRUE,TRUE,NULL);
			}

		void free_wavehdr(WAVEHDR& whdr)
			{
			waveInUnprepareHeader(wavein,&whdr,sizeof(audioblock_current));
			free(whdr.lpData);
			CloseHandle((HANDLE)whdr.dwUser);
			}

		unsigned int i;
		WAVEHDR audioblock[2];
		WAVEHDR* audioblock_current;
		HWAVEIN wavein;

		static void CALLBACK wave_callback(HWAVEIN hwo
			,UINT uMsg,DWORD_PTR dwInstance
			,DWORD_PTR dwParam1,DWORD_PTR dwParam2)
			{
			switch(uMsg)
				{
				case WIM_DATA:
					SetEvent((HANDLE) ((WAVEHDR*)dwParam1)->dwUser  );
					break;
				}
			}
	};

#endif
