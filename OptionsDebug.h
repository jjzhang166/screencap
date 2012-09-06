#ifndef OPTIONSDEBUG_H
#define OPTIONSDEBUG_H

#ifdef NDEBUG
#define CHECK_RESULT(expr,value) expr
#define DEBUGPRINT(x,...)
#else
#include <cstdio>
#define DEBUGPRINT printf
#define CHECK_RESULT(expr,value) assert( (expr)==(value) )
#endif

#endif
