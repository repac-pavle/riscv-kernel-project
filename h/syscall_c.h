#ifndef SYSCALL_H
#define SYSCALL_H

#define SYSCALL_MEM_ALLOC 0x01
#define SYSCALL_MEM_FREE 0x02
#define SYSCALL_THREAD_CREATE 0x11
#define SYSCALL_THREAD_EXIT 0x12
#define SYSCALL_THREAD_DISPATCH 0x13
#define SYSCALL_THREAD_JOIN 0x14
#define SYSCALL_SEM_OPEN 0x21
#define SYSCALL_SEM_CLOSE 0x22
#define SYSCALL_SEM_WAIT 0x23
#define SYSCALL_SEM_SIGNAL 0x24
#define SYSCALL_TIME_SLEEP 0x31
#define SYSCALL_GETC 0x41
#define SYSCALL_PUTC 0x42

#include "../h/interrupts.h"
#include "../h/regs.h"
#include "../h/threads.h"
#include "../h/sem.h"

void syscall_handler(regs_t *regs);

// memory
void *_mem_alloc(size_t size);
void *mem_alloc(size_t size);
int _mem_free(void *);
int mem_free(void *);

// thread
int _thread_create(thread_t *handle, void (*start_routine)(void *), void *arg);
int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg);
int _thread_exit(void);
int thread_exit(void);
void _thread_dispatch(void);
void thread_dispatch(void);
void _thread_join(thread_t handle);
void thread_join(thread_t handle);

// semaphore
int _sem_open(sem_t *handle, unsigned init);
int sem_open(sem_t *handle, unsigned init);
int _sem_close(sem_t handle);
int sem_close(sem_t handle);
int _sem_wait(sem_t id);
int sem_wait(sem_t id);
int _sem_signal(sem_t id);
int sem_signal(sem_t id);

// time
typedef unsigned long time_t;
int _time_sleep(time_t time);
int time_sleep(time_t time);

// io
//const int EOF = -1;
char getc(void);
char _getc(void);
void _putc(char);
void putc(char);

#endif
