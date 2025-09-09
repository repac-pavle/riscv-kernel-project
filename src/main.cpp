#include "../h/TCB.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/console.hpp"
#include "../h/memory.hpp"

extern void userMain();

void print() {
    while (true) {
        if(*((char *) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
            char c = Console::outputGet();
            *((char*)CONSOLE_TX_DATA) = c;
            //__putc(c);
        }
    }
}

int main() {
    Memory();
    Memory::init();
    Riscv::isSupervisor = true;
    TCB* mainthread = TCB::createKernelThread(nullptr);
    TCB::running = mainthread;
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    Console();
//    TCB::createThread(print);
    TCB* mymain = TCB::createThread(userMain);

    while(!mymain->isFinished()){
        thread_dispatch();
    }
    delete mymain;
    delete mainthread;
    return 0;
}