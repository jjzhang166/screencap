#include "StartupDialog.h"
#include <ctime>
#include <cstdio>

int main()
	{
	Settings::Framerate_lookup_init();
	Settings captureSetup;
	StartupDialog dlg( captureSetup );
	return 0;
	}
