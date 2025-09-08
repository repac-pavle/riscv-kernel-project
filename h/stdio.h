#ifndef STDIO_H
#define STDIO_H

#include "../h/types.h"

size_t strlen(const char *s);
uint64_t stoi(const char *s);
void strrev(char *s);
void itos(uint64_t num, char *s);
void itoh(uint64_t num, char *s);
void memcpy(const void *destptr, const void *srcptr, size_t n);
void memset(const void *destptr, uint8_t value, size_t n);
int32_t memcmp(const void *aptr, const void *bptr);
void print_char(char c);
void print_string(const char *s);
void print_int(uint64_t num);
void print_hex(uint64_t num);
void vprintf(const char *s, va_list list);
void printf(const char *s, ...);

#endif
