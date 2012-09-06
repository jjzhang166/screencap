#include "FrameGrabber.h"
#include "Image.h"
#include "crc.h"
#include <zlib.h>
#include <stdint.h>

#include <cstdio>
#include <cassert>

#include <algorithm>


void assign(void* addr,uint32_t x)
	{
	char* p_in=(char*)(&x);
	char* p_out=(char*)addr;
	p_out[0]=p_in[3];
	p_out[1]=p_in[2];
	p_out[2]=p_in[1];
	p_out[3]=p_in[0];
	}

void filterApply(const Pixel* const* scanlines,char* buffer_png,int width,int height)
	{	
	for(int k=0;k<height;++k)
		{
		*buffer_png=0;
		++buffer_png;
		
		for(int l=0;l<width;++l)
			{
			assign(buffer_png, scanlines[k][l]<<8 );
			buffer_png+=3;
			}
		}
	}

size_t compress(const char* buffer_uncompressed,char* buffer_compressed,size_t length_in)
	{
	z_stream stream;
	memset(&stream,0,sizeof(stream));

	deflateInit2(&stream,6,Z_DEFLATED,15,9,Z_DEFAULT_STRATEGY);

	stream.avail_in=length_in;
	stream.next_in=(unsigned char*)buffer_uncompressed;
	stream.avail_out=length_in;
	stream.next_out =(unsigned char*)buffer_compressed;       
	assert( deflate(&stream, Z_FINISH) == Z_STREAM_END);
	
	deflateEnd(&stream);
	return stream.total_out;
	}



const size_t CHUNK_OFFSET_SIZE=0;
const size_t CHUNK_OFFSET_ID=4;
const size_t CHUNK_OFFSET_DATA=8;
const size_t CHUNK_BASE_SIZE=12;


void Chunk_sizeSet(char* chunk,uint32_t size)
	{assign(chunk+CHUNK_OFFSET_SIZE,size);}

void Chunk_IDSet(char* chunk,uint32_t id)
	{assign(chunk+CHUNK_OFFSET_ID,id);}

void Chunk_CRCSet(char* chunk,const PngCRC& crc,uint32_t size_chunk_data)
	{
	assign(chunk+CHUNK_OFFSET_DATA+size_chunk_data, crc(chunk+CHUNK_OFFSET_ID,size_chunk_data+4) );
	}


	
const size_t IHDR_SIZE=13;
const char IHDR_COLORTYPE_RGB=2;

void IHDR_widthSet(char* chunk,uint32_t width)
	{assign(chunk+CHUNK_OFFSET_DATA,width);}

void IHDR_heightSet(char* chunk,uint32_t height)
	{assign(chunk+CHUNK_OFFSET_DATA+4,height);}

void IHDR_bitDepthSet(char* chunk,char bd)
	{chunk[CHUNK_OFFSET_DATA+8]=bd;}

void IHDR_colorTypeSet(char* chunk,char ct)
	{chunk[CHUNK_OFFSET_DATA+9]=ct;}

void IHDR_compressionMethodSet(char* chunk,char cmprm)
	{chunk[CHUNK_OFFSET_DATA+10]=cmprm;}

void IHDR_filterMethodSet(char* chunk,char filter)
	{chunk[CHUNK_OFFSET_DATA+11]=filter;}

void IHDR_interlaceMethodSet(char* chunk,char interlace)
	{chunk[CHUNK_OFFSET_DATA+12]=interlace;}


	
int main()
	{
	PngCRC crc;
	unsigned char signature[8]={137,80,78,71,13,10,26,10};
	
	char IEND[CHUNK_BASE_SIZE];
	Chunk_sizeSet(IEND,0);
	Chunk_IDSet(IEND,0x49454e44);
	Chunk_CRCSet(IEND,crc,0);
	
	FrameGrabber grabber(GetDesktopWindow());
	Image img(grabber);
	grabber.grab();
	
	char IHDR[CHUNK_BASE_SIZE+IHDR_SIZE];
	Chunk_sizeSet(IHDR,IHDR_SIZE);
	Chunk_IDSet(IHDR,0x49484452);
	IHDR_widthSet(IHDR,grabber.widthGet());
	IHDR_heightSet(IHDR,grabber.heightGet());
	IHDR_bitDepthSet(IHDR,8);
	IHDR_colorTypeSet(IHDR,IHDR_COLORTYPE_RGB);
	IHDR_compressionMethodSet(IHDR,0);
	IHDR_filterMethodSet(IHDR,0);
	IHDR_interlaceMethodSet(IHDR,0);
	Chunk_CRCSet(IHDR,crc,IHDR_SIZE);	
	
	
	size_t size_uncompressed=4+(1+3*grabber.widthGet())*grabber.heightGet();
	char* img_png_uncompressed=(char*)malloc(size_uncompressed);
	filterApply(img.rowsGet(),img_png_uncompressed,grabber.widthGet(),grabber.heightGet());
	char* IDAT=(char*)malloc(size_uncompressed+CHUNK_BASE_SIZE);
	
	uint32_t size_idat=compress(img_png_uncompressed,IDAT+CHUNK_OFFSET_DATA,size_uncompressed);
	Chunk_sizeSet(IDAT,size_idat);
	Chunk_IDSet(IDAT,0x49444154);
	printf("%u\n",size_idat);
	Chunk_CRCSet(IDAT,crc,size_idat);
	
		
	FILE* file_out=fopen("test.png","wb");
	
	fwrite(signature,1,sizeof(signature),file_out);
	fwrite(IHDR,1,sizeof(IHDR),file_out);
	fwrite(IDAT,1,size_idat,file_out);
	fwrite(IEND,1,sizeof(IEND),file_out);
	free(IDAT);
	fclose(file_out);

	return 0;
	}
