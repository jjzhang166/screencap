#ifndef FILENAME_H
#define FILENAME_H

inline bool filenameTemplateAccept( const char* value )
	{
	while( *value != '\0' )
		{
		if( *value == '?' )
			{
			value++;

			if( !( *value == 'c' ) )
				{
				return 0;
				}
			}

		value++;
		}

	return 1;
	}

inline size_t formatNumber( char* buffer, unsigned int l_max, size_t x )
	{
	char buffer_temp[32];
	size_t count = 0;
	size_t radix = 10;

	do
		{
		buffer_temp[count] = x % radix + '0';
		x /= radix;
		count++;
		}
	while( x != 0 && count < l_max );

	size_t ret = count;

	do
		{
		count--;
		*buffer = buffer_temp[count];
		buffer++;
		}
	while( count );

	return ret;
	}

inline void filenameCreate( char* buffer, size_t l_max, const char* pattern, unsigned int count )
	{
	size_t i;

	for( i = 0; i < l_max - 1 && *pattern != '\0'; pattern++ )
		{
		if( *pattern == '?' )
			{
			pattern++;

			switch( *pattern )
				{
				case 'c':
					i += formatNumber( buffer + i, l_max - i, count );
					break;
				}
			}
		else
			{
			buffer[i] = *pattern;
			i++;
			}
		}

	buffer[i] = '\0';
	}

#endif
