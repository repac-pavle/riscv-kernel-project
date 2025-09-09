#include "../h/syscall_c.hpp"
#include "../lib/mem.h"
#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/memory.hpp"
uint64 call(uint64 code, uint64 arg1, uint64 arg2 , uint64 arg3, uint64 arg4) {
    uint64 volatile returnVal;

    __asm__ volatile("mv a4, %0" : : "r"(arg4));
    __asm__ volatile("mv a3, %0" : : "r"(arg3));
    __asm__ volatile("mv a2, %0" : : "r"(arg2));
    __asm__ volatile("mv a1, %0" : : "r"(arg1));
    __asm__ volatile("mv a0, %0" : : "r"(code));
    __asm__ volatile("ecall");

    __asm__ volatile ("mv %[returnVal], a0" : [returnVal] "=r"(returnVal));
   return returnVal;
}

void *mem_alloc(size_t size) {
    //return __mem_alloc(size);
    if(Riscv::isSupervisor)
        return Memory::mem_alloc(size);

    if (size == 0) return nullptr;
    return (void *) call(0x01, size);
}

int mem_free(void *mem) {
    //return __mem_free(mem);
    if(Riscv::isSupervisor)
        return Memory::mem_free(mem);
    return (int) call(0x02, (uint64) mem);
}

size_t mem_get_free_space(){
    return (size_t) call(0x03);
}

size_t mem_get_largest_free_block() {
    return (size_t) call(0x04);
}

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg) {
    void *stack_space = nullptr;
    if (start_routine) {
        stack_space = mem_alloc(DEFAULT_STACK_SIZE); //mem_alloc(DEFAULT_STACK_SIZE);
    }
    return (int) call(0x11, (uint64) handle, (uint64) start_routine, (uint64) arg, (uint64) stack_space);
}

int thread_exit() {
    return (int) call(0x12);
}

void thread_dispatch() {
    call(0x13);
}

int getThreadId() {
   return (int) call(0x14);
}

int time_sleep(time_t time) {
  return (int) call(0x31, time);
}

char getc() {
    uint64 c =  call(0x41);
//    __putc(c);
//    __putc('\n');
    return c;
}

void putc(char c) {
    //__putc(c);
    call(0x42, c);


    //return;
}

int sem_open(sem_t* handle, unsigned init) {
    return (int) call(0x21,(uint64) handle, (uint64) init);
}

int sem_close(sem_t handle) {
    return (int) call(0x22, (uint64) handle);
}


int sem_wait(sem_t id) {
    return (int) (call(0x23, (uint64) id));
}

int sem_signal(sem_t id) {
    return (int) (call(0x24, (uint64) id));
}

int sem_timedwait(sem_t id, time_t timeout) {
    return (int) (call(0x25, (uint64) id, (uint64) timeout));
}

int sem_trywait(sem_t id, time_t timeout) {
    return (int) (call(0x26, (uint64) id));
}