/* Weditres generated include file. Do NOT edit */
#include <windows.h>
#include <lfc.h>
#define	DLG_0001	1
/*@ Prototypes @*/
#ifndef WEDIT_PROTOTYPES
#define WEDIT_PROTOTYPES
/*
 * Structure for dialog Dlg1
 */
/* Control: IDOK*/
struct _Dlg1 {
	ST_BUTTON *idok;
	ST_STATIC *idcancel;
	ST_STATIC *ctrl10;
	ST_EDIT *ctrl11;
	ST_SLIDER *ctrl15;
	ST_STATIC *ctrl13;
	ST_STATIC *ctrl14;
	ST_COMBOBOX *ctrl12;
	ST_BUTTON *ctrl18;
	ST_BUTTON *ctrl19;
	ST_COMBOBOX *ctrl8;
	ST_STATIC *ctrl16;
	ST_COMBOBOX *ctrl17;
	ST_STATIC *ctrl20;
	ST_STATIC *ctrl7;
	ST_EDIT *idhelp;
	HWND hwnd;
	WPARAM wParam;
	LPARAM lParam;
};


#endif
void SetDlgBkColor(HWND,COLORREF);
BOOL APIENTRY HandleCtlColor(UINT,DWORD);
/*
 * Callbacks for dialog Dlg1
 */
/* Control: IDOK*/
HWND StartDlg1(HWND parent);
/* Control: IDOK*/
int RunDlg1(HWND parent);
/* Control: IDOK*/
void AddGdiObject(HWND,HANDLE);
/* Control: IDOK*/
BOOL WINAPI HandleDefaultMessages(HWND hwnd,UINT msg,WPARAM wParam,DWORD lParam);
/* Control: 19*/
long Dlg1Push_button19Selected(ST_BUTTON *,struct _Dlg1 *);
/* Control: 18*/
long Dlg1Push_button18Selected(ST_BUTTON *,struct _Dlg1 *);
/* Control: -1*/
long Dlg1Push_button3ErrSpace(ST_EDIT *,struct _Dlg1 *);
/* Control: -1*/
long Dlg1Push_button3Selected(ST_BUTTON *,struct _Dlg1 *);
/* Control: IDOK*/
BOOL Dlg1OkValidate(HWND hwnd);
/* Control: IDOK*/
long Dlg1OkSelected(ST_BUTTON *,struct _Dlg1 *);
/* Control: IDOK*/
long Dlg1Init(ST_DIALOGBOX *,struct _Dlg1 *);
BOOL APIENTRY Dlg1(HWND hwnd,UINT msg,WPARAM wParam,LPARAM lParam);
extern void *GetDialogArguments(HWND);
extern char *GetDico(int,long);
/*@@ End Prototypes @@*/
