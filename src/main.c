#include "../h/types.h"
#include "../h/console.h"
#include "../h/stdio.h"
#include "../h/interrupts.h"
#include "../h/mm.h"
#include "../h/user.h"
#include "../h/threads.h"
#include "../h/syscall_c.h"

void print_number(uint64_t x);
void userMain(void);
void _Z8userMainv(void);

void idle_thread()
{
	while (true) {
		asm volatile("nop;");
	};
}

void print_thread()
{
	while (true) {
		while (!is_empty(&stdout_buff)) {
			uint8_t c = buff_get(&stdout_buff);
			*(volatile uint8_t *)CONSOLE_TX_DATA = c;
		}
		thread_dispatch();
	}
}

void jump_to_userspace()
{
	uint64_t arg[7];
	memset(arg, 0, sizeof(arg));

	thread_t t;
	kthread_create(&t, (void (*)(void *))_Z8userMainv, arg, 1);
	kthread_create(&t, (void (*)(void *))print_thread, arg, 1);

	context_switch();
}

void main()
{
	init_console();
	mm_init();
	init_scheduler();
	enable_interrupts();
	printf("initialization completed\n");

	jump_to_userspace();

	while (true) {
		asm volatile("nop;");
	};
}
