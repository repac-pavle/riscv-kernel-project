#include "../h/console.h"
#include "../h/stdio.h"
#include "../h/buff.h"
#include "../h/syscall_c.h"

buff_t stdin_buff;
buff_t stdout_buff;

void init_console()
{
	init_buff(&stdin_buff);
	init_buff(&stdout_buff);
}

uint8_t __getc()
{
	if (is_empty(&stdin_buff)) {
		thread_dispatch();
	}

	return buff_get(&stdin_buff);
}

void __putc(uint8_t c)
{
	if (is_full(&stdin_buff)) {
		thread_dispatch();
	}

	buff_insert(&stdout_buff, c);
	//	*(volatile uint8_t*)CONSOLE_TX_DATA = c;
}

void console_irq()
{
	// rx - citanje iz kontrolera
	// tx - slanje u kontroler

	int status = *(uint8_t *)CONSOLE_STATUS;
	int tx = status & CONSOLE_TX_STATUS_BIT;
	int rx = status & CONSOLE_RX_STATUS_BIT;

	// dok je tx i nije prazan buffer
	// ispisi karakter
	while (tx && !is_empty(&stdout_buff)) {
		uint8_t c = buff_get(&stdout_buff);
		*(volatile uint8_t *)CONSOLE_TX_DATA = c;

		status = *(uint8_t *)CONSOLE_STATUS;
		tx = status & CONSOLE_TX_STATUS_BIT;
	}

	// dok je rx i ima mesta u bufferu
	// ucitaj karatker
	while (rx && !is_full(&stdin_buff)) {
		uint8_t c = *(uint8_t *)CONSOLE_TX_DATA;
		if (c != 0)
			buff_insert(&stdin_buff, c);

		status = *(uint8_t *)CONSOLE_STATUS;
		rx = status & CONSOLE_RX_STATUS_BIT;
	}
}
