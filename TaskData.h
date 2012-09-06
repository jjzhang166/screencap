#ifndef TASKDATA_H
#define TASKDATA_H

#include "Image.h"
#include "ImageCompressed.h"
#include "MngFile.h"
#include "SettingsFrame.h"

/// class TaskData -
class TaskData
	{
		// Operations
	public:

		TaskData( const SettingsFrame& settings_frame, MngFile& output ):
			img_source( settings_frame.window_capture )
			, cmpr_method( Png::compressionMethod[settings_frame.compressionMethodGet()].value )
			, cmpr_level( settings_frame.compressionLevelGet() )
			, img_sink( img_source )
			, buffer( img_source.widthGet(), img_source.heightGet(),settings_frame.cropWidthGet(),settings_frame.cropHeightGet() )
			, m_output( output )
			{
			}

		void run()
			{
			img_source.grab();
			img_sink.compress( buffer, cmpr_method, cmpr_level ).poop( m_output,index_frame );
			}

		TaskData& frameIndexSet(size_t k)
			{
			index_frame=k;
			return *this;
			}

		// Attributes
	private:
		FrameGrabber img_source;
		unsigned int cmpr_method;
		unsigned int cmpr_level;
		Image img_sink;
		ImageCompressed buffer;
		MngFile& m_output;
		size_t index_frame;

		//	For motion-blur add
		//		Image img_old;
		//		Image img_sink_sum;
		//		Only save even frames

	};

#endif
