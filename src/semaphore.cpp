


#include "../h/semaphore.hpp"
#include "../h/print.hpp"
#include "../h/TCB.hpp"


void sem::block() {
    counter++;
    TCB::running->setBlocked(true);
    blocked.addLast(TCB::running);
    TCB::dispatch();
//    printString("///////////////////\n");
//    Scheduler::printAllThreads();
}

void sem::unblock(){
    counter--;
    TCB* newThread = blocked.removeFirst();
    if(newThread == nullptr) {
        printString("Nema blokiranih threadova...");
        return;
    }

    newThread->setBlocked(false);
    Scheduler::put(newThread);
//    printString("///////////////////\n");
//    Scheduler::printAllThreads();

}

int sem::wait() {
    value -= 1;
    if(value < 0) block();
    return 0;
}

int sem::signal(bool miki) {
    value += 1;
    if(value <= 0)  {
        unblock();
        if (miki)
            TCB::dispatch();
    }

    return 0;
}

int sem::close() {
    //printString("jebeni closed\n");

//    if (closed)
//        return -2; //sem closed
    closed = true;
    while(blocked.peekFirst()) {
        TCB* thread = blocked.removeFirst();
        Scheduler::put(thread);
    }
    TCB::dispatch();
    return 0;
}

sem::~sem(){
    close();
}


