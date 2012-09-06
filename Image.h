#include "FrameGrabber.h"

#ifndef IMAGE_H
#define IMAGE_H

#include "FrameGrabber.h"
#include "ImageCompressed.h"

#include <cstdlib>

/// class Image -
class Image
	{
	public:
		Image( FrameGrabber& grabber ): img_source( grabber )
			{
			if( !initPRows() )
				{
				throw "Could not initialize Image";
				}
			}

		Pixel** rowsGet()
			{
			return p_rows;
			}

		ImageCompressed& compress( ImageCompressed& buffer_out, unsigned int method, unsigned int level ) const
			{
			return buffer_out.eat( p_rows, method, level );
			}

		~Image()
			{
			free( p_rows );
			}

	private:
		Image( const Image& img );
		void operator=( const Image& img );
		FrameGrabber& img_source;
		Pixel** p_rows;
		// Operations

		bool initPRows()
			{
			p_rows = ( Pixel** )malloc( sizeof( Pixel* ) * img_source.heightGet() );

			if( p_rows == NULL )
				{
				return 0;
				}

			for( unsigned int k = 0; k < abs( img_source.heightGet() ); ++k )
				{
				p_rows[k] = ( Pixel* )(( unsigned char* )img_source.dataGet() + k * img_source.scanlineSizeGet() );
				}

			return 1;
			}
	};

#endif
