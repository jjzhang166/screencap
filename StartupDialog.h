#ifndef STARTUPDIALOG_H
#define STARTUPDIALOG_H

#define STARTUPDLG_ID 1
#define STARTUPDLG_WINDOW_SELECT             0x8001
#define STARTUPDLG_WINDOW_DISPLAY            0x8002
#define STARTUPDLG_WINDOW_CROP_LABEL         0x8003
#define STARTUPDLG_WINDOW_CROP_WIDTH         0x8004
#define STARTUPDLG_WINDOW_CROP_HEIGHT        0x8005
#define STARTUPDLG_FILE_SELECT               0x8006
#define STARTUPDLG_FILE_TEXT                 0x8007
#define STARTUPDLG_FRAMERATE_LABEL           0x8008
#define STARTUPDLG_FRAMERATE_INPUT           0x8009
#define STARTUPDLG_FRAMERATE_BENCHMARK       0x800a
#define STARTUPDLG_COMPRESSION_METHOD_LABEL  0x800b
#define STARTUPDLG_COMPRESSION_METHOD_SELECT 0x800c
#define STARTUPDLG_COMPRESSION_LEVEL_LABEL   0x800d
#define STARTUPDLG_COMPRESSION_LEVEL_INPUT   0x800e
#define STARTUPDLG_BUFFER_SIZE_LABEL         0x800f
#define STARTUPDLG_BUFFER_SIZE_INPUT         0x8010
#define STARTUPDLG_BUFFER_SIZE_UNIT          0x8011
#define STARTUPDLG_THREAD_COUNT_LABEL        0x8012
#define STARTUPDLG_THREAD_COUNT_DISPLAY      0x8013
#define STARTUPDLG_THREAD_COUNT_TRACKBAR     0x8014
#define STARTUPDLG_PROC_PRIO_LABEL           0x8015
#define STARTUPDLG_PROC_PRIO_SELECT          0x8016
#define STARTUPDLG_RECORD                    0x8017
#define STARTUPDLG_STOP                      0x8018
#define STARTUPDLG_FRAMERATE_RESULT_LABEL    0x8019
#define STARTUPDLG_FRAMERATE_RESULT_DISPLAY  0x801a
#define STARTUPDLG_ABOUT                     0x801b

#ifndef RC_INVOKED

#include "Record.h"
#include "OptionsDebug.h"
#include "License.h"
#include <commctrl.h>
#include <windowsx.h>

class StartupDialog:public ErrorHandler
	{
	public:
		StartupDialog( Settings& settings ): m_settings( settings ), recthread( NULL )
			{
			InitCommonControls();
			settings.errorHandlerSet(*this);
			dialog_res = DialogBoxParam( GetModuleHandle( NULL ), MAKEINTRESOURCE( STARTUPDLG_ID ), NULL, message_handler, ( LPARAM )this );
			}

		void update()
			{
			SetDlgItemText( m_handle, STARTUPDLG_FILE_TEXT, m_settings.filenameGet() );
			SetDlgItemInt( m_handle, STARTUPDLG_FRAMERATE_INPUT, m_settings.framerateGet(), FALSE );
			int check;

			if( m_settings.flagsGet( Settings::BENCHMARK ) )
				{
				check = BST_CHECKED;
				}
			else
				{
				check = BST_UNCHECKED;
				}

			SendDlgItemMessage( m_handle, STARTUPDLG_FRAMERATE_BENCHMARK, BM_SETCHECK, check, 0 );
			SendDlgItemMessage( m_handle, STARTUPDLG_COMPRESSION_METHOD_SELECT, CB_SETCURSEL, m_settings.framedata.compressionMethodGet(), 0 );
			SetDlgItemInt( m_handle, STARTUPDLG_COMPRESSION_LEVEL_INPUT, m_settings.framedata.compressionLevelGet(), FALSE );
			SetDlgItemInt( m_handle, STARTUPDLG_BUFFER_SIZE_INPUT, m_settings.sizeBufferGet(), FALSE );
			SendDlgItemMessage( m_handle, STARTUPDLG_BUFFER_SIZE_UNIT, CB_SETCURSEL, 0, 0 );
			SendDlgItemMessage( m_handle, STARTUPDLG_THREAD_COUNT_TRACKBAR, TBM_SETPOS, TRUE, ( LPARAM )m_settings.threadCountGet() );
			SendDlgItemMessage( m_handle, STARTUPDLG_PROC_PRIO_SELECT, CB_SETCURSEL, m_settings.procPriorityGet(), 0 );
			threadCountSet();
			windowDisplayUpdate();
			commandProcess( 0, STARTUPDLG_FRAMERATE_BENCHMARK );
			}

		void messageDisplay(const char* msg)
			{
			MessageBox(m_handle,msg,"ScreenCap",MB_ICONERROR);
			PostMessage(m_handle,WM_COMMAND,STARTUPDLG_STOP,0);
			}

	private:
		void init( HWND handle )
			{
			m_handle = handle;

			for( unsigned int k = 0; k < Png::compressionMethodCountGet(); ++k )
				{
				SendDlgItemMessage( m_handle, STARTUPDLG_COMPRESSION_METHOD_SELECT, CB_ADDSTRING, k, ( LPARAM )Png::compressionMethod[k].name );
				}

			SendDlgItemMessage( m_handle, STARTUPDLG_BUFFER_SIZE_UNIT, CB_ADDSTRING, 0, ( LPARAM )"B" );
			SendDlgItemMessage( m_handle, STARTUPDLG_BUFFER_SIZE_UNIT, CB_ADDSTRING, 1, ( LPARAM )"KiB" );
			SendDlgItemMessage( m_handle, STARTUPDLG_BUFFER_SIZE_UNIT, CB_ADDSTRING, 2, ( LPARAM )"MiB" );
			SendDlgItemMessage( m_handle, STARTUPDLG_BUFFER_SIZE_UNIT, CB_ADDSTRING, 3, ( LPARAM )"GiB" );


			SendDlgItemMessage( m_handle, STARTUPDLG_THREAD_COUNT_TRACKBAR, TBM_SETRANGE, TRUE, MAKELPARAM( 1, System::CPUcountGet() ) );

			for( unsigned int k = 0; k < System::procPrioClassCountGet(); ++k )
				{
				SendDlgItemMessage( m_handle, STARTUPDLG_PROC_PRIO_SELECT, CB_ADDSTRING, k, ( LPARAM )System::priorityClass[k].name );
				}
			EnableWindow(GetDlgItem(m_handle,STARTUPDLG_STOP),0);
			update();
			}

		void windowSelectInit()
			{
			UINT state = SendDlgItemMessage( m_handle, STARTUPDLG_WINDOW_SELECT, BM_GETCHECK, 0, 0 );

			if( state == BST_CHECKED )
				{
				SetCapture(m_handle);
				}
			else
				{
				ReleaseCapture();
				}
			}

		void windowDisplayUpdate()
			{
			HWND desktop=GetDesktopWindow();
			if(m_settings.framedata.window_capture==desktop)
				{
				SetDlgItemText(m_handle,STARTUPDLG_WINDOW_DISPLAY,"Desktop window selected");
				}
			else
				{
				char buffer[256];
				sprintf(buffer,"%p ",m_settings.framedata.window_capture);
				SendMessage(m_settings.framedata.window_capture,WM_GETTEXT,256-1-2*sizeof(size_t),(LPARAM)(buffer+1+2*sizeof(size_t)));
				buffer[255]='\0';
				SetDlgItemText(m_handle,STARTUPDLG_WINDOW_DISPLAY,buffer);

				if(!(GetWindowLongPtr(m_settings.framedata.window_capture,GWL_STYLE) & WS_CHILD ) )
					{
					RECT rect_desktop;
					RECT rect_window;
					GetClientRect(desktop,&rect_desktop);
					GetWindowRect(m_settings.framedata.window_capture,&rect_window);
					DEBUGPRINT
						(
						"w=%ld h=%ld  window pos=(%ld,%ld) (%ld,%ld)\n"
						,rect_desktop.right,rect_desktop.bottom
						,rect_window.left,rect_window.top,rect_window.right,rect_window.bottom
						);
					int width=rect_window.right - rect_window.left;
					int height=rect_window.bottom - rect_window.top;
					int x=(rect_desktop.right-width)/2;
					int y=(rect_desktop.bottom-height)/2;
					MoveWindow(m_settings.framedata.window_capture,x,y,width,height,TRUE);
					}
				}
			RECT rect_win_client;
			GetClientRect(m_settings.framedata.window_capture,&rect_win_client);
			SetDlgItemInt(m_handle,STARTUPDLG_WINDOW_CROP_WIDTH,rect_win_client.right,FALSE);
			SetDlgItemInt(m_handle,STARTUPDLG_WINDOW_CROP_HEIGHT,rect_win_client.bottom,FALSE);
			}

		void windowSelect(int x,int y)
			{
			UINT state = SendDlgItemMessage( m_handle, STARTUPDLG_WINDOW_SELECT, BM_GETCHECK, 0, 0 );

			if( state == BST_CHECKED )
				{
				POINT p;
				p.x=x;
				p.y=y;
				ClientToScreen(m_handle,&p);
				m_settings.framedata.window_capture=WindowFromPoint(p);
				if(m_settings.framedata.window_capture==NULL)
					{m_settings.framedata.window_capture=GetDesktopWindow();}
				windowDisplayUpdate();
				}
			SendDlgItemMessage( m_handle, STARTUPDLG_WINDOW_SELECT, BM_SETCHECK, BST_UNCHECKED, 0 );
			ReleaseCapture();
			}

		void fileSelect()
			{
			char filename_buff[MAX_PATH];
			strcpy( filename_buff, m_settings.filenameGet() );
			OPENFILENAME ofn;
			memset( &ofn, 0, sizeof( ofn ) );
			ofn.lStructSize = sizeof( ofn );
			ofn.hwndOwner = m_handle;
			ofn.lpstrFilter = "All files\0*.*\0\0";
			ofn.lpstrFile = filename_buff;
			ofn.nMaxFile = MAX_PATH;
			ofn.lpstrTitle = "Select file";
			ofn.Flags = OFN_DONTADDTORECENT | OFN_PATHMUSTEXIST | OFN_HIDEREADONLY;
			GetSaveFileName( &ofn );
			SetDlgItemText( m_handle, STARTUPDLG_FILE_TEXT, filename_buff );
			}

		void recordStart()
			{
			for(unsigned int k=STARTUPDLG_WINDOW_SELECT;k<STARTUPDLG_STOP;++k)
				{EnableWindow(GetDlgItem(m_handle,k),0);}
			m_settings.flagsUnset(Settings::STOP);
			recthread=CreateThread(NULL,0,record,&m_settings,0,NULL);
			EnableWindow(GetDlgItem(m_handle,STARTUPDLG_STOP),1);
			}

		void recordStop()
			{
			if(recthread)
				{
				m_settings.flagsSet(Settings::STOP);
				WaitForSingleObject(recthread,INFINITE);

				DWORD thread_ret;
				GetExitCodeThread(recthread,&thread_ret);
				CloseHandle(recthread);
				if(thread_ret==0)
					{
					clock_t time=m_settings.timeGet();
					double fps=m_settings.framecountGet()*double(CLOCKS_PER_SEC)/time;
					char buffer[32];
					sprintf(buffer,"%.7g",fps);
					SetDlgItemText(m_handle,STARTUPDLG_FRAMERATE_RESULT_DISPLAY,buffer);
					}
				else
					{
					SetDlgItemText(m_handle,STARTUPDLG_FRAMERATE_RESULT_DISPLAY,"Error");
					}
				}
			for(unsigned int k=STARTUPDLG_WINDOW_SELECT;k<STARTUPDLG_STOP;++k)
				{EnableWindow(GetDlgItem(m_handle,k),1);}
			EnableWindow(GetDlgItem(m_handle,STARTUPDLG_STOP),0);
			SendMessage(m_handle,WM_COMMAND,STARTUPDLG_FRAMERATE_BENCHMARK,0);
			}

		void commandProcess( int notification_id, int ctrl_id )
			{
			switch( ctrl_id )
				{
				case STARTUPDLG_WINDOW_SELECT:
					windowSelectInit();
					break;

				case STARTUPDLG_WINDOW_CROP_WIDTH:
					switch( notification_id )
						{
						case EN_CHANGE:
								{
								int v=GetDlgItemInt(m_handle,ctrl_id,NULL,FALSE);
								m_settings.framedata.cropWidthSet( v );
								}
							break;
						case EN_KILLFOCUS:
							SetDlgItemInt( m_handle, ctrl_id, m_settings.framedata.cropWidthGet(), FALSE );
							break;
						}
					break;

				case STARTUPDLG_WINDOW_CROP_HEIGHT:
					switch( notification_id )
						{
						case EN_CHANGE:
								{
								int v=GetDlgItemInt(m_handle,ctrl_id,NULL,FALSE);
								m_settings.framedata.cropHeightSet( v );
								}
							break;
						case EN_KILLFOCUS:
							SetDlgItemInt( m_handle, ctrl_id, m_settings.framedata.cropHeightGet(), FALSE );
							break;
						}
					break;

				case STARTUPDLG_FILE_SELECT:
					fileSelect();
					break;

				case STARTUPDLG_FILE_TEXT:

					switch( notification_id )
						{
						case EN_CHANGE:
								{
								char filename_buff[MAX_PATH];
								GetDlgItemText( m_handle, ctrl_id, filename_buff, MAX_PATH );
								m_settings.filenameSet( filename_buff );
								}
							break;
						case EN_KILLFOCUS:
							SetDlgItemText( m_handle, STARTUPDLG_FILE_TEXT, m_settings.filenameGet() );
							break;
						}
					break;

				case STARTUPDLG_FRAMERATE_INPUT:

					switch( notification_id )
						{
						case EN_CHANGE:
							m_settings.framerateSet( GetDlgItemInt( m_handle, ctrl_id, NULL, FALSE ) );
							break;
						case EN_KILLFOCUS:
							SetDlgItemInt( m_handle, ctrl_id, m_settings.framerateGet(), FALSE );
							break;
						}

					break;


				case STARTUPDLG_FRAMERATE_BENCHMARK:
						{
						UINT state = SendDlgItemMessage( m_handle, ctrl_id, BM_GETCHECK, 0, 0 );

						if( state == BST_CHECKED )
							{
							m_settings.flagsSet( Settings::BENCHMARK );
							SendDlgItemMessage( m_handle, STARTUPDLG_FRAMERATE_INPUT, WM_ENABLE, 0, 0 );
							}
						else
							{
							m_settings.flagsUnset( Settings::BENCHMARK );
							SendDlgItemMessage( m_handle, STARTUPDLG_FRAMERATE_INPUT, WM_ENABLE, 1, 0 );
							}
						}
					break;

				case STARTUPDLG_COMPRESSION_METHOD_SELECT:
					m_settings.framedata.compressionMethodSet( SendDlgItemMessage( m_handle, ctrl_id, CB_GETCURSEL, 0, 0 ) );
					break;

				case STARTUPDLG_COMPRESSION_LEVEL_INPUT:
						{
						switch( notification_id )
							{
							case EN_CHANGE:
									{
									UINT v = GetDlgItemInt( m_handle, ctrl_id, NULL, FALSE );
									m_settings.framedata.compressionLevelSet( v );
									}
								break;
							case EN_KILLFOCUS:
								SetDlgItemInt( m_handle, ctrl_id, m_settings.framedata.compressionLevelGet(), FALSE );
								break;
							}
						}
					break;

				case STARTUPDLG_BUFFER_SIZE_INPUT:
						{
						int power = SendDlgItemMessage( m_handle, STARTUPDLG_BUFFER_SIZE_UNIT, CB_GETCURSEL, 0, 0 );
						int factor = 1;

						while( power > 0 )
							{
							factor *= 1024;
							--power;
							}

						switch( notification_id )
							{
							case EN_CHANGE:
									{
									//TODO We need GetDlgItemLongPtr
									size_t size = GetDlgItemInt( m_handle, STARTUPDLG_BUFFER_SIZE_INPUT, NULL, FALSE );
									m_settings.sizeBufferSet( size * factor );
									break;
									}
							case EN_KILLFOCUS:
								SetDlgItemInt( m_handle, STARTUPDLG_BUFFER_SIZE_INPUT, m_settings.sizeBufferGet() / factor, FALSE );
								break;
							}
						}
					break;

				case STARTUPDLG_BUFFER_SIZE_UNIT:
					commandProcess( EN_CHANGE, STARTUPDLG_BUFFER_SIZE_INPUT );
					break;

				case STARTUPDLG_PROC_PRIO_SELECT:
					m_settings.procPrioritySet( SendDlgItemMessage( m_handle, ctrl_id, CB_GETCURSEL, 0, 0 ) );
					break;

				case STARTUPDLG_RECORD:
					recordStart();
					break;

				case STARTUPDLG_STOP:
					recordStop();
					break;

				case STARTUPDLG_ABOUT:
					MessageBox(m_handle,license_short,"ScreenCap",MB_ICONINFORMATION);
					break;
				}
			}

		void threadCountSet()
			{
			int n_threads = SendDlgItemMessage( m_handle, STARTUPDLG_THREAD_COUNT_TRACKBAR, TBM_GETPOS, 0, 0 );
			SetDlgItemInt( m_handle, STARTUPDLG_THREAD_COUNT_DISPLAY, n_threads, FALSE );
			m_settings.threadCountSet(n_threads);
			}

		static INT_PTR CALLBACK message_handler( HWND handle, UINT message, WPARAM wParam, LPARAM lParam )
			{
			switch( message )
				{
				case WM_INITDIALOG:
					SetWindowLongPtr( handle, DWLP_USER, ( LONG_PTR )lParam );
					(( StartupDialog* )lParam )->init( handle );
					return TRUE;

				case WM_HSCROLL:
					(( StartupDialog* )GetWindowLongPtr( handle, DWLP_USER ) )->threadCountSet();
					return TRUE;

				case WM_COMMAND:
					(( StartupDialog* )GetWindowLongPtr( handle, DWLP_USER ) )->
					commandProcess( HIWORD( wParam ), LOWORD( wParam ) );
					return TRUE;

				case WM_MOUSEMOVE:
					(( StartupDialog* )GetWindowLongPtr( handle, DWLP_USER ) )->windowSelectInit();
					break;

				case WM_LBUTTONDOWN:
					(( StartupDialog* )GetWindowLongPtr( handle, DWLP_USER ) )->windowSelect(GET_X_LPARAM(lParam),GET_Y_LPARAM(lParam));
					break;

				case WM_CLOSE:
					EndDialog( handle, 0 );
					return TRUE;
				}

			return FALSE;
			}
		HWND m_handle;
		INT_PTR dialog_res;
		Settings& m_settings;
		HANDLE recthread;
	};

#endif

#endif
