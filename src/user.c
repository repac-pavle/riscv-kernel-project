#include "../h/stdio.h"
#include "../h/syscall_c.h"
#include "../h/queue.h"
#include "../h/threads.h"

void print_number(uint64_t x)
{
	while (true) {
		for (int i = 0; i < 10000000; i++)
			;
		printf("%d\n", x);
		//		thread_dispatch();
	}
}

void userMain()
{
	printf("we are in userspace\n");

	putc('a');
	putc('\n');

	printf("mem_alloc:%x\n", mem_alloc(100));

	while (true) {
		asm volatile("nop;");
	};
}
