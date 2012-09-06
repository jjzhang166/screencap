#ifndef SETTINGSFRAME_H
#define SETTINGSFRAME_H

#include <windows.h>
#include "Png.h"
#include <algorithm>

class SettingsFrame
	{
	public:
		SettingsFrame():
			window_capture( GetDesktopWindow() ), compression_method( 0 )
			, compression_level(( Png::compressionLevelMaxGet() - Png::compressionLevelMinGet() ) / 2 )
			{
			}
		HWND window_capture;

		unsigned int compressionMethodGet() const
			{
			return compression_method;
			}

		SettingsFrame& compressionMethodSet( unsigned int compression_method_new )
			{
			compression_method = std::min( compression_method_new, Png::compressionMethodCountGet() );
			return *this;
			}

		unsigned int compressionLevelGet() const
			{
			return compression_level;
			}

		SettingsFrame& compressionLevelSet( unsigned int compression_level_new )
			{
			compression_level = std::max( 1u, std::min( compression_level_new, Png::compressionLevelMaxGet() ) );
			return *this;
			}

		SettingsFrame& cropWidthSet(long int w)
			{
			RECT r;
			GetClientRect(window_capture,&r);
			width_cropped=std::min(r.right,w);
			return *this;
			}

		SettingsFrame& cropHeightSet(long int h)
			{
			RECT r;
			GetClientRect(window_capture,&r);
			height_cropped=std::min(r.bottom,h);
			return *this;
			}

		long int cropWidthGet() const
			{
			return width_cropped;
			}

		long int cropHeightGet() const
			{
			return height_cropped;
			}

	private:
		unsigned int compression_method;
		unsigned int compression_level;
		long int width_cropped;
		long int height_cropped;
	};

#endif

