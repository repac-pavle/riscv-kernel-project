#include "../h/types.h"
#include "../h/buff.h"
#include "../h/stdio.h"

void init_buff(buff_t *buff)
{
	buff->begin = 0;
	buff->end = 0;
}

int is_empty(buff_t *buff)
{
	return buff->begin == buff->end;
}

int is_full(buff_t *buff)
{
	return buff->begin == ((buff->end + 1) % BUFF_LEN);
}

void buff_insert(buff_t *buff, uint8_t x)
{
	while (is_full(buff)) {
		asm volatile("nop;");
	}

	buff->buff[buff->end] = x;
	buff->end = (buff->end + 1) % BUFF_LEN;
}

uint8_t buff_get(buff_t *buff)
{
	while (is_empty(buff)) {
		asm volatile("nop;");
	}

	uint8_t x = buff->buff[buff->begin];
	buff->begin = (buff->begin + 1) % BUFF_LEN;
	return x;
}
