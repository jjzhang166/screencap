#include <windows.h>

#ifndef FRAMEGRABBER_H
#define FRAMEGRABBER_H

#include "Pixel.h"

/// class FrameGrabber -
class FrameGrabber
	{
	public:
		FrameGrabber( HWND window_source ): source_window( window_source )
			{
			source_context = GetDC( source_window );

			if( source_context == NULL )  goto err_1;

			sink_context = CreateCompatibleDC( source_context );

			if( sink_context == NULL )    goto err_2;

			RECT rc;
			GetClientRect( source_window, &rc );
			width = rc.right;
			height = rc.bottom;
			BITMAPINFO bmi;
			ZeroMemory( &bmi, sizeof( bmi ) );
			bmi.bmiHeader.biSize = sizeof( bmi.bmiHeader );
			bmi.bmiHeader.biWidth = width;
			bmi.bmiHeader.biHeight = -height;
			bmi.bmiHeader.biPlanes = 1;
			bmi.bmiHeader.biBitCount = BITS_PER_PIXEL;
			bmi.bmiHeader.biCompression = BI_RGB;

			sink_bitmap = CreateDIBSection( sink_context, &bmi, DIB_RGB_COLORS, ( void** )( &sink_data ), NULL, 0 );

			if( sink_bitmap == NULL )     goto err_3;

			sink_bitmap_old = SelectObject( sink_context, sink_bitmap );

			if( sink_bitmap_old == NULL ) goto err_4;

			return;

		err_4:
			DeleteObject( sink_bitmap );
		err_3:
			DeleteDC( sink_context );
		err_2:
			ReleaseDC( source_window, source_context );
		err_1:
			throw "Could not initializing FrameGrabber";
			}

		~FrameGrabber()
			{
			SelectObject( sink_context, sink_bitmap_old );
			DeleteObject( sink_bitmap );
			DeleteDC( sink_context );
			ReleaseDC( source_window, source_context );
			}

		int scanlineSizeGet() const
			{
			return width * BITS_PER_PIXEL / 8;
			}

		int widthGet() const
			{
			return width;
			}

		int heightGet() const
			{
			return height;
			}

		Pixel* grab()
			{
			BitBlt( sink_context, 0, 0, width, height, source_context, 0, 0, SRCCOPY | CAPTUREBLT );
			return dataGet();
			}

		Pixel* dataGet()
			{
			return sink_data;
			}

	private:
		FrameGrabber( const FrameGrabber& );
		void operator=( const FrameGrabber& );
		HWND  source_window;
		HDC  source_context;
		HDC  sink_context;
		HBITMAP  sink_bitmap;
		HGDIOBJ  sink_bitmap_old;
		Pixel* sink_data;
		int  width;
		int  height;
		static const int BITS_PER_PIXEL = 32;
		// Operations
	};

#endif
