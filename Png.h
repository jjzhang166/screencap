#ifndef PNG_H
#define PNG_H

#include <zlib.h>
#include <stdint.h>

#define VALUE(x) {#x , x}

namespace Png
	{
	class CRC
		{
		public:
			CRC()
				{
				uint32_t c;
				int n, k;

				for( n = 0; n < 256; n++ )
					{
					c = ( uint32_t ) n;

					for( k = 0; k < 8; k++ )
						{
						if( c & 1 )
							{
							c = 0xedb88320L ^( c >> 1 );
							}
						else
							{
							c = c >> 1;
							}
						}

					crc_table[n] = c;
					}
				}

			uint32_t operator()( const void* buffer, size_t size ) const
				{
				return crc_char(( const unsigned char* )buffer, size );
				}

		private:
			uint32_t crc_table[256];

			uint32_t crcUpdate( uint32_t crc, const unsigned char* buf, size_t len ) const
				{
				size_t n;

				for( n = 0; n < len; n++ )
					{
					crc = crc_table[( crc ^ buf[n] ) & 0xff] ^( crc >> 8 );
					}

				return crc;
				}

			uint32_t crc_char( const unsigned char* buf, size_t len ) const
				{
				return crcUpdate( 0xffffffffL, buf, len ) ^ 0xffffffffL;
				}
		};
	extern CRC crc;

	inline void assign( void* addr, uint32_t x )
		{
		char* p_in = ( char* )( &x );
		char* p_out = ( char* )addr;
		p_out[0] = p_in[3];
		p_out[1] = p_in[2];
		p_out[2] = p_in[1];
		p_out[3] = p_in[0];
		}

	inline unsigned int compressionMethodCountGet()
		{
		return 5;
		}


	const struct
		{
		const char* name;
		unsigned int value;
		} compressionMethod[5] =
		{
		VALUE( Z_DEFAULT_STRATEGY )
		, VALUE( Z_FILTERED )
		, VALUE( Z_RLE )
		, VALUE( Z_HUFFMAN_ONLY )
		, VALUE( Z_FIXED )
		};

	inline unsigned int compressionLevelMinGet()
		{
		return 1;
		}

	inline unsigned int compressionLevelMaxGet()
		{
		return 9;
		}

	namespace Chunk
		{
		const size_t OFFSET_SIZE = 0;
		const size_t OFFSET_ID = 4;
		const size_t OFFSET_DATA = 8;
		const size_t SIZE_BASE = 12;

		inline void sizeSet( unsigned char* chunk, uint32_t size )
			{
			assign( chunk + OFFSET_SIZE, size );
			}

		inline void IDSet( unsigned char* chunk, uint32_t id )
			{
			assign( chunk + OFFSET_ID, id );
			}

		inline void CRCSet( unsigned char* chunk, uint32_t size_chunk_data )
			{
			assign( chunk + OFFSET_DATA + size_chunk_data, crc( chunk + OFFSET_ID, size_chunk_data + 4 ) );
			}
		}

	namespace IHDR
		{
		const size_t SIZE = 13;
		const char COLORTYPE_RGB = 2;

		inline void widthSet( unsigned char* chunk, uint32_t width )
			{
			assign( chunk + Chunk::OFFSET_DATA, width );
			}

		inline void heightSet( unsigned char* chunk, uint32_t height )
			{
			assign( chunk + Chunk::OFFSET_DATA + 4, height );
			}

		inline void bitDepthSet( unsigned char* chunk, char bd )
			{
			chunk[Chunk::OFFSET_DATA+8] = bd;
			}

		inline void colorTypeSet( unsigned char* chunk, char ct )
			{
			chunk[Chunk::OFFSET_DATA+9] = ct;
			}

		inline void compressionMethodSet( unsigned char* chunk, char cmprm )
			{
			chunk[Chunk::OFFSET_DATA+10] = cmprm;
			}

		inline void filterMethodSet( unsigned char* chunk, char filter )
			{
			chunk[Chunk::OFFSET_DATA+11] = filter;
			}

		inline void interlaceMethodSet( unsigned char* chunk, char interlace )
			{
			chunk[Chunk::OFFSET_DATA+12] = interlace;
			}
		}

	namespace MHDR
		{
		const size_t SIZE = 28;
		inline void widthSet( unsigned char* chunk, uint32_t width )
			{
			assign( chunk + Chunk::OFFSET_DATA, width );
			}
		inline void heightSet( unsigned char* chunk, uint32_t height )
			{
			assign( chunk + Chunk::OFFSET_DATA + 4, height );
			}
		inline void fpsSet( unsigned char* chunk, uint32_t fps )
			{
			assign( chunk + Chunk::OFFSET_DATA + 8, fps );
			}
		inline void flagsSet( unsigned char* chunk, uint32_t flags )
			{
			assign( chunk + Chunk::OFFSET_DATA + 24, flags );
			}
		}
	};
#undef VALUE

#endif
