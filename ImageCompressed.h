#ifndef IMAGECOMPRESSED_H
#define IMAGECOMPRESSED_H

#include "Png.h"
#include "MngFile.h"
#include "OptionsDebug.h"
#include <cstdlib>
#include <zlib.h>

class ImageCompressed
	{
	public:
		ImageCompressed( int width, int height, int width_cropped, int height_cropped ):
		m_width( width_cropped ), m_height( height_cropped )
		,left( (width-width_cropped)/2 ),top( (height-height_cropped)/2)
			{
			if(left<0 || top<0)
				{throw "Too large rectangle";}
			size_buffer = ( 1 + 3 * m_width ) * m_height;
			buffer_uncompressed = ( unsigned char* )malloc( 8 + size_buffer );

			if( buffer_uncompressed == NULL )	goto err_1;

			buffer_PNG = ( unsigned char* )malloc
			             (
			                 0
			                 + size_buffer
			                 + Png::IHDR::SIZE
			                 + 3 * Png::Chunk::SIZE_BASE
			             );

			if( buffer_PNG == NULL )	goto err_2;

			Png::Chunk::sizeSet( buffer_PNG, Png::IHDR::SIZE );
			Png::Chunk::IDSet( buffer_PNG, 0x49484452 );
			Png::IHDR::widthSet( buffer_PNG, m_width );
			Png::IHDR::heightSet( buffer_PNG, m_height );
			Png::IHDR::bitDepthSet( buffer_PNG, 8 );
			Png::IHDR::colorTypeSet( buffer_PNG, Png::IHDR::COLORTYPE_RGB );
			Png::IHDR::compressionMethodSet( buffer_PNG, 0 );
			Png::IHDR::filterMethodSet( buffer_PNG, 0 );
			Png::IHDR::interlaceMethodSet( buffer_PNG, 0 );
			Png::Chunk::CRCSet( buffer_PNG, Png::IHDR::SIZE );

			Png::Chunk::IDSet( buffer_PNG + Png::IHDR::SIZE + Png::Chunk::SIZE_BASE, 0x49444154 );
			Png::Chunk::sizeSet( IEND, 0 );
			Png::Chunk::IDSet( IEND, 0x49454e44 );
			Png::Chunk::CRCSet( IEND, 0 );

			return;
		err_2:
			free( buffer_uncompressed );
		err_1:
			throw "Could not initialize ImageCompressed";
			}

		ImageCompressed& eat( const Pixel* const* data, unsigned int method, unsigned int level )
			{
			filterApply( data );
			unsigned char* IDAT = buffer_PNG
			                      + Png::IHDR::SIZE
			                      + Png::Chunk::SIZE_BASE;

			size_idat = compress( IDAT + Png::Chunk::OFFSET_DATA, method, level );
			Png::Chunk::sizeSet( IDAT, size_idat );
			Png::Chunk::CRCSet( IDAT, size_idat );
			memcpy( IDAT + size_idat + Png::Chunk::SIZE_BASE, IEND, Png::Chunk::SIZE_BASE );
			return *this;
			}

		MngFile& poop( MngFile& stream_out, size_t frame_index ) const
			{
			return stream_out.eat
			       (
			           buffer_PNG,
			           0
			           + size_idat
			           + Png::IHDR::SIZE
			           + 3 * Png::Chunk::SIZE_BASE
			           ,frame_index
			       );
			}

		~ImageCompressed()
			{
			free( buffer_PNG );
			free( buffer_uncompressed );
			}

	private:
		ImageCompressed( const ImageCompressed& );
		void operator=( const ImageCompressed& );
		unsigned char* buffer_uncompressed;
		unsigned char* buffer_PNG;
		size_t size_buffer;
		int m_width;
		int m_height;
		int left;
		int top;
		uint32_t size_idat;
		unsigned char IEND[Png::Chunk::SIZE_BASE];

		void filterApply( const Pixel* const* data )
			{
			unsigned char* buffer_png = buffer_uncompressed;

			for( int k = top; k < m_height + top; ++k )
				{
				*buffer_png = 1;
				++buffer_png;
				Pixel x_0 = {0, 0, 0, 0};

				for( int l = left; l < m_width + left; ++l )
					{
					Pixel out = data[k][l] - x_0;
					Png::assign( buffer_png, out << 8 );
					buffer_png += 3;
					x_0 = data[k][l];
					}
				}
			}

		uint32_t compress( unsigned char* buffer_output, unsigned int method, unsigned int level )
			{
			z_stream stream;
			memset( &stream, 0, sizeof( stream ) );

			deflateInit2( &stream, level, Z_DEFLATED, 15, 9, method );

			stream.avail_in = size_buffer;
			stream.next_in = ( unsigned char* )buffer_uncompressed;
			stream.avail_out = size_buffer;
			stream.next_out = ( unsigned char* )buffer_output;
			CHECK_RESULT( deflate( &stream, Z_FINISH ) , Z_STREAM_END );

			deflateEnd( &stream );
			return stream.total_out;
			}
	};

#endif
