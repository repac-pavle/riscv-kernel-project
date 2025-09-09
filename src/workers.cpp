#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/TCB.hpp"

void workerBodyA() {
    for(int i = 0; i <= 50; i++) {
        printString("A: ");
        printInteger(i);
        printString("\n");
        if(i % 10 == 0) {
            printString("A: yield\n");
            TCB::yield();
        }
    }
    TCB::running->setFinished(true);

}

void workerBodyB() {
    for(int i = 0; i < 50; i++) {
        printString("B: ");
        printInteger(i);
        printString("\n");
        if(i % 25 == 0) {
            printString("A: yield\n");
            TCB::yield();
        }
    }
    TCB::running->setFinished(true);
}