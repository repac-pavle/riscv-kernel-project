#include "../h/syscall_cpp.hpp"
#include "../h/types.h"
#include "../h/threads.h"
#include "../h/stdio.h"
#include "../test/printing.hpp"

void memset(const void *destptr, uint8_t value, size_t n)
{
	uint8_t *dest = (uint8_t *)destptr;
	size_t i;
	for (i = 0; i < n; i++) {
		dest[i] = value;
	}
}

void * operator new(size_t size)
{
	return mem_alloc(size);
}

void *operator new[](size_t n)
{
	return mem_alloc(n);
}

void operator delete(void *p) noexcept
{
	mem_free(p);
}

void operator delete[](void *p) noexcept
{
	mem_free(p);
}

Thread::Thread(void (*body)(void *), void *arg)
{
	thread_create(&this->myHandle, body, arg);
}
Thread::~Thread()
{
//	thread_exit();
}
int Thread::start()
{
	thread_dispatch();
	return 0;
}
void Thread::join()
{
}
void Thread::dispatch()
{
	thread_dispatch();
}
int Thread::sleep(time_t)
{
	return 0;
}

void Thread::wrapper(void *thread)
{
	((Thread*)thread)->run();
}

Thread::Thread()
{
	this->arg = (uint64_t*)this;
	thread_create(&this->myHandle, Thread::wrapper, arg);
}

Semaphore::Semaphore(unsigned init)
{
	sem_open(&this->myHandle, init);
}
Semaphore::~Semaphore()
{
	sem_close(this->myHandle);
}
int Semaphore::wait()
{
	return sem_wait(this->myHandle);
}
int Semaphore::signal()
{
	return sem_signal(this->myHandle);
}

void PeriodicThread::terminate()
{
}
PeriodicThread::PeriodicThread(time_t period)
{
}

char Console::getc()
{
	return getc();
}
void Console::putc(char c)
{
	putc(c);
}

void *mem_alloc(size_t size)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_MEM_ALLOC));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (void *)a0;
}

int mem_free(void *p)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_MEM_FREE));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}

int thread_create(thread_t *handle, void (*sdart_routine)(void *), void *arg)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_THREAD_CREATE));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}
int thread_exit()
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_THREAD_EXIT));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}
void thread_dispatch()
{
	asm volatile("li a7, %0;" : : ""(SYSCALL_THREAD_DISPATCH));
	asm volatile("ecall;");
}
void thread_join(thread_t handle)
{
	asm volatile("li a7, %0;" : : ""(SYSCALL_THREAD_JOIN));
	asm volatile("ecall;");
}

int sem_open(sem_t *handle, unsigned init)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_SEM_OPEN));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}
int sem_close(sem_t handle)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_SEM_CLOSE));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}
int sem_wait(sem_t id)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_SEM_WAIT));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}
int sem_signal(sem_t id)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_SEM_SIGNAL));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}

// time
typedef unsigned long time_t;
int time_sleep(time_t time)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_TIME_SLEEP));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (int)a0;
}

// io
char getc(void)
{
	uint64_t a0;
	asm volatile("li a7, %0;" : : ""(SYSCALL_GETC));
	asm volatile("ecall;");
	asm volatile("mv a0, %0;" : "=r"(a0));
	return (char)a0;
}
void putc(char c)
{
	asm volatile("li a7, %0;" : : ""(SYSCALL_PUTC));
	asm volatile("ecall;");
}
