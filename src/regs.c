#include "../h/stdio.h"
#include "../h/regs.h"

void print_regs(regs_t *regs)
{
	printf("regs: %x\n", regs);
	printf("REGS:\n");
	printf("s0: %x\n", regs->s0);
	printf("s1: %x\n", regs->s1);
	printf("s2: %x\n", regs->s2);
	printf("s3: %x\n", regs->s3);
	printf("s4: %x\n", regs->s4);
	printf("s5: %x\n", regs->s5);
	printf("s6: %x\n", regs->s6);
	printf("s7: %x\n", regs->s7);
	printf("s8: %x\n", regs->s8);
	printf("s9: %x\n", regs->s9);
	printf("s10: %x\n", regs->s10);
	printf("s11: %x\n", regs->s11);
	printf("a0: %x\n", regs->a0);
	printf("a1: %x\n", regs->a1);
	printf("a2: %x\n", regs->a2);
	printf("a3: %x\n", regs->a3);
	printf("a4: %x\n", regs->a4);
	printf("a5: %x\n", regs->a5);
	printf("a6: %x\n", regs->a6);
	printf("a7: %x\n", regs->a7);
	printf("t0: %x\n", regs->t0);
	printf("t1: %x\n", regs->t1);
	printf("t2: %x\n", regs->t2);
	printf("t3: %x\n", regs->t3);
	printf("t4: %x\n", regs->t4);
	printf("t5: %x\n", regs->t5);
	printf("t6: %x\n", regs->t6);
	printf("ra: %x\n", regs->ra);
	printf("\n");
}
