#ifndef OS_PROJECT_BASE_SYSCALL_C_HPP
#define OS_PROJECT_BASE_SYSCALL_C_HPP
#include "../lib/hw.h"


uint64 call(uint64 code, uint64 arg1 = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0);

void *mem_alloc(size_t size);

int mem_free(void* mem);

size_t mem_get_free_space();

size_t mem_get_largest_free_block();

//TODO: two new funcs, size_t mem_get_free_space() & mem_get_largest_free_block()

class TCB;
typedef TCB* thread_t;

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_exit();

int getThreadId();

void thread_dispatch();

typedef unsigned long time_t;
int time_sleep(time_t);

const int EOF = -1;
char getc();

void putc(char c);

class sem;
typedef sem* sem_t;

int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int sem_timedwait(sem_t id, time_t timeout);



#endif