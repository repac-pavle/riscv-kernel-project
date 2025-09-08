#include "../h/types.h"
#include "../h/regs.h"
#include "../h/stdio.h"
#include "../h/mm.h"
#include "../h/interrupts.h"
#include "../h/queue.h"
#include "../h/threads.h"
#include "../h/console.h"
#include "../h/syscall_c.h"

queue_t *ready_threads_q;
queue_t *sleep_threads_q;
queue_t *idle_threads_q;
thread_t thread_curr;

void init_scheduler()
{
	ready_threads_q = init_queue();
	sleep_threads_q = init_queue();
	idle_threads_q = init_queue();
}

thread_t scheduler()
{
	thread_t thread_next;

	thread_next = (thread_t)queue_get(ready_threads_q);
	if (thread_next != NULL) {
		return thread_next;
	}
	thread_next = (thread_t)queue_get(sleep_threads_q);
	if (thread_next != NULL) {
		return thread_next;
	}
	thread_next = (thread_t)queue_get(idle_threads_q);
	if (thread_next == NULL) {
		printf("kernel panic\n");
	}

	return thread_next;
}

void thread_restore(thread_t t)
{
	asm volatile("csrw sepc, %0;" : : "r"(t->sepc));
	asm volatile("csrw sstatus, %0;" : : "r"(t->sstatus));
	asm volatile("mv sp, %0;" : : "r"(t->regs));

	restore_context_from_stack();
}

void context_switch()
{
	time = 0;

	if (thread_curr != NULL) {
		queue_add(ready_threads_q, thread_curr);
		thread_curr->state = STATE_READY;
	}

	// get next thread
	thread_t thread_next = scheduler();
	thread_next->state = STATE_RUNNING;

	// restore context to next thread
	thread_curr = thread_next;
	thread_restore(thread_curr);
}

void __thread_exit()
{
	__free(thread_curr->stack_base);
	__free(thread_curr);
	thread_curr = NULL;
	context_switch();
}

void thread_create_wrapper(void* a0, uint64_t start_routine)
{
	void (*f)(void* a0) = (void (*)(void* a0))start_routine;
	(*f)(a0);
	thread_exit();
}

int kthread_create(thread_t *t, void (*start_routine)(void *), void *arg,
		   int priv_level)
{
	*t = (thread_t)__malloc(sizeof(_thread_t));

	(*t)->state = STATE_NOTINIT;
	(*t)->stack_base = (uint64_t *)__malloc(DEFAULT_STACK_SIZE);
	(*t)->regs = (regs_t *)((uint64_t)((*t)->stack_base) +
				DEFAULT_STACK_SIZE - sizeof(regs_t) - 8);

	memset((*t)->regs, 0, sizeof(regs_t));
	(*t)->regs->a0 = (uint64_t)arg;
	(*t)->regs->a1 = (uint64_t)start_routine;

	(*t)->sepc = (uint64_t)thread_create_wrapper;
	(*t)->sstatus = priv_level * (0x122);
	(*t)->regs->ra = (uint64_t)thread_exit;

	queue_add(ready_threads_q, (*t));

	return 0;
}
