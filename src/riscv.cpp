#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../lib/mem.h"
#include "../h/TCB.hpp"
#include "../h/scheduler.hpp"
#include "../h/print.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"
#include "../lib/hw.h"
#include "../h/memory.hpp"

bool Riscv::isSupervisor;

void Riscv::handleSupervisorTrap() {
    Riscv::isSupervisor = true;

    uint64 volatile code,a1,a2,a3,a4;


    __asm__ volatile("mv %[code], a0" : [code] "=r"(code));
    __asm__ volatile("mv %[a1], a1" : [a1] "=r"(a1));
    __asm__ volatile("mv %[a2], a2" : [a2] "=r"(a2));
    __asm__ volatile("mv %[a3], a3" : [a3] "=r"(a3));
    __asm__ volatile("mv %[a4], a4" : [a4] "=r"(a4));

    uint64 volatile scause = r_scause();
    uint64 volatile sepc = r_sepc();
//    if (scause == 0x0000000000000009UL || scause == 0x0000000000000008UL) {
//        sepc += 4;
//        w_sepc(sepc);
//    }

    uint64 volatile sstatus = r_sstatus();



    if(scause == 0x8000000000000001UL) {
//        Scheduler::printAllThreads();
//        Scheduler::printAllSleepyThreads();
        Scheduler::handleWaking();

        //interrupt, cause code supervisor software interrupt (timer)
        TCB::timeSliceCounter++;

        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            uint64 volatile ssepc = r_sepc();
            uint64 volatile ssstatus = r_sstatus();

            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(ssstatus);
            w_sepc(ssepc);

        }


        mc_sip(SIP_SSIP);
    } else if (scause == 0x0000000000000009UL ||
               scause == 0x0000000000000008UL) { //if(scause == 0x8000000000000008UL) {
        //interrupt, cause code supervisor external interrupt

        volatile uint64 scode = code;
        sepc += 4;
        switch (scode) {
            case 0x01: { //mem_alloc(size)
                __asm__ volatile("mv t0, %0" : : "r"(Memory::mem_alloc((size_t)a1)));
                __asm__ volatile("sw t0, 80(x8)");

                break;
            }
            case 0x02: {  //mem_free(ptr)
                Memory::mem_free((void*) a1);
                __asm__ volatile("mv t0, %0" : : "r"(0));
                __asm__ volatile("sw t0, 80(x8)");

                break;
            }
            case 0x03: { //mem_get_free_space()
                __asm__ volatile("mv t0, %0" : : "r"(Memory::mem_get_free_space()));
                __asm__ volatile("sw t0, 80(x8)");

                break;
            }
            case 0x04: { //mem_get_largest_free_block()
                __asm__ volatile("mv t0, %0" : : "r"(Memory::mem_get_largest_free_block()));
                __asm__ volatile("sw t0, 80(x8)");

                break;
            }
            case 0x11: {//thread_create(thread_t* handle, void(*start_routine)(void*), void* arg)
                TCB **thread;
                TCB::Body body;
                void *arg;

                thread = (TCB **) a1;
                body = (TCB::Body) a2;
                arg = (void *) a3;
                *thread = TCB::createThread(body, arg);
                if (*thread != nullptr) {
                    //return 0 (success)
                    __asm__ volatile("mv t0, %0" : : "r"(0));
                    __asm__ volatile("sw t0, 80(x8)");
                } else {
                    __asm__ volatile("mv t0, %0" : : "r"(-1));
                    __asm__ volatile("sw t0, 80(x8)");
                }


                break;
            }
            case 0x12: { //thread_exit();
                if (TCB::running == nullptr) {
                    __asm__ volatile("mv t0, %0" : : "r"(-1));
                    __asm__ volatile("sw t0, 80(x8)");
                } else {
                    TCB::running->setFinished(true);
                    __asm__ volatile("mv t0, %0" : : "r"(0));
                    __asm__ volatile("sw t0, 80(x8)");
                }
                break;
            }
            case 0x13: { //thread_dispatch();
                TCB::dispatch();
                break;
            }
            case 0x14: { //getThreadId();
                int threadId = TCB::running->getThreadId();
                __asm__ volatile("mv t0, %0" : : "r"(threadId));
                __asm__ volatile("sw t0, 80(x8)");
                TCB::dispatch();
                break;
            }
            case 0x21: {
                //jebes mi mater ako ovo radi
                //sem_open


                sem **semaphore;
                unsigned init;

                semaphore = (sem **) a1;
                init = (unsigned) a2;
//                printString("Init = ");
//                printInteger(init);
//                printString("\n");
                *semaphore = new sem(init);

//                printHex((uint64)a1);
//                printString("->");
//                printString("Semafor iz riscva :");
//                printHex((uint64)*semaphore);
//                printString("\n");

                if (*semaphore != nullptr) {
                    //return 0 (success)
                    __asm__ volatile("mv t0, %0" : : "r"(0));
                    __asm__ volatile("sw t0, 80(x8)");
                } else {
                    __asm__ volatile("mv t0, %0" : : "r"(-1));
                    __asm__ volatile("sw t0, 80(x8)");
                }
                break;


            }
            case 0x22: {
                //sem_close
                sem *semaphore;
                semaphore = (sem *) a1;
                semaphore->close();
                __asm__ volatile("mv t0, %0" : : "r"(0));
                __asm__ volatile("sw t0, 80(x8)");
                break;

            }
            case 0x23: {
                //sem_wait
                sem *semaphore;
                semaphore = (sem *) a1;

                int r = semaphore->wait();

                __asm__ volatile("mv t0, %0" : : "r"(r));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x24: {
                //sem_signal
                sem *semaphore;
                semaphore = (sem *) a1;
                int r = semaphore->signal();
                __asm__ volatile("mv t0, %0" : : "r"(r));
                __asm__ volatile("sw t0, 80(x8)");
                break;
//
//                _sem* id = (_sem*) a1;
//                int *ret;
//
//
//                __asm__ volatile("ld t1, 8*12(fp)");
//                __asm__ volatile("mv %0, t1" : "=r" (ret));
//
//                *ret = id->signal();
//                break;
            }
            case 0x25: {
                //sem_timedwait
                break;
            }
            case 0x26: {
                //sem_trywait
                break;
            }
            case 0x31: {   //int time_sleep(time)
                time_t time = a1;
                Scheduler::putToSleep(TCB::running, time);
                TCB::dispatch();
                __asm__ volatile("mv t0, %0" : : "r"(0));
                __asm__ volatile("sw t0, 80(x8)");
                break;
            }
            case 0x41: {
                //getc();

//                char ret = Console::inputGet();
                char ret = __getc();
                __asm__ volatile("mv t0, %0" : : "r"(ret));
                __asm__ volatile("sw t0, 80(x8)");

                break;
            }
            case 0x42: {
                char c = a1;
                //__putc('K');
                //printHex(c);
               // Console::outputPut(c);
                __putc(c);
                break;
            }
        }
        //TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000009UL) { // interrupt, supervisor external interrupt (console)
//        uint64 cnt = plic_claim();
//        if (cnt == CONSOLE_IRQ) {
//            while (CONSOLE_RX_STATUS_BIT & (*(char *) CONSOLE_STATUS)) {
//                Console::inputPut(*(char *) CONSOLE_RX_DATA);
//            }
//        }
//        plic_complete((int)cnt);
        console_handler();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else {
        //unexpected trap cause
        printString("unexpected error\n");
        printHex(scause);
        printString("\n");
        printHex(sepc);
        printString("\n");
        printHex(r_stval());
        printString("\n");
        while(true){}
    }
    Riscv::isSupervisor = false;
}

//funkcija za prelaz u iz sistemskog u korisnicki rezim
void Riscv::popSppSpie()
{
    Riscv::isSupervisor = false;
    mc_sstatus(SSTATUS_SPP); // set sstatus na nulu tj spp
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

