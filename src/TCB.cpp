
#include "../h/TCB.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
extern "C" void pushRegisters(); //extern "C" se pise da bi se izbegao name mangling
extern "C" void popRegisters(); //tj da bi direktno iz registersUtil.S uzeo labele sa imenom funkcije

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

void TCB::yield() {
//    pushRegisters();
//    TCB::dispatch();
//    popRegisters();
//    __asm__ volatile ("ecall");

    __asm__ volatile("mv a0, %0" : : "r" (0x13)); //calls thread_dispatch()
    __asm__ volatile("ecall");

}

void TCB::dispatch() {
    TCB *old = running;
    if(!old->isFinished() && !old->isBlocked() && !old->isSleepy())
        Scheduler::put(old);
    running = Scheduler::get();
    if(running->isSupervisor)
        Riscv::isSupervisor = true;
    else
        Riscv::isSupervisor = false;

    TCB::contextSwitch(&old->context, &running->context);

}

TCB *TCB::createThread(TCB::Body body, void* arg) {
    return new TCB(false, body,arg,TIME_SLICE);
}



void TCB::threadWrapper() {
    Riscv::popSppSpie();


    if(running->body != nullptr) {
        running->body(running->arg);
    } else {
        running->nb();
    }
    running->setFinished(true);
    TCB::yield();
}

TCB *TCB::createThread(TCB::newBody body) {
    return new TCB(false, body,TIME_SLICE);
}

TCB *TCB::createKernelThread(TCB::newBody body) {
    return new TCB(true, body,TIME_SLICE);
}