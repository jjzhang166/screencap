#ifndef MNGFILE_H
#define MNGFILE_H

#include <windows.h>
#include <cstdio>
#include <cassert>

//TODO Write a real MNG stream instead of a sequence of pngs.
class MngFile
	{
	public:
		MngFile( const char* filename )
			{
			strcpy( filenamebuff, filename );
			}

		MngFile& eat( const unsigned char* pngframe, size_t length, size_t index_frame )
			{
			char filename_out[MAX_PATH];
			snprintf( filename_out, MAX_PATH, "%s%I64u.png", filenamebuff, index_frame );
			filename_out[MAX_PATH-1] = '\0';

			FILE* file_out = fopen( filename_out, "wb" );
			if(file_out==NULL)
				{
				printf("Could not open %s\n",filename_out);
				}

			fwrite( signature, 1, 8, file_out );
			fwrite( pngframe, 1, length, file_out );
			fclose( file_out );
			return *this;
			}

		~MngFile()
			{
			}
	private:
		MngFile( const MngFile& );
		void operator=( const MngFile& );
		static const char* signature;
		char filenamebuff[MAX_PATH];
	};

#endif
