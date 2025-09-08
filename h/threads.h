#ifndef THREADS_H
#define THREADS_H

#include "../h/queue.h"
#include "../h/regs.h"

#define STATE_RUNNING 0
#define STATE_READY 1
#define STATE_SLEEPING 2
#define STATE_NOTINIT 3

#define PRIV_KERNEL
#define PRIV_USER

typedef struct {
	int state;
	uint64_t sepc;
	uint64_t sstatus;
	uint64_t *stack_base;
	regs_t *regs;
} _thread_t;

typedef _thread_t *thread_t;

extern queue_t *ready_threads_q;
extern queue_t *sleep_threads_q;
extern queue_t *idle_threads_q;
extern thread_t thread_curr;

extern void dispatch(void);

void init_scheduler(void);
thread_t scheduler(void);
void thread_restore(thread_t t);
void context_switch(void);
void __thread_exit(void);

void thread_create_wrapper(void* a0, uint64_t start_routine);
int kthread_create(thread_t *t, void (*start_routine)(void *), void *arg,
		   int priv_level);

#endif
