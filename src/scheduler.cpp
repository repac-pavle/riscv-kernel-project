#include "../h/scheduler.hpp"
#include "../h/print.hpp"
#include "../h/TCB.hpp"

List<TCB> Scheduler::readyCoroutineQueue;
List<Scheduler::sleepData> Scheduler::sleepingThreads;


TCB* Scheduler::get() {
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(TCB *ccb) {
    readyCoroutineQueue.addLast(ccb);
}

void Scheduler::printAllThreads() {
    printString("----scheduler begin\n");
    List<TCB>::Elem *current = readyCoroutineQueue.peekFirstStruct();
    while (current != nullptr) {
        printHex((uint64)current->data);
        printString("\n");
        current = current->next;
    }
    printString("----------------end\n");
}

void Scheduler::printAllSleepyThreads() {
    printString("---------------\n");
    List<sleepData>::Elem *current = sleepingThreads.peekFirstStruct();
    while (current != nullptr) {
        printHex((uint64)current->data->tcb);
        printString(" - ");
        printInteger(current->data->sleepTime);
        printString("\n");
        current = current->next;
    }
    printString("---------------------\n");

}


void Scheduler::putToSleep(TCB *thread, int sleepTime) {

    List<TCB>::Elem *current = readyCoroutineQueue.peekFirstStruct();
    while (current != nullptr) {
       if(current->data == thread)
           readyCoroutineQueue.remove(current);
       current = current->next;
    }

    thread->setSleepy(true);
    sleepData *s = new sleepData(thread,sleepTime);
    sleepingThreads.addLast(s);
    TCB::dispatch();
}

void Scheduler::handleWaking() {
    List<sleepData>::Elem *current = sleepingThreads.peekFirstStruct();
    while (current != nullptr) {
        if(current->data->sleepTime <= 0) {
            current->data->tcb->setSleepy(false);
            put(current->data->tcb);
            sleepingThreads.remove(current);

            delete current->data;
        } else {
            current->data->sleepTime -= 1;
        }
        current = current->next;
    }
}