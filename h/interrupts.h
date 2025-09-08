#ifndef INTERRUPTS_H
#define INTERRUPTS_H

#define SXLEN 64

// sstatus
#define SIE 1 << 1
#define SPIE 1 << 5
#define SPP 1 << 8

// sip
#define SSIP 1 << 1
#define SEIP 1 << 9

// sie
#define SSIE 1 << 1
#define SEIE 1 << 9

#ifdef __cplusplus
extern "C" {
#endif

extern void irq_handler_wrapper(void);
extern void restore_context_from_stack(void);

#ifdef __cplusplus
}
#endif

#include "../h/regs.h"

void timer_irq(regs_t *regs);
void irq_handler(regs_t *regs);
void enable_interrupts(void);

extern int time;

#endif
