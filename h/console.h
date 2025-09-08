#ifndef CONSOLE_H
#define CONSOLE_H

#include "../h/types.h"
#include "../h/buff.h"

void init_console();
uint8_t __getc(void);
void __putc(uint8_t c);
void console_irq(void);

extern buff_t stdin_buff;
extern buff_t stdout_buff;

#endif
