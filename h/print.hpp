#ifndef OS_PROJECT_BASE_PRINT_HPP
#define OS_PROJECT_BASE_PRINT_HPP

#include "../lib/console.h"
#include "../lib/hw.h"


#ifdef __cplusplus
extern "C" {
#endif


extern void printString(char const *string);

extern void printInteger(uint64 integer);

extern void printHex(int xx);

#ifdef __cplusplus
}
#endif

#endif
