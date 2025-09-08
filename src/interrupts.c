#include "../h/console.h"
#include "../h/stdio.h"
#include "../h/interrupts.h"
#include "../h/syscall_c.h"
#include "../h/regs.h"
#include "../h/threads.h"
#include "../h/mm.h"

int time = 0;

void timer_irq(regs_t *regs)
{
	time++;
	if (time >= DEFAULT_TIME_SLICE) {
		time = 0;
		context_switch();
	}
	return;
}

void irq_handler(regs_t *regs)
{
	int handled = 0;

	volatile uint64_t sstatus;
	volatile uint64_t scause;
	volatile uint64_t sip;
	volatile uint64_t sie;
	volatile uint64_t sepc;
	asm volatile("csrr %0, sstatus;" : "=r"(sstatus));
	asm volatile("csrr %0, scause;" : "=r"(scause));
	asm volatile("csrr %0, sip;" : "=r"(sip));
	asm volatile("csrr %0, sie;" : "=r"(sie));
	asm volatile("csrr %0, sepc;" : "=r"(sepc));

	int bnt = scause >> (SXLEN - 1);
	int vr = scause & 0xffff;

	bool is_ecall = !bnt && (vr == 8 || vr == 9);

	if (thread_curr != NULL) {
		thread_curr->regs = regs;
		asm volatile("csrr %0, sstatus;" : "=r"(thread_curr->sstatus));
		asm volatile("csrr %0, sepc;" : "=r"(thread_curr->sepc));
		if (is_ecall)
			thread_curr->sepc += 4;
	}

	// Supervisor software interrupt
	if (bnt && vr == 1) {
		asm volatile("csrw sip, 0;");
		timer_irq(regs);
		handled = 1;
	}

	// Supervisor external interrupt
	if (bnt && vr == 9) {
		int br_prekida = plic_claim();

		if (br_prekida == CONSOLE_IRQ) {
			console_irq();
			handled = 1;
		} else {
			printf("br_prekida: %d\n", br_prekida);
		}

		plic_complete(br_prekida);
	}

	if (is_ecall) {
		syscall_handler(regs);
		asm volatile("csrw sepc, %0;" : : "r"(sepc + 4));
		handled = 1;
	}

	if (handled)
		return;

	printf("current thread crashed\n");
	__thread_exit();

	printf("\n\n");
	printf("unhandled irq:\n");
	printf("sstatus: 0x%x\n", sstatus);
	printf("scause: 0x%x\n", scause);
	printf("sip: 0x%x\n", sip);
	printf("sie: 0x%x\n", sie);
	printf("sepc: %x\n", sepc);
	printf("thread: %x\n", thread_curr);
	print_regs(regs);

	while (!is_empty(&stdout_buff)) {
		uint8_t c = buff_get(&stdout_buff);
		*(volatile uint8_t *)CONSOLE_TX_DATA = c;
	}

	while (true) {
		asm volatile("nop;");
	};
}

void enable_interrupts()
{
	volatile uint64_t sstatus;
	asm volatile("csrr %0, sstatus;" : "=r"(sstatus));
	sstatus |= SIE;
	asm volatile("csrw sstatus, %0;" : : "r"(sstatus));

	asm volatile("csrw stvec, %0;" : : "r"(irq_handler_wrapper));
}
