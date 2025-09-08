#include "../h/types.h"
#include "../h/syscall_c.h"
#include "../h/mm.h"
#include "../h/console.h"
#include "../h/stdio.h"
#include "../h/interrupts.h"
#include "../h/threads.h"

void syscall_handler(regs_t *regs)
{
	switch (regs->a7) {
	case SYSCALL_MEM_ALLOC:
		regs->a0 = (uint64_t)_mem_alloc((size_t)regs->a0);
		break;
	case SYSCALL_MEM_FREE:
		regs->a0 = (uint64_t)_mem_free((void *)regs->a0);
		break;
	case SYSCALL_THREAD_CREATE:
		regs->a0 = (uint64_t)_thread_create((thread_t *)(regs->a0),
						    (void (*)(void *))regs->a1,
						    (void *)regs->a2);
		break;
	case SYSCALL_THREAD_EXIT:
		regs->a0 = (uint64_t)_thread_exit();
		break;
	case SYSCALL_THREAD_DISPATCH:
		_thread_dispatch();
		break;
	case SYSCALL_THREAD_JOIN:
		_thread_join((thread_t)(regs->a0));
		break;
	case SYSCALL_SEM_OPEN:
		regs->a0 = (uint64_t)_sem_open((sem_t *)regs->a0,
					       (unsigned)regs->a1);
		break;
	case SYSCALL_SEM_CLOSE:
		regs->a0 = (uint64_t)_sem_close((sem_t)regs->a0);
		break;
	case SYSCALL_SEM_WAIT:
		regs->a0 = (uint64_t)_sem_wait((sem_t)regs->a0);
		break;
	case SYSCALL_SEM_SIGNAL:
		regs->a0 = (uint64_t)_sem_signal((sem_t)regs->a0);
		break;
	case SYSCALL_TIME_SLEEP:
		regs->a0 = _time_sleep((time_t)regs->a0);
		break;
	case SYSCALL_GETC:
		regs->a0 = (uint64_t)_getc();
		break;
	case SYSCALL_PUTC:
		_putc((char)regs->a0);
		break;
	default:
		break;
	}
}

// memory
void *_mem_alloc(size_t size)
{
	return __malloc(size);
}

int _mem_free(void *p)
{
	return __free(p);
}

// thread
//class _thread;
//typedef _thread* thread_t;
int _thread_create(thread_t *handle, void (*start_routine)(void *), void *arg)
{
	return kthread_create(handle, start_routine, arg, 0);
}
int _thread_exit()
{
	__thread_exit();
	int t = 0;
	return t;
}
void _thread_dispatch()
{
	context_switch();
}
void _thread_join(thread_t handle)
{
}

// semaphore
int _sem_open(sem_t *handle, unsigned init)
{
	return __sem_open(handle, init);
}
int _sem_close(sem_t handle)
{
	return __sem_close(handle);
}
int _sem_wait(sem_t id)
{
	if (id->count <= 0) {
		thread_curr->sepc -= 4;
		context_switch();
	}

	return __sem_wait(id);
}
int _sem_signal(sem_t id)
{
	return __sem_signal(id);
}

// time
//typedef unsigned long time_t;
int _time_sleep(time_t time)
{
	int t = 0;
	return t;
}

// io
char _getc(void)
{
	if (is_empty(&stdin_buff)) {
		thread_curr->sepc -= 4;
		context_switch();
	}

	return __getc();
}
void _putc(char c)
{
	if (is_full(&stdin_buff)) {
		thread_curr->sepc -= 4;
		context_switch();
	}

	__putc(c);
}
