#ifndef MM_H
#define MM_H

#include "../h/types.h"

void mm_init(void);
void *__malloc(uint32_t size);
int __free(void *p);

#endif
