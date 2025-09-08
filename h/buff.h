#ifndef BUFF_H
#define BUFF_H

#include "../h/types.h"

#define BUFF_LEN 1000

typedef struct {
	volatile uint32_t begin;
	volatile uint32_t end;
	volatile uint8_t buff[BUFF_LEN];
} buff_t;

void init_buff(buff_t *buff);
int is_empty(buff_t *buff);
int is_full(buff_t *buff);
void buff_insert(buff_t *buff, uint8_t x);
uint8_t buff_get(buff_t *buff);

#endif
