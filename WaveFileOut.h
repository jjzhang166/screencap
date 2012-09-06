#ifndef WAVEFILEOUT_H
#define WAVEFILEOUT_H

#include <windows.h>
#include "StereoFrame.h"
#include <cstdlib>

class WaveFileOut
	{
	public:
		WaveFileOut(const char* filename)
			{
			char filenamebuff[MAX_PATH];
			snprintf(filenamebuff,MAX_PATH,"%saudio.wav",filename);
			filenamebuff[MAX_PATH-1]='\0';
			file_out=CreateFile(filenamebuff,GENERIC_WRITE,FILE_SHARE_READ,NULL
								,CREATE_ALWAYS,FILE_ATTRIBUTE_NORMAL,NULL);
			if(file_out==INVALID_HANDLE_VALUE)
				{
				throw "Could not create output file";
				}
			n_bytes_written=0;

			WavefileHeader header;
			header.magic_1=0x46464952;
			header.size_1=0;
			header.magic_2=0x45564157;
			header.magic_3=0x20746d66;
			header.size_2=16;
			header.compression=1;
			header.n_channels=2;
			header.fs=44100;
			header.stream_speed=header.fs*header.n_channels*16/8;
			header.block_align=header.n_channels*16/8;
			header.bit_depth=16;
			header.magic_4=0x61746164;
			header.size_3=0;

			WriteFile(file_out,&header,sizeof(header),&n_bytes_written,NULL);
			}

		size_t eat(const StereoFrame* buffer,size_t length)
			{
			DWORD dummy;
			WriteFile(file_out,buffer,length*sizeof(StereoFrame),&dummy,NULL);
			n_bytes_written+=dummy;
			return dummy/sizeof(StereoFrame);
			}

		~WaveFileOut()
			{
			DWORD dummy;
			FlushFileBuffers(file_out);
			SetFilePointer(file_out,4,NULL,FILE_BEGIN);
			n_bytes_written-=8;
			WriteFile(file_out,&n_bytes_written,sizeof(n_bytes_written),&dummy,NULL);
			FlushFileBuffers(file_out);
			SetFilePointer(file_out,40,NULL,FILE_BEGIN);
			n_bytes_written-=36;
			WriteFile(file_out,&n_bytes_written,sizeof(n_bytes_written),&dummy,NULL);
			CloseHandle(file_out);
			}

	private:
		struct WavefileHeader
			{
			unsigned int magic_1;
			unsigned int size_1;
			unsigned int magic_2;

			unsigned int magic_3;

			unsigned int size_2;
			unsigned short compression;
			unsigned short n_channels;
			unsigned int fs;
			unsigned int stream_speed;
			unsigned short block_align;
			unsigned short bit_depth;

			unsigned int magic_4;
			unsigned int size_3;
			};
		HANDLE file_out;
		DWORD n_bytes_written;
	};

#endif

