#ifndef CRC_H
#define CRC_H

#include <stdint.h>

class PngCRC
	{
	public:
		PngCRC()
			{
			uint32_t c;
			int n, k;
			for (n = 0; n < 256; n++)
				{
				c = (uint32_t) n;
				for (k = 0; k < 8; k++)
					{
					if (c & 1)
						{c = 0xedb88320L ^ (c >> 1);}
					else
						{c = c >> 1;}
					}
				crc_table[n] = c;
				}
			}
		
		uint32_t operator()(const void* buffer,size_t size) const
			{
			return crc_char((const unsigned char*)buffer,size); 
			}
		
	private:
		uint32_t crc_table[256];
	
		uint32_t crcUpdate(uint32_t crc, const unsigned char *buf,size_t len) const
			{
			size_t n;
			for (n = 0; n < len; n++)
				{crc = crc_table[(crc ^ buf[n]) & 0xff] ^ (crc >> 8);}
			return crc;
			}
		
		uint32_t crc_char(const unsigned char *buf, size_t len) const
			{
			return crcUpdate(0xffffffffL, buf, len) ^ 0xffffffffL;
			}
	};
#endif
